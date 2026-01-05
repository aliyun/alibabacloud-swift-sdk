import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddEntriesToAclRequest : Tea.TeaModel {
    public class AclEntries : Tea.TeaModel {
        public var description_: String?

        public var entry: String?

        public override init() {
            super.init()
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
            if self.entry != nil {
                map["Entry"] = self.entry!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Entry"] as? String {
                self.entry = value
            }
        }
    }
    public var aclEntries: [AddEntriesToAclRequest.AclEntries]?

    public var aclId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclEntries != nil {
            var tmp : [Any] = []
            for k in self.aclEntries! {
                tmp.append(k.toMap())
            }
            map["AclEntries"] = tmp
        }
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclEntries"] as? [Any?] {
            var tmp : [AddEntriesToAclRequest.AclEntries] = []
            for v in value {
                if v != nil {
                    var model = AddEntriesToAclRequest.AclEntries()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.aclEntries = tmp
        }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class AddEntriesToAclResponseBody : Tea.TeaModel {
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

public class AddEntriesToAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddEntriesToAclResponseBody?

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
            var model = AddEntriesToAclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddServersToServerGroupRequest : Tea.TeaModel {
    public class Servers : Tea.TeaModel {
        public var description_: String?

        public var port: Int32?

        public var remoteIpEnabled: Bool?

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
            if self.remoteIpEnabled != nil {
                map["RemoteIpEnabled"] = self.remoteIpEnabled!
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
            if let value = dict["RemoteIpEnabled"] as? Bool {
                self.remoteIpEnabled = value
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

    public override init() {
        super.init()
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

public class ApplyHealthCheckTemplateToServerGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var healthCheckTemplateId: String?

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
        if self.healthCheckTemplateId != nil {
            map["HealthCheckTemplateId"] = self.healthCheckTemplateId!
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
        if let value = dict["HealthCheckTemplateId"] as? String {
            self.healthCheckTemplateId = value
        }
        if let value = dict["ServerGroupId"] as? String {
            self.serverGroupId = value
        }
    }
}

public class ApplyHealthCheckTemplateToServerGroupResponseBody : Tea.TeaModel {
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

public class ApplyHealthCheckTemplateToServerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyHealthCheckTemplateToServerGroupResponseBody?

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
            var model = ApplyHealthCheckTemplateToServerGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AssociateAclsWithListenerRequest : Tea.TeaModel {
    public var aclIds: [String]?

    public var aclType: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var listenerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclIds != nil {
            map["AclIds"] = self.aclIds!
        }
        if self.aclType != nil {
            map["AclType"] = self.aclType!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclIds"] as? [String] {
            self.aclIds = value
        }
        if let value = dict["AclType"] as? String {
            self.aclType = value
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
    }
}

public class AssociateAclsWithListenerResponseBody : Tea.TeaModel {
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

public class AssociateAclsWithListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateAclsWithListenerResponseBody?

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
            var model = AssociateAclsWithListenerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AssociateAdditionalCertificatesWithListenerRequest : Tea.TeaModel {
    public class Certificates : Tea.TeaModel {
        public var certificateId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertificateId"] as? String {
                self.certificateId = value
            }
        }
    }
    public var certificates: [AssociateAdditionalCertificatesWithListenerRequest.Certificates]?

    public var clientToken: String?

    public var dryRun: Bool?

    public var listenerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificates != nil {
            var tmp : [Any] = []
            for k in self.certificates! {
                tmp.append(k.toMap())
            }
            map["Certificates"] = tmp
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Certificates"] as? [Any?] {
            var tmp : [AssociateAdditionalCertificatesWithListenerRequest.Certificates] = []
            for v in value {
                if v != nil {
                    var model = AssociateAdditionalCertificatesWithListenerRequest.Certificates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.certificates = tmp
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

public class CreateAScriptsRequest : Tea.TeaModel {
    public class AScripts : Tea.TeaModel {
        public class ExtAttributes : Tea.TeaModel {
            public var attributeKey: String?

            public var attributeValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attributeKey != nil {
                    map["AttributeKey"] = self.attributeKey!
                }
                if self.attributeValue != nil {
                    map["AttributeValue"] = self.attributeValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttributeKey"] as? String {
                    self.attributeKey = value
                }
                if let value = dict["AttributeValue"] as? String {
                    self.attributeValue = value
                }
            }
        }
        public var AScriptName: String?

        public var enabled: Bool?

        public var extAttributeEnabled: Bool?

        public var extAttributes: [CreateAScriptsRequest.AScripts.ExtAttributes]?

        public var position: String?

        public var scriptContent: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.AScriptName != nil {
                map["AScriptName"] = self.AScriptName!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.extAttributeEnabled != nil {
                map["ExtAttributeEnabled"] = self.extAttributeEnabled!
            }
            if self.extAttributes != nil {
                var tmp : [Any] = []
                for k in self.extAttributes! {
                    tmp.append(k.toMap())
                }
                map["ExtAttributes"] = tmp
            }
            if self.position != nil {
                map["Position"] = self.position!
            }
            if self.scriptContent != nil {
                map["ScriptContent"] = self.scriptContent!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AScriptName"] as? String {
                self.AScriptName = value
            }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["ExtAttributeEnabled"] as? Bool {
                self.extAttributeEnabled = value
            }
            if let value = dict["ExtAttributes"] as? [Any?] {
                var tmp : [CreateAScriptsRequest.AScripts.ExtAttributes] = []
                for v in value {
                    if v != nil {
                        var model = CreateAScriptsRequest.AScripts.ExtAttributes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.extAttributes = tmp
            }
            if let value = dict["Position"] as? String {
                self.position = value
            }
            if let value = dict["ScriptContent"] as? String {
                self.scriptContent = value
            }
        }
    }
    public var AScripts: [CreateAScriptsRequest.AScripts]?

    public var clientToken: String?

    public var dryRun: Bool?

    public var listenerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.AScripts != nil {
            var tmp : [Any] = []
            for k in self.AScripts! {
                tmp.append(k.toMap())
            }
            map["AScripts"] = tmp
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AScripts"] as? [Any?] {
            var tmp : [CreateAScriptsRequest.AScripts] = []
            for v in value {
                if v != nil {
                    var model = CreateAScriptsRequest.AScripts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.AScripts = tmp
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
    }
}

public class CreateAScriptsResponseBody : Tea.TeaModel {
    public class AScriptIds : Tea.TeaModel {
        public var AScriptId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.AScriptId != nil {
                map["AScriptId"] = self.AScriptId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AScriptId"] as? String {
                self.AScriptId = value
            }
        }
    }
    public var AScriptIds: [CreateAScriptsResponseBody.AScriptIds]?

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
        if self.AScriptIds != nil {
            var tmp : [Any] = []
            for k in self.AScriptIds! {
                tmp.append(k.toMap())
            }
            map["AScriptIds"] = tmp
        }
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
        if let value = dict["AScriptIds"] as? [Any?] {
            var tmp : [CreateAScriptsResponseBody.AScriptIds] = []
            for v in value {
                if v != nil {
                    var model = CreateAScriptsResponseBody.AScriptIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.AScriptIds = tmp
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAScriptsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAScriptsResponseBody?

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
            var model = CreateAScriptsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAclRequest : Tea.TeaModel {
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
    public var aclName: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var resourceGroupId: String?

    public var tag: [CreateAclRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclName != nil {
            map["AclName"] = self.aclName!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
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
        if let value = dict["AclName"] as? String {
            self.aclName = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateAclRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateAclRequest.Tag()
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

public class CreateAclResponseBody : Tea.TeaModel {
    public var aclId: String?

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
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
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
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAclResponseBody?

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
            var model = CreateAclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateHealthCheckTemplateRequest : Tea.TeaModel {
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

    public var healthCheckCodes: [String]?

    public var healthCheckConnectPort: Int32?

    public var healthCheckHost: String?

    public var healthCheckHttpVersion: String?

    public var healthCheckInterval: Int32?

    public var healthCheckMethod: String?

    public var healthCheckPath: String?

    public var healthCheckProtocol: String?

    public var healthCheckTemplateName: String?

    public var healthCheckTimeout: Int32?

    public var healthyThreshold: Int32?

    public var resourceGroupId: String?

    public var tag: [CreateHealthCheckTemplateRequest.Tag]?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.healthCheckCodes != nil {
            map["HealthCheckCodes"] = self.healthCheckCodes!
        }
        if self.healthCheckConnectPort != nil {
            map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
        }
        if self.healthCheckHost != nil {
            map["HealthCheckHost"] = self.healthCheckHost!
        }
        if self.healthCheckHttpVersion != nil {
            map["HealthCheckHttpVersion"] = self.healthCheckHttpVersion!
        }
        if self.healthCheckInterval != nil {
            map["HealthCheckInterval"] = self.healthCheckInterval!
        }
        if self.healthCheckMethod != nil {
            map["HealthCheckMethod"] = self.healthCheckMethod!
        }
        if self.healthCheckPath != nil {
            map["HealthCheckPath"] = self.healthCheckPath!
        }
        if self.healthCheckProtocol != nil {
            map["HealthCheckProtocol"] = self.healthCheckProtocol!
        }
        if self.healthCheckTemplateName != nil {
            map["HealthCheckTemplateName"] = self.healthCheckTemplateName!
        }
        if self.healthCheckTimeout != nil {
            map["HealthCheckTimeout"] = self.healthCheckTimeout!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
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
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
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
        if let value = dict["HealthCheckCodes"] as? [String] {
            self.healthCheckCodes = value
        }
        if let value = dict["HealthCheckConnectPort"] as? Int32 {
            self.healthCheckConnectPort = value
        }
        if let value = dict["HealthCheckHost"] as? String {
            self.healthCheckHost = value
        }
        if let value = dict["HealthCheckHttpVersion"] as? String {
            self.healthCheckHttpVersion = value
        }
        if let value = dict["HealthCheckInterval"] as? Int32 {
            self.healthCheckInterval = value
        }
        if let value = dict["HealthCheckMethod"] as? String {
            self.healthCheckMethod = value
        }
        if let value = dict["HealthCheckPath"] as? String {
            self.healthCheckPath = value
        }
        if let value = dict["HealthCheckProtocol"] as? String {
            self.healthCheckProtocol = value
        }
        if let value = dict["HealthCheckTemplateName"] as? String {
            self.healthCheckTemplateName = value
        }
        if let value = dict["HealthCheckTimeout"] as? Int32 {
            self.healthCheckTimeout = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateHealthCheckTemplateRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateHealthCheckTemplateRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
    }
}

public class CreateHealthCheckTemplateResponseBody : Tea.TeaModel {
    public var healthCheckTemplateId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.healthCheckTemplateId != nil {
            map["HealthCheckTemplateId"] = self.healthCheckTemplateId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HealthCheckTemplateId"] as? String {
            self.healthCheckTemplateId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateHealthCheckTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHealthCheckTemplateResponseBody?

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
            var model = CreateHealthCheckTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateListenerRequest : Tea.TeaModel {
    public class CaCertificates : Tea.TeaModel {
        public var certificateId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertificateId"] as? String {
                self.certificateId = value
            }
        }
    }
    public class Certificates : Tea.TeaModel {
        public var certificateId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertificateId"] as? String {
                self.certificateId = value
            }
        }
    }
    public class DefaultActions : Tea.TeaModel {
        public class ForwardGroupConfig : Tea.TeaModel {
            public class ServerGroupTuples : Tea.TeaModel {
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
                    if self.serverGroupId != nil {
                        map["ServerGroupId"] = self.serverGroupId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ServerGroupId"] as? String {
                        self.serverGroupId = value
                    }
                }
            }
            public var serverGroupTuples: [CreateListenerRequest.DefaultActions.ForwardGroupConfig.ServerGroupTuples]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.serverGroupTuples != nil {
                    var tmp : [Any] = []
                    for k in self.serverGroupTuples! {
                        tmp.append(k.toMap())
                    }
                    map["ServerGroupTuples"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ServerGroupTuples"] as? [Any?] {
                    var tmp : [CreateListenerRequest.DefaultActions.ForwardGroupConfig.ServerGroupTuples] = []
                    for v in value {
                        if v != nil {
                            var model = CreateListenerRequest.DefaultActions.ForwardGroupConfig.ServerGroupTuples()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.serverGroupTuples = tmp
                }
            }
        }
        public var forwardGroupConfig: CreateListenerRequest.DefaultActions.ForwardGroupConfig?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.forwardGroupConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.forwardGroupConfig != nil {
                map["ForwardGroupConfig"] = self.forwardGroupConfig?.toMap()
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ForwardGroupConfig"] as? [String: Any?] {
                var model = CreateListenerRequest.DefaultActions.ForwardGroupConfig()
                model.fromMap(value)
                self.forwardGroupConfig = model
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class QuicConfig : Tea.TeaModel {
        public var quicListenerId: String?

        public var quicUpgradeEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.quicListenerId != nil {
                map["QuicListenerId"] = self.quicListenerId!
            }
            if self.quicUpgradeEnabled != nil {
                map["QuicUpgradeEnabled"] = self.quicUpgradeEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["QuicListenerId"] as? String {
                self.quicListenerId = value
            }
            if let value = dict["QuicUpgradeEnabled"] as? Bool {
                self.quicUpgradeEnabled = value
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
    public class XForwardedForConfig : Tea.TeaModel {
        public var XForwardedForClientCertClientVerifyAlias: String?

        public var XForwardedForClientCertClientVerifyEnabled: Bool?

        public var XForwardedForClientCertFingerprintAlias: String?

        public var XForwardedForClientCertFingerprintEnabled: Bool?

        public var XForwardedForClientCertIssuerDNAlias: String?

        public var XForwardedForClientCertIssuerDNEnabled: Bool?

        public var XForwardedForClientCertSubjectDNAlias: String?

        public var XForwardedForClientCertSubjectDNEnabled: Bool?

        public var XForwardedForClientSourceIpsEnabled: Bool?

        public var XForwardedForClientSourceIpsTrusted: String?

        public var XForwardedForClientSrcPortEnabled: Bool?

        public var XForwardedForEnabled: Bool?

        public var XForwardedForHostEnabled: Bool?

        public var XForwardedForProcessingMode: String?

        public var XForwardedForProtoEnabled: Bool?

        public var XForwardedForSLBIdEnabled: Bool?

        public var XForwardedForSLBPortEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.XForwardedForClientCertClientVerifyAlias != nil {
                map["XForwardedForClientCertClientVerifyAlias"] = self.XForwardedForClientCertClientVerifyAlias!
            }
            if self.XForwardedForClientCertClientVerifyEnabled != nil {
                map["XForwardedForClientCertClientVerifyEnabled"] = self.XForwardedForClientCertClientVerifyEnabled!
            }
            if self.XForwardedForClientCertFingerprintAlias != nil {
                map["XForwardedForClientCertFingerprintAlias"] = self.XForwardedForClientCertFingerprintAlias!
            }
            if self.XForwardedForClientCertFingerprintEnabled != nil {
                map["XForwardedForClientCertFingerprintEnabled"] = self.XForwardedForClientCertFingerprintEnabled!
            }
            if self.XForwardedForClientCertIssuerDNAlias != nil {
                map["XForwardedForClientCertIssuerDNAlias"] = self.XForwardedForClientCertIssuerDNAlias!
            }
            if self.XForwardedForClientCertIssuerDNEnabled != nil {
                map["XForwardedForClientCertIssuerDNEnabled"] = self.XForwardedForClientCertIssuerDNEnabled!
            }
            if self.XForwardedForClientCertSubjectDNAlias != nil {
                map["XForwardedForClientCertSubjectDNAlias"] = self.XForwardedForClientCertSubjectDNAlias!
            }
            if self.XForwardedForClientCertSubjectDNEnabled != nil {
                map["XForwardedForClientCertSubjectDNEnabled"] = self.XForwardedForClientCertSubjectDNEnabled!
            }
            if self.XForwardedForClientSourceIpsEnabled != nil {
                map["XForwardedForClientSourceIpsEnabled"] = self.XForwardedForClientSourceIpsEnabled!
            }
            if self.XForwardedForClientSourceIpsTrusted != nil {
                map["XForwardedForClientSourceIpsTrusted"] = self.XForwardedForClientSourceIpsTrusted!
            }
            if self.XForwardedForClientSrcPortEnabled != nil {
                map["XForwardedForClientSrcPortEnabled"] = self.XForwardedForClientSrcPortEnabled!
            }
            if self.XForwardedForEnabled != nil {
                map["XForwardedForEnabled"] = self.XForwardedForEnabled!
            }
            if self.XForwardedForHostEnabled != nil {
                map["XForwardedForHostEnabled"] = self.XForwardedForHostEnabled!
            }
            if self.XForwardedForProcessingMode != nil {
                map["XForwardedForProcessingMode"] = self.XForwardedForProcessingMode!
            }
            if self.XForwardedForProtoEnabled != nil {
                map["XForwardedForProtoEnabled"] = self.XForwardedForProtoEnabled!
            }
            if self.XForwardedForSLBIdEnabled != nil {
                map["XForwardedForSLBIdEnabled"] = self.XForwardedForSLBIdEnabled!
            }
            if self.XForwardedForSLBPortEnabled != nil {
                map["XForwardedForSLBPortEnabled"] = self.XForwardedForSLBPortEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["XForwardedForClientCertClientVerifyAlias"] as? String {
                self.XForwardedForClientCertClientVerifyAlias = value
            }
            if let value = dict["XForwardedForClientCertClientVerifyEnabled"] as? Bool {
                self.XForwardedForClientCertClientVerifyEnabled = value
            }
            if let value = dict["XForwardedForClientCertFingerprintAlias"] as? String {
                self.XForwardedForClientCertFingerprintAlias = value
            }
            if let value = dict["XForwardedForClientCertFingerprintEnabled"] as? Bool {
                self.XForwardedForClientCertFingerprintEnabled = value
            }
            if let value = dict["XForwardedForClientCertIssuerDNAlias"] as? String {
                self.XForwardedForClientCertIssuerDNAlias = value
            }
            if let value = dict["XForwardedForClientCertIssuerDNEnabled"] as? Bool {
                self.XForwardedForClientCertIssuerDNEnabled = value
            }
            if let value = dict["XForwardedForClientCertSubjectDNAlias"] as? String {
                self.XForwardedForClientCertSubjectDNAlias = value
            }
            if let value = dict["XForwardedForClientCertSubjectDNEnabled"] as? Bool {
                self.XForwardedForClientCertSubjectDNEnabled = value
            }
            if let value = dict["XForwardedForClientSourceIpsEnabled"] as? Bool {
                self.XForwardedForClientSourceIpsEnabled = value
            }
            if let value = dict["XForwardedForClientSourceIpsTrusted"] as? String {
                self.XForwardedForClientSourceIpsTrusted = value
            }
            if let value = dict["XForwardedForClientSrcPortEnabled"] as? Bool {
                self.XForwardedForClientSrcPortEnabled = value
            }
            if let value = dict["XForwardedForEnabled"] as? Bool {
                self.XForwardedForEnabled = value
            }
            if let value = dict["XForwardedForHostEnabled"] as? Bool {
                self.XForwardedForHostEnabled = value
            }
            if let value = dict["XForwardedForProcessingMode"] as? String {
                self.XForwardedForProcessingMode = value
            }
            if let value = dict["XForwardedForProtoEnabled"] as? Bool {
                self.XForwardedForProtoEnabled = value
            }
            if let value = dict["XForwardedForSLBIdEnabled"] as? Bool {
                self.XForwardedForSLBIdEnabled = value
            }
            if let value = dict["XForwardedForSLBPortEnabled"] as? Bool {
                self.XForwardedForSLBPortEnabled = value
            }
        }
    }
    public var caCertificates: [CreateListenerRequest.CaCertificates]?

    public var caEnabled: Bool?

    public var certificates: [CreateListenerRequest.Certificates]?

    public var clientToken: String?

    public var defaultActions: [CreateListenerRequest.DefaultActions]?

    public var dryRun: Bool?

    public var gzipEnabled: Bool?

    public var http2Enabled: Bool?

    public var idleTimeout: Int32?

    public var listenerDescription: String?

    public var listenerPort: Int32?

    public var listenerProtocol: String?

    public var loadBalancerId: String?

    public var quicConfig: CreateListenerRequest.QuicConfig?

    public var requestTimeout: Int32?

    public var securityPolicyId: String?

    public var tag: [CreateListenerRequest.Tag]?

    public var XForwardedForConfig: CreateListenerRequest.XForwardedForConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.quicConfig?.validate()
        try self.XForwardedForConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caCertificates != nil {
            var tmp : [Any] = []
            for k in self.caCertificates! {
                tmp.append(k.toMap())
            }
            map["CaCertificates"] = tmp
        }
        if self.caEnabled != nil {
            map["CaEnabled"] = self.caEnabled!
        }
        if self.certificates != nil {
            var tmp : [Any] = []
            for k in self.certificates! {
                tmp.append(k.toMap())
            }
            map["Certificates"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.defaultActions != nil {
            var tmp : [Any] = []
            for k in self.defaultActions! {
                tmp.append(k.toMap())
            }
            map["DefaultActions"] = tmp
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.gzipEnabled != nil {
            map["GzipEnabled"] = self.gzipEnabled!
        }
        if self.http2Enabled != nil {
            map["Http2Enabled"] = self.http2Enabled!
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
        if self.quicConfig != nil {
            map["QuicConfig"] = self.quicConfig?.toMap()
        }
        if self.requestTimeout != nil {
            map["RequestTimeout"] = self.requestTimeout!
        }
        if self.securityPolicyId != nil {
            map["SecurityPolicyId"] = self.securityPolicyId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.XForwardedForConfig != nil {
            map["XForwardedForConfig"] = self.XForwardedForConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CaCertificates"] as? [Any?] {
            var tmp : [CreateListenerRequest.CaCertificates] = []
            for v in value {
                if v != nil {
                    var model = CreateListenerRequest.CaCertificates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.caCertificates = tmp
        }
        if let value = dict["CaEnabled"] as? Bool {
            self.caEnabled = value
        }
        if let value = dict["Certificates"] as? [Any?] {
            var tmp : [CreateListenerRequest.Certificates] = []
            for v in value {
                if v != nil {
                    var model = CreateListenerRequest.Certificates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.certificates = tmp
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DefaultActions"] as? [Any?] {
            var tmp : [CreateListenerRequest.DefaultActions] = []
            for v in value {
                if v != nil {
                    var model = CreateListenerRequest.DefaultActions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.defaultActions = tmp
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["GzipEnabled"] as? Bool {
            self.gzipEnabled = value
        }
        if let value = dict["Http2Enabled"] as? Bool {
            self.http2Enabled = value
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
        if let value = dict["QuicConfig"] as? [String: Any?] {
            var model = CreateListenerRequest.QuicConfig()
            model.fromMap(value)
            self.quicConfig = model
        }
        if let value = dict["RequestTimeout"] as? Int32 {
            self.requestTimeout = value
        }
        if let value = dict["SecurityPolicyId"] as? String {
            self.securityPolicyId = value
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
        if let value = dict["XForwardedForConfig"] as? [String: Any?] {
            var model = CreateListenerRequest.XForwardedForConfig()
            model.fromMap(value)
            self.XForwardedForConfig = model
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
    public class LoadBalancerBillingConfig : Tea.TeaModel {
        public var bandwidthPackageId: String?

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
            if self.bandwidthPackageId != nil {
                map["BandwidthPackageId"] = self.bandwidthPackageId!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BandwidthPackageId"] as? String {
                self.bandwidthPackageId = value
            }
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

        public var eipType: String?

        public var intranetAddress: String?

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
            if self.intranetAddress != nil {
                map["IntranetAddress"] = self.intranetAddress!
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
            if let value = dict["IntranetAddress"] as? String {
                self.intranetAddress = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var addressAllocatedMode: String?

    public var addressIpVersion: String?

    public var addressType: String?

    public var clientToken: String?

    public var deletionProtectionEnabled: Bool?

    public var dryRun: Bool?

    public var loadBalancerBillingConfig: CreateLoadBalancerRequest.LoadBalancerBillingConfig?

    public var loadBalancerEdition: String?

    public var loadBalancerName: String?

    public var modificationProtectionConfig: CreateLoadBalancerRequest.ModificationProtectionConfig?

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
        try self.loadBalancerBillingConfig?.validate()
        try self.modificationProtectionConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressAllocatedMode != nil {
            map["AddressAllocatedMode"] = self.addressAllocatedMode!
        }
        if self.addressIpVersion != nil {
            map["AddressIpVersion"] = self.addressIpVersion!
        }
        if self.addressType != nil {
            map["AddressType"] = self.addressType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deletionProtectionEnabled != nil {
            map["DeletionProtectionEnabled"] = self.deletionProtectionEnabled!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.loadBalancerBillingConfig != nil {
            map["LoadBalancerBillingConfig"] = self.loadBalancerBillingConfig?.toMap()
        }
        if self.loadBalancerEdition != nil {
            map["LoadBalancerEdition"] = self.loadBalancerEdition!
        }
        if self.loadBalancerName != nil {
            map["LoadBalancerName"] = self.loadBalancerName!
        }
        if self.modificationProtectionConfig != nil {
            map["ModificationProtectionConfig"] = self.modificationProtectionConfig?.toMap()
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
        if let value = dict["AddressAllocatedMode"] as? String {
            self.addressAllocatedMode = value
        }
        if let value = dict["AddressIpVersion"] as? String {
            self.addressIpVersion = value
        }
        if let value = dict["AddressType"] as? String {
            self.addressType = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeletionProtectionEnabled"] as? Bool {
            self.deletionProtectionEnabled = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["LoadBalancerBillingConfig"] as? [String: Any?] {
            var model = CreateLoadBalancerRequest.LoadBalancerBillingConfig()
            model.fromMap(value)
            self.loadBalancerBillingConfig = model
        }
        if let value = dict["LoadBalancerEdition"] as? String {
            self.loadBalancerEdition = value
        }
        if let value = dict["LoadBalancerName"] as? String {
            self.loadBalancerName = value
        }
        if let value = dict["ModificationProtectionConfig"] as? [String: Any?] {
            var model = CreateLoadBalancerRequest.ModificationProtectionConfig()
            model.fromMap(value)
            self.modificationProtectionConfig = model
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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

public class CreateRuleRequest : Tea.TeaModel {
    public class RuleActions : Tea.TeaModel {
        public class CorsConfig : Tea.TeaModel {
            public var allowCredentials: String?

            public var allowHeaders: [String]?

            public var allowMethods: [String]?

            public var allowOrigin: [String]?

            public var exposeHeaders: [String]?

            public var maxAge: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowCredentials != nil {
                    map["AllowCredentials"] = self.allowCredentials!
                }
                if self.allowHeaders != nil {
                    map["AllowHeaders"] = self.allowHeaders!
                }
                if self.allowMethods != nil {
                    map["AllowMethods"] = self.allowMethods!
                }
                if self.allowOrigin != nil {
                    map["AllowOrigin"] = self.allowOrigin!
                }
                if self.exposeHeaders != nil {
                    map["ExposeHeaders"] = self.exposeHeaders!
                }
                if self.maxAge != nil {
                    map["MaxAge"] = self.maxAge!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowCredentials"] as? String {
                    self.allowCredentials = value
                }
                if let value = dict["AllowHeaders"] as? [String] {
                    self.allowHeaders = value
                }
                if let value = dict["AllowMethods"] as? [String] {
                    self.allowMethods = value
                }
                if let value = dict["AllowOrigin"] as? [String] {
                    self.allowOrigin = value
                }
                if let value = dict["ExposeHeaders"] as? [String] {
                    self.exposeHeaders = value
                }
                if let value = dict["MaxAge"] as? Int64 {
                    self.maxAge = value
                }
            }
        }
        public class FixedResponseConfig : Tea.TeaModel {
            public var content: String?

            public var contentType: String?

            public var httpCode: String?

            public override init() {
                super.init()
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
                if self.httpCode != nil {
                    map["HttpCode"] = self.httpCode!
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
                if let value = dict["HttpCode"] as? String {
                    self.httpCode = value
                }
            }
        }
        public class ForwardGroupConfig : Tea.TeaModel {
            public class ServerGroupStickySession : Tea.TeaModel {
                public var enabled: Bool?

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
                    if self.enabled != nil {
                        map["Enabled"] = self.enabled!
                    }
                    if self.timeout != nil {
                        map["Timeout"] = self.timeout!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Enabled"] as? Bool {
                        self.enabled = value
                    }
                    if let value = dict["Timeout"] as? Int32 {
                        self.timeout = value
                    }
                }
            }
            public class ServerGroupTuples : Tea.TeaModel {
                public var serverGroupId: String?

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
                    if self.serverGroupId != nil {
                        map["ServerGroupId"] = self.serverGroupId!
                    }
                    if self.weight != nil {
                        map["Weight"] = self.weight!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ServerGroupId"] as? String {
                        self.serverGroupId = value
                    }
                    if let value = dict["Weight"] as? Int32 {
                        self.weight = value
                    }
                }
            }
            public var serverGroupStickySession: CreateRuleRequest.RuleActions.ForwardGroupConfig.ServerGroupStickySession?

            public var serverGroupTuples: [CreateRuleRequest.RuleActions.ForwardGroupConfig.ServerGroupTuples]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.serverGroupStickySession?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.serverGroupStickySession != nil {
                    map["ServerGroupStickySession"] = self.serverGroupStickySession?.toMap()
                }
                if self.serverGroupTuples != nil {
                    var tmp : [Any] = []
                    for k in self.serverGroupTuples! {
                        tmp.append(k.toMap())
                    }
                    map["ServerGroupTuples"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ServerGroupStickySession"] as? [String: Any?] {
                    var model = CreateRuleRequest.RuleActions.ForwardGroupConfig.ServerGroupStickySession()
                    model.fromMap(value)
                    self.serverGroupStickySession = model
                }
                if let value = dict["ServerGroupTuples"] as? [Any?] {
                    var tmp : [CreateRuleRequest.RuleActions.ForwardGroupConfig.ServerGroupTuples] = []
                    for v in value {
                        if v != nil {
                            var model = CreateRuleRequest.RuleActions.ForwardGroupConfig.ServerGroupTuples()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.serverGroupTuples = tmp
                }
            }
        }
        public class InsertHeaderConfig : Tea.TeaModel {
            public var key: String?

            public var value: String?

            public var valueType: String?

            public override init() {
                super.init()
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
                if self.valueType != nil {
                    map["ValueType"] = self.valueType!
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
                if let value = dict["ValueType"] as? String {
                    self.valueType = value
                }
            }
        }
        public class RedirectConfig : Tea.TeaModel {
            public var host: String?

            public var httpCode: String?

            public var path: String?

            public var port: String?

            public var protocol_: String?

            public var query: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.host != nil {
                    map["Host"] = self.host!
                }
                if self.httpCode != nil {
                    map["HttpCode"] = self.httpCode!
                }
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.query != nil {
                    map["Query"] = self.query!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Host"] as? String {
                    self.host = value
                }
                if let value = dict["HttpCode"] as? String {
                    self.httpCode = value
                }
                if let value = dict["Path"] as? String {
                    self.path = value
                }
                if let value = dict["Port"] as? String {
                    self.port = value
                }
                if let value = dict["Protocol"] as? String {
                    self.protocol_ = value
                }
                if let value = dict["Query"] as? String {
                    self.query = value
                }
            }
        }
        public class RemoveHeaderConfig : Tea.TeaModel {
            public var key: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
            }
        }
        public class RewriteConfig : Tea.TeaModel {
            public var host: String?

            public var path: String?

            public var query: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.host != nil {
                    map["Host"] = self.host!
                }
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.query != nil {
                    map["Query"] = self.query!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Host"] as? String {
                    self.host = value
                }
                if let value = dict["Path"] as? String {
                    self.path = value
                }
                if let value = dict["Query"] as? String {
                    self.query = value
                }
            }
        }
        public class TrafficLimitConfig : Tea.TeaModel {
            public var perIpQps: Int32?

            public var QPS: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.perIpQps != nil {
                    map["PerIpQps"] = self.perIpQps!
                }
                if self.QPS != nil {
                    map["QPS"] = self.QPS!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PerIpQps"] as? Int32 {
                    self.perIpQps = value
                }
                if let value = dict["QPS"] as? Int32 {
                    self.QPS = value
                }
            }
        }
        public class TrafficMirrorConfig : Tea.TeaModel {
            public class MirrorGroupConfig : Tea.TeaModel {
                public class ServerGroupTuples : Tea.TeaModel {
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
                        if self.serverGroupId != nil {
                            map["ServerGroupId"] = self.serverGroupId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ServerGroupId"] as? String {
                            self.serverGroupId = value
                        }
                    }
                }
                public var serverGroupTuples: [CreateRuleRequest.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.serverGroupTuples != nil {
                        var tmp : [Any] = []
                        for k in self.serverGroupTuples! {
                            tmp.append(k.toMap())
                        }
                        map["ServerGroupTuples"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ServerGroupTuples"] as? [Any?] {
                        var tmp : [CreateRuleRequest.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples] = []
                        for v in value {
                            if v != nil {
                                var model = CreateRuleRequest.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.serverGroupTuples = tmp
                    }
                }
            }
            public var mirrorGroupConfig: CreateRuleRequest.RuleActions.TrafficMirrorConfig.MirrorGroupConfig?

            public var targetType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.mirrorGroupConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mirrorGroupConfig != nil {
                    map["MirrorGroupConfig"] = self.mirrorGroupConfig?.toMap()
                }
                if self.targetType != nil {
                    map["TargetType"] = self.targetType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MirrorGroupConfig"] as? [String: Any?] {
                    var model = CreateRuleRequest.RuleActions.TrafficMirrorConfig.MirrorGroupConfig()
                    model.fromMap(value)
                    self.mirrorGroupConfig = model
                }
                if let value = dict["TargetType"] as? String {
                    self.targetType = value
                }
            }
        }
        public var corsConfig: CreateRuleRequest.RuleActions.CorsConfig?

        public var fixedResponseConfig: CreateRuleRequest.RuleActions.FixedResponseConfig?

        public var forwardGroupConfig: CreateRuleRequest.RuleActions.ForwardGroupConfig?

        public var insertHeaderConfig: CreateRuleRequest.RuleActions.InsertHeaderConfig?

        public var order: Int32?

        public var redirectConfig: CreateRuleRequest.RuleActions.RedirectConfig?

        public var removeHeaderConfig: CreateRuleRequest.RuleActions.RemoveHeaderConfig?

        public var rewriteConfig: CreateRuleRequest.RuleActions.RewriteConfig?

        public var trafficLimitConfig: CreateRuleRequest.RuleActions.TrafficLimitConfig?

        public var trafficMirrorConfig: CreateRuleRequest.RuleActions.TrafficMirrorConfig?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.corsConfig?.validate()
            try self.fixedResponseConfig?.validate()
            try self.forwardGroupConfig?.validate()
            try self.insertHeaderConfig?.validate()
            try self.redirectConfig?.validate()
            try self.removeHeaderConfig?.validate()
            try self.rewriteConfig?.validate()
            try self.trafficLimitConfig?.validate()
            try self.trafficMirrorConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.corsConfig != nil {
                map["CorsConfig"] = self.corsConfig?.toMap()
            }
            if self.fixedResponseConfig != nil {
                map["FixedResponseConfig"] = self.fixedResponseConfig?.toMap()
            }
            if self.forwardGroupConfig != nil {
                map["ForwardGroupConfig"] = self.forwardGroupConfig?.toMap()
            }
            if self.insertHeaderConfig != nil {
                map["InsertHeaderConfig"] = self.insertHeaderConfig?.toMap()
            }
            if self.order != nil {
                map["Order"] = self.order!
            }
            if self.redirectConfig != nil {
                map["RedirectConfig"] = self.redirectConfig?.toMap()
            }
            if self.removeHeaderConfig != nil {
                map["RemoveHeaderConfig"] = self.removeHeaderConfig?.toMap()
            }
            if self.rewriteConfig != nil {
                map["RewriteConfig"] = self.rewriteConfig?.toMap()
            }
            if self.trafficLimitConfig != nil {
                map["TrafficLimitConfig"] = self.trafficLimitConfig?.toMap()
            }
            if self.trafficMirrorConfig != nil {
                map["TrafficMirrorConfig"] = self.trafficMirrorConfig?.toMap()
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CorsConfig"] as? [String: Any?] {
                var model = CreateRuleRequest.RuleActions.CorsConfig()
                model.fromMap(value)
                self.corsConfig = model
            }
            if let value = dict["FixedResponseConfig"] as? [String: Any?] {
                var model = CreateRuleRequest.RuleActions.FixedResponseConfig()
                model.fromMap(value)
                self.fixedResponseConfig = model
            }
            if let value = dict["ForwardGroupConfig"] as? [String: Any?] {
                var model = CreateRuleRequest.RuleActions.ForwardGroupConfig()
                model.fromMap(value)
                self.forwardGroupConfig = model
            }
            if let value = dict["InsertHeaderConfig"] as? [String: Any?] {
                var model = CreateRuleRequest.RuleActions.InsertHeaderConfig()
                model.fromMap(value)
                self.insertHeaderConfig = model
            }
            if let value = dict["Order"] as? Int32 {
                self.order = value
            }
            if let value = dict["RedirectConfig"] as? [String: Any?] {
                var model = CreateRuleRequest.RuleActions.RedirectConfig()
                model.fromMap(value)
                self.redirectConfig = model
            }
            if let value = dict["RemoveHeaderConfig"] as? [String: Any?] {
                var model = CreateRuleRequest.RuleActions.RemoveHeaderConfig()
                model.fromMap(value)
                self.removeHeaderConfig = model
            }
            if let value = dict["RewriteConfig"] as? [String: Any?] {
                var model = CreateRuleRequest.RuleActions.RewriteConfig()
                model.fromMap(value)
                self.rewriteConfig = model
            }
            if let value = dict["TrafficLimitConfig"] as? [String: Any?] {
                var model = CreateRuleRequest.RuleActions.TrafficLimitConfig()
                model.fromMap(value)
                self.trafficLimitConfig = model
            }
            if let value = dict["TrafficMirrorConfig"] as? [String: Any?] {
                var model = CreateRuleRequest.RuleActions.TrafficMirrorConfig()
                model.fromMap(value)
                self.trafficMirrorConfig = model
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class RuleConditions : Tea.TeaModel {
        public class CookieConfig : Tea.TeaModel {
            public class Values : Tea.TeaModel {
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
            public var values: [CreateRuleRequest.RuleConditions.CookieConfig.Values]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.values != nil {
                    var tmp : [Any] = []
                    for k in self.values! {
                        tmp.append(k.toMap())
                    }
                    map["Values"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Values"] as? [Any?] {
                    var tmp : [CreateRuleRequest.RuleConditions.CookieConfig.Values] = []
                    for v in value {
                        if v != nil {
                            var model = CreateRuleRequest.RuleConditions.CookieConfig.Values()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.values = tmp
                }
            }
        }
        public class HeaderConfig : Tea.TeaModel {
            public var key: String?

            public var values: [String]?

            public override init() {
                super.init()
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
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public class HostConfig : Tea.TeaModel {
            public var values: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public class MethodConfig : Tea.TeaModel {
            public var values: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public class PathConfig : Tea.TeaModel {
            public var values: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public class QueryStringConfig : Tea.TeaModel {
            public class Values : Tea.TeaModel {
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
            public var values: [CreateRuleRequest.RuleConditions.QueryStringConfig.Values]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.values != nil {
                    var tmp : [Any] = []
                    for k in self.values! {
                        tmp.append(k.toMap())
                    }
                    map["Values"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Values"] as? [Any?] {
                    var tmp : [CreateRuleRequest.RuleConditions.QueryStringConfig.Values] = []
                    for v in value {
                        if v != nil {
                            var model = CreateRuleRequest.RuleConditions.QueryStringConfig.Values()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.values = tmp
                }
            }
        }
        public class ResponseHeaderConfig : Tea.TeaModel {
            public var key: String?

            public var values: [String]?

            public override init() {
                super.init()
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
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public class ResponseStatusCodeConfig : Tea.TeaModel {
            public var values: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public class SourceIpConfig : Tea.TeaModel {
            public var values: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public var cookieConfig: CreateRuleRequest.RuleConditions.CookieConfig?

        public var headerConfig: CreateRuleRequest.RuleConditions.HeaderConfig?

        public var hostConfig: CreateRuleRequest.RuleConditions.HostConfig?

        public var methodConfig: CreateRuleRequest.RuleConditions.MethodConfig?

        public var pathConfig: CreateRuleRequest.RuleConditions.PathConfig?

        public var queryStringConfig: CreateRuleRequest.RuleConditions.QueryStringConfig?

        public var responseHeaderConfig: CreateRuleRequest.RuleConditions.ResponseHeaderConfig?

        public var responseStatusCodeConfig: CreateRuleRequest.RuleConditions.ResponseStatusCodeConfig?

        public var sourceIpConfig: CreateRuleRequest.RuleConditions.SourceIpConfig?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cookieConfig?.validate()
            try self.headerConfig?.validate()
            try self.hostConfig?.validate()
            try self.methodConfig?.validate()
            try self.pathConfig?.validate()
            try self.queryStringConfig?.validate()
            try self.responseHeaderConfig?.validate()
            try self.responseStatusCodeConfig?.validate()
            try self.sourceIpConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cookieConfig != nil {
                map["CookieConfig"] = self.cookieConfig?.toMap()
            }
            if self.headerConfig != nil {
                map["HeaderConfig"] = self.headerConfig?.toMap()
            }
            if self.hostConfig != nil {
                map["HostConfig"] = self.hostConfig?.toMap()
            }
            if self.methodConfig != nil {
                map["MethodConfig"] = self.methodConfig?.toMap()
            }
            if self.pathConfig != nil {
                map["PathConfig"] = self.pathConfig?.toMap()
            }
            if self.queryStringConfig != nil {
                map["QueryStringConfig"] = self.queryStringConfig?.toMap()
            }
            if self.responseHeaderConfig != nil {
                map["ResponseHeaderConfig"] = self.responseHeaderConfig?.toMap()
            }
            if self.responseStatusCodeConfig != nil {
                map["ResponseStatusCodeConfig"] = self.responseStatusCodeConfig?.toMap()
            }
            if self.sourceIpConfig != nil {
                map["SourceIpConfig"] = self.sourceIpConfig?.toMap()
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CookieConfig"] as? [String: Any?] {
                var model = CreateRuleRequest.RuleConditions.CookieConfig()
                model.fromMap(value)
                self.cookieConfig = model
            }
            if let value = dict["HeaderConfig"] as? [String: Any?] {
                var model = CreateRuleRequest.RuleConditions.HeaderConfig()
                model.fromMap(value)
                self.headerConfig = model
            }
            if let value = dict["HostConfig"] as? [String: Any?] {
                var model = CreateRuleRequest.RuleConditions.HostConfig()
                model.fromMap(value)
                self.hostConfig = model
            }
            if let value = dict["MethodConfig"] as? [String: Any?] {
                var model = CreateRuleRequest.RuleConditions.MethodConfig()
                model.fromMap(value)
                self.methodConfig = model
            }
            if let value = dict["PathConfig"] as? [String: Any?] {
                var model = CreateRuleRequest.RuleConditions.PathConfig()
                model.fromMap(value)
                self.pathConfig = model
            }
            if let value = dict["QueryStringConfig"] as? [String: Any?] {
                var model = CreateRuleRequest.RuleConditions.QueryStringConfig()
                model.fromMap(value)
                self.queryStringConfig = model
            }
            if let value = dict["ResponseHeaderConfig"] as? [String: Any?] {
                var model = CreateRuleRequest.RuleConditions.ResponseHeaderConfig()
                model.fromMap(value)
                self.responseHeaderConfig = model
            }
            if let value = dict["ResponseStatusCodeConfig"] as? [String: Any?] {
                var model = CreateRuleRequest.RuleConditions.ResponseStatusCodeConfig()
                model.fromMap(value)
                self.responseStatusCodeConfig = model
            }
            if let value = dict["SourceIpConfig"] as? [String: Any?] {
                var model = CreateRuleRequest.RuleConditions.SourceIpConfig()
                model.fromMap(value)
                self.sourceIpConfig = model
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public var direction: String?

    public var dryRun: Bool?

    public var listenerId: String?

    public var priority: Int32?

    public var ruleActions: [CreateRuleRequest.RuleActions]?

    public var ruleConditions: [CreateRuleRequest.RuleConditions]?

    public var ruleName: String?

    public var tag: [CreateRuleRequest.Tag]?

    public override init() {
        super.init()
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
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.listenerId != nil {
            map["ListenerId"] = self.listenerId!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.ruleActions != nil {
            var tmp : [Any] = []
            for k in self.ruleActions! {
                tmp.append(k.toMap())
            }
            map["RuleActions"] = tmp
        }
        if self.ruleConditions != nil {
            var tmp : [Any] = []
            for k in self.ruleConditions! {
                tmp.append(k.toMap())
            }
            map["RuleConditions"] = tmp
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
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
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["ListenerId"] as? String {
            self.listenerId = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["RuleActions"] as? [Any?] {
            var tmp : [CreateRuleRequest.RuleActions] = []
            for v in value {
                if v != nil {
                    var model = CreateRuleRequest.RuleActions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ruleActions = tmp
        }
        if let value = dict["RuleConditions"] as? [Any?] {
            var tmp : [CreateRuleRequest.RuleConditions] = []
            for v in value {
                if v != nil {
                    var model = CreateRuleRequest.RuleConditions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ruleConditions = tmp
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateRuleRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateRuleRequest.Tag()
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

public class CreateRuleResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public var ruleId: String?

    public override init() {
        super.init()
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
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
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class CreateRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRuleResponseBody?

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
            var model = CreateRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRulesRequest : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public class RuleActions : Tea.TeaModel {
            public class CorsConfig : Tea.TeaModel {
                public var allowCredentials: String?

                public var allowHeaders: [String]?

                public var allowMethods: [String]?

                public var allowOrigin: [String]?

                public var exposeHeaders: [String]?

                public var maxAge: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.allowCredentials != nil {
                        map["AllowCredentials"] = self.allowCredentials!
                    }
                    if self.allowHeaders != nil {
                        map["AllowHeaders"] = self.allowHeaders!
                    }
                    if self.allowMethods != nil {
                        map["AllowMethods"] = self.allowMethods!
                    }
                    if self.allowOrigin != nil {
                        map["AllowOrigin"] = self.allowOrigin!
                    }
                    if self.exposeHeaders != nil {
                        map["ExposeHeaders"] = self.exposeHeaders!
                    }
                    if self.maxAge != nil {
                        map["MaxAge"] = self.maxAge!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AllowCredentials"] as? String {
                        self.allowCredentials = value
                    }
                    if let value = dict["AllowHeaders"] as? [String] {
                        self.allowHeaders = value
                    }
                    if let value = dict["AllowMethods"] as? [String] {
                        self.allowMethods = value
                    }
                    if let value = dict["AllowOrigin"] as? [String] {
                        self.allowOrigin = value
                    }
                    if let value = dict["ExposeHeaders"] as? [String] {
                        self.exposeHeaders = value
                    }
                    if let value = dict["MaxAge"] as? Int64 {
                        self.maxAge = value
                    }
                }
            }
            public class FixedResponseConfig : Tea.TeaModel {
                public var content: String?

                public var contentType: String?

                public var httpCode: String?

                public override init() {
                    super.init()
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
                    if self.httpCode != nil {
                        map["HttpCode"] = self.httpCode!
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
                    if let value = dict["HttpCode"] as? String {
                        self.httpCode = value
                    }
                }
            }
            public class ForwardGroupConfig : Tea.TeaModel {
                public class ServerGroupStickySession : Tea.TeaModel {
                    public var enabled: Bool?

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
                        if self.enabled != nil {
                            map["Enabled"] = self.enabled!
                        }
                        if self.timeout != nil {
                            map["Timeout"] = self.timeout!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Enabled"] as? Bool {
                            self.enabled = value
                        }
                        if let value = dict["Timeout"] as? Int32 {
                            self.timeout = value
                        }
                    }
                }
                public class ServerGroupTuples : Tea.TeaModel {
                    public var serverGroupId: String?

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
                        if self.serverGroupId != nil {
                            map["ServerGroupId"] = self.serverGroupId!
                        }
                        if self.weight != nil {
                            map["Weight"] = self.weight!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ServerGroupId"] as? String {
                            self.serverGroupId = value
                        }
                        if let value = dict["Weight"] as? Int32 {
                            self.weight = value
                        }
                    }
                }
                public var serverGroupStickySession: CreateRulesRequest.Rules.RuleActions.ForwardGroupConfig.ServerGroupStickySession?

                public var serverGroupTuples: [CreateRulesRequest.Rules.RuleActions.ForwardGroupConfig.ServerGroupTuples]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.serverGroupStickySession?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.serverGroupStickySession != nil {
                        map["ServerGroupStickySession"] = self.serverGroupStickySession?.toMap()
                    }
                    if self.serverGroupTuples != nil {
                        var tmp : [Any] = []
                        for k in self.serverGroupTuples! {
                            tmp.append(k.toMap())
                        }
                        map["ServerGroupTuples"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ServerGroupStickySession"] as? [String: Any?] {
                        var model = CreateRulesRequest.Rules.RuleActions.ForwardGroupConfig.ServerGroupStickySession()
                        model.fromMap(value)
                        self.serverGroupStickySession = model
                    }
                    if let value = dict["ServerGroupTuples"] as? [Any?] {
                        var tmp : [CreateRulesRequest.Rules.RuleActions.ForwardGroupConfig.ServerGroupTuples] = []
                        for v in value {
                            if v != nil {
                                var model = CreateRulesRequest.Rules.RuleActions.ForwardGroupConfig.ServerGroupTuples()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.serverGroupTuples = tmp
                    }
                }
            }
            public class InsertHeaderConfig : Tea.TeaModel {
                public var key: String?

                public var value: String?

                public var valueType: String?

                public override init() {
                    super.init()
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
                    if self.valueType != nil {
                        map["ValueType"] = self.valueType!
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
                    if let value = dict["ValueType"] as? String {
                        self.valueType = value
                    }
                }
            }
            public class RedirectConfig : Tea.TeaModel {
                public var host: String?

                public var httpCode: String?

                public var path: String?

                public var port: String?

                public var protocol_: String?

                public var query: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.httpCode != nil {
                        map["HttpCode"] = self.httpCode!
                    }
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.protocol_ != nil {
                        map["Protocol"] = self.protocol_!
                    }
                    if self.query != nil {
                        map["Query"] = self.query!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Host"] as? String {
                        self.host = value
                    }
                    if let value = dict["HttpCode"] as? String {
                        self.httpCode = value
                    }
                    if let value = dict["Path"] as? String {
                        self.path = value
                    }
                    if let value = dict["Port"] as? String {
                        self.port = value
                    }
                    if let value = dict["Protocol"] as? String {
                        self.protocol_ = value
                    }
                    if let value = dict["Query"] as? String {
                        self.query = value
                    }
                }
            }
            public class RemoveHeaderConfig : Tea.TeaModel {
                public var key: String?

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                }
            }
            public class RewriteConfig : Tea.TeaModel {
                public var host: String?

                public var path: String?

                public var query: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.query != nil {
                        map["Query"] = self.query!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Host"] as? String {
                        self.host = value
                    }
                    if let value = dict["Path"] as? String {
                        self.path = value
                    }
                    if let value = dict["Query"] as? String {
                        self.query = value
                    }
                }
            }
            public class TrafficLimitConfig : Tea.TeaModel {
                public var perIpQps: Int32?

                public var QPS: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.perIpQps != nil {
                        map["PerIpQps"] = self.perIpQps!
                    }
                    if self.QPS != nil {
                        map["QPS"] = self.QPS!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PerIpQps"] as? Int32 {
                        self.perIpQps = value
                    }
                    if let value = dict["QPS"] as? Int32 {
                        self.QPS = value
                    }
                }
            }
            public class TrafficMirrorConfig : Tea.TeaModel {
                public class MirrorGroupConfig : Tea.TeaModel {
                    public class ServerGroupTuples : Tea.TeaModel {
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
                            if self.serverGroupId != nil {
                                map["ServerGroupId"] = self.serverGroupId!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["ServerGroupId"] as? String {
                                self.serverGroupId = value
                            }
                        }
                    }
                    public var serverGroupTuples: [CreateRulesRequest.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.serverGroupTuples != nil {
                            var tmp : [Any] = []
                            for k in self.serverGroupTuples! {
                                tmp.append(k.toMap())
                            }
                            map["ServerGroupTuples"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ServerGroupTuples"] as? [Any?] {
                            var tmp : [CreateRulesRequest.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples] = []
                            for v in value {
                                if v != nil {
                                    var model = CreateRulesRequest.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.serverGroupTuples = tmp
                        }
                    }
                }
                public var mirrorGroupConfig: CreateRulesRequest.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig?

                public var targetType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.mirrorGroupConfig?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mirrorGroupConfig != nil {
                        map["MirrorGroupConfig"] = self.mirrorGroupConfig?.toMap()
                    }
                    if self.targetType != nil {
                        map["TargetType"] = self.targetType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MirrorGroupConfig"] as? [String: Any?] {
                        var model = CreateRulesRequest.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig()
                        model.fromMap(value)
                        self.mirrorGroupConfig = model
                    }
                    if let value = dict["TargetType"] as? String {
                        self.targetType = value
                    }
                }
            }
            public var corsConfig: CreateRulesRequest.Rules.RuleActions.CorsConfig?

            public var fixedResponseConfig: CreateRulesRequest.Rules.RuleActions.FixedResponseConfig?

            public var forwardGroupConfig: CreateRulesRequest.Rules.RuleActions.ForwardGroupConfig?

            public var insertHeaderConfig: CreateRulesRequest.Rules.RuleActions.InsertHeaderConfig?

            public var order: Int32?

            public var redirectConfig: CreateRulesRequest.Rules.RuleActions.RedirectConfig?

            public var removeHeaderConfig: CreateRulesRequest.Rules.RuleActions.RemoveHeaderConfig?

            public var rewriteConfig: CreateRulesRequest.Rules.RuleActions.RewriteConfig?

            public var trafficLimitConfig: CreateRulesRequest.Rules.RuleActions.TrafficLimitConfig?

            public var trafficMirrorConfig: CreateRulesRequest.Rules.RuleActions.TrafficMirrorConfig?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.corsConfig?.validate()
                try self.fixedResponseConfig?.validate()
                try self.forwardGroupConfig?.validate()
                try self.insertHeaderConfig?.validate()
                try self.redirectConfig?.validate()
                try self.removeHeaderConfig?.validate()
                try self.rewriteConfig?.validate()
                try self.trafficLimitConfig?.validate()
                try self.trafficMirrorConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.corsConfig != nil {
                    map["CorsConfig"] = self.corsConfig?.toMap()
                }
                if self.fixedResponseConfig != nil {
                    map["FixedResponseConfig"] = self.fixedResponseConfig?.toMap()
                }
                if self.forwardGroupConfig != nil {
                    map["ForwardGroupConfig"] = self.forwardGroupConfig?.toMap()
                }
                if self.insertHeaderConfig != nil {
                    map["InsertHeaderConfig"] = self.insertHeaderConfig?.toMap()
                }
                if self.order != nil {
                    map["Order"] = self.order!
                }
                if self.redirectConfig != nil {
                    map["RedirectConfig"] = self.redirectConfig?.toMap()
                }
                if self.removeHeaderConfig != nil {
                    map["RemoveHeaderConfig"] = self.removeHeaderConfig?.toMap()
                }
                if self.rewriteConfig != nil {
                    map["RewriteConfig"] = self.rewriteConfig?.toMap()
                }
                if self.trafficLimitConfig != nil {
                    map["TrafficLimitConfig"] = self.trafficLimitConfig?.toMap()
                }
                if self.trafficMirrorConfig != nil {
                    map["TrafficMirrorConfig"] = self.trafficMirrorConfig?.toMap()
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CorsConfig"] as? [String: Any?] {
                    var model = CreateRulesRequest.Rules.RuleActions.CorsConfig()
                    model.fromMap(value)
                    self.corsConfig = model
                }
                if let value = dict["FixedResponseConfig"] as? [String: Any?] {
                    var model = CreateRulesRequest.Rules.RuleActions.FixedResponseConfig()
                    model.fromMap(value)
                    self.fixedResponseConfig = model
                }
                if let value = dict["ForwardGroupConfig"] as? [String: Any?] {
                    var model = CreateRulesRequest.Rules.RuleActions.ForwardGroupConfig()
                    model.fromMap(value)
                    self.forwardGroupConfig = model
                }
                if let value = dict["InsertHeaderConfig"] as? [String: Any?] {
                    var model = CreateRulesRequest.Rules.RuleActions.InsertHeaderConfig()
                    model.fromMap(value)
                    self.insertHeaderConfig = model
                }
                if let value = dict["Order"] as? Int32 {
                    self.order = value
                }
                if let value = dict["RedirectConfig"] as? [String: Any?] {
                    var model = CreateRulesRequest.Rules.RuleActions.RedirectConfig()
                    model.fromMap(value)
                    self.redirectConfig = model
                }
                if let value = dict["RemoveHeaderConfig"] as? [String: Any?] {
                    var model = CreateRulesRequest.Rules.RuleActions.RemoveHeaderConfig()
                    model.fromMap(value)
                    self.removeHeaderConfig = model
                }
                if let value = dict["RewriteConfig"] as? [String: Any?] {
                    var model = CreateRulesRequest.Rules.RuleActions.RewriteConfig()
                    model.fromMap(value)
                    self.rewriteConfig = model
                }
                if let value = dict["TrafficLimitConfig"] as? [String: Any?] {
                    var model = CreateRulesRequest.Rules.RuleActions.TrafficLimitConfig()
                    model.fromMap(value)
                    self.trafficLimitConfig = model
                }
                if let value = dict["TrafficMirrorConfig"] as? [String: Any?] {
                    var model = CreateRulesRequest.Rules.RuleActions.TrafficMirrorConfig()
                    model.fromMap(value)
                    self.trafficMirrorConfig = model
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class RuleConditions : Tea.TeaModel {
            public class CookieConfig : Tea.TeaModel {
                public class Values : Tea.TeaModel {
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
                public var values: [CreateRulesRequest.Rules.RuleConditions.CookieConfig.Values]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        var tmp : [Any] = []
                        for k in self.values! {
                            tmp.append(k.toMap())
                        }
                        map["Values"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [Any?] {
                        var tmp : [CreateRulesRequest.Rules.RuleConditions.CookieConfig.Values] = []
                        for v in value {
                            if v != nil {
                                var model = CreateRulesRequest.Rules.RuleConditions.CookieConfig.Values()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.values = tmp
                    }
                }
            }
            public class HeaderConfig : Tea.TeaModel {
                public var key: String?

                public var values: [String]?

                public override init() {
                    super.init()
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
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public class HostConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public class MethodConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public class PathConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public class QueryStringConfig : Tea.TeaModel {
                public class Values : Tea.TeaModel {
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
                public var values: [CreateRulesRequest.Rules.RuleConditions.QueryStringConfig.Values]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        var tmp : [Any] = []
                        for k in self.values! {
                            tmp.append(k.toMap())
                        }
                        map["Values"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [Any?] {
                        var tmp : [CreateRulesRequest.Rules.RuleConditions.QueryStringConfig.Values] = []
                        for v in value {
                            if v != nil {
                                var model = CreateRulesRequest.Rules.RuleConditions.QueryStringConfig.Values()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.values = tmp
                    }
                }
            }
            public class ResponseHeaderConfig : Tea.TeaModel {
                public var key: String?

                public var values: [String]?

                public override init() {
                    super.init()
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
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public class ResponseStatusCodeConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public class SourceIpConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public var cookieConfig: CreateRulesRequest.Rules.RuleConditions.CookieConfig?

            public var headerConfig: CreateRulesRequest.Rules.RuleConditions.HeaderConfig?

            public var hostConfig: CreateRulesRequest.Rules.RuleConditions.HostConfig?

            public var methodConfig: CreateRulesRequest.Rules.RuleConditions.MethodConfig?

            public var pathConfig: CreateRulesRequest.Rules.RuleConditions.PathConfig?

            public var queryStringConfig: CreateRulesRequest.Rules.RuleConditions.QueryStringConfig?

            public var responseHeaderConfig: CreateRulesRequest.Rules.RuleConditions.ResponseHeaderConfig?

            public var responseStatusCodeConfig: CreateRulesRequest.Rules.RuleConditions.ResponseStatusCodeConfig?

            public var sourceIpConfig: CreateRulesRequest.Rules.RuleConditions.SourceIpConfig?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cookieConfig?.validate()
                try self.headerConfig?.validate()
                try self.hostConfig?.validate()
                try self.methodConfig?.validate()
                try self.pathConfig?.validate()
                try self.queryStringConfig?.validate()
                try self.responseHeaderConfig?.validate()
                try self.responseStatusCodeConfig?.validate()
                try self.sourceIpConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cookieConfig != nil {
                    map["CookieConfig"] = self.cookieConfig?.toMap()
                }
                if self.headerConfig != nil {
                    map["HeaderConfig"] = self.headerConfig?.toMap()
                }
                if self.hostConfig != nil {
                    map["HostConfig"] = self.hostConfig?.toMap()
                }
                if self.methodConfig != nil {
                    map["MethodConfig"] = self.methodConfig?.toMap()
                }
                if self.pathConfig != nil {
                    map["PathConfig"] = self.pathConfig?.toMap()
                }
                if self.queryStringConfig != nil {
                    map["QueryStringConfig"] = self.queryStringConfig?.toMap()
                }
                if self.responseHeaderConfig != nil {
                    map["ResponseHeaderConfig"] = self.responseHeaderConfig?.toMap()
                }
                if self.responseStatusCodeConfig != nil {
                    map["ResponseStatusCodeConfig"] = self.responseStatusCodeConfig?.toMap()
                }
                if self.sourceIpConfig != nil {
                    map["SourceIpConfig"] = self.sourceIpConfig?.toMap()
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CookieConfig"] as? [String: Any?] {
                    var model = CreateRulesRequest.Rules.RuleConditions.CookieConfig()
                    model.fromMap(value)
                    self.cookieConfig = model
                }
                if let value = dict["HeaderConfig"] as? [String: Any?] {
                    var model = CreateRulesRequest.Rules.RuleConditions.HeaderConfig()
                    model.fromMap(value)
                    self.headerConfig = model
                }
                if let value = dict["HostConfig"] as? [String: Any?] {
                    var model = CreateRulesRequest.Rules.RuleConditions.HostConfig()
                    model.fromMap(value)
                    self.hostConfig = model
                }
                if let value = dict["MethodConfig"] as? [String: Any?] {
                    var model = CreateRulesRequest.Rules.RuleConditions.MethodConfig()
                    model.fromMap(value)
                    self.methodConfig = model
                }
                if let value = dict["PathConfig"] as? [String: Any?] {
                    var model = CreateRulesRequest.Rules.RuleConditions.PathConfig()
                    model.fromMap(value)
                    self.pathConfig = model
                }
                if let value = dict["QueryStringConfig"] as? [String: Any?] {
                    var model = CreateRulesRequest.Rules.RuleConditions.QueryStringConfig()
                    model.fromMap(value)
                    self.queryStringConfig = model
                }
                if let value = dict["ResponseHeaderConfig"] as? [String: Any?] {
                    var model = CreateRulesRequest.Rules.RuleConditions.ResponseHeaderConfig()
                    model.fromMap(value)
                    self.responseHeaderConfig = model
                }
                if let value = dict["ResponseStatusCodeConfig"] as? [String: Any?] {
                    var model = CreateRulesRequest.Rules.RuleConditions.ResponseStatusCodeConfig()
                    model.fromMap(value)
                    self.responseStatusCodeConfig = model
                }
                if let value = dict["SourceIpConfig"] as? [String: Any?] {
                    var model = CreateRulesRequest.Rules.RuleConditions.SourceIpConfig()
                    model.fromMap(value)
                    self.sourceIpConfig = model
                }
                if let value = dict["Type"] as? String {
                    self.type = value
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
        public var direction: String?

        public var priority: Int32?

        public var ruleActions: [CreateRulesRequest.Rules.RuleActions]?

        public var ruleConditions: [CreateRulesRequest.Rules.RuleConditions]?

        public var ruleName: String?

        public var tag: [CreateRulesRequest.Rules.Tag]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.direction != nil {
                map["Direction"] = self.direction!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.ruleActions != nil {
                var tmp : [Any] = []
                for k in self.ruleActions! {
                    tmp.append(k.toMap())
                }
                map["RuleActions"] = tmp
            }
            if self.ruleConditions != nil {
                var tmp : [Any] = []
                for k in self.ruleConditions! {
                    tmp.append(k.toMap())
                }
                map["RuleConditions"] = tmp
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
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
            if let value = dict["Direction"] as? String {
                self.direction = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["RuleActions"] as? [Any?] {
                var tmp : [CreateRulesRequest.Rules.RuleActions] = []
                for v in value {
                    if v != nil {
                        var model = CreateRulesRequest.Rules.RuleActions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ruleActions = tmp
            }
            if let value = dict["RuleConditions"] as? [Any?] {
                var tmp : [CreateRulesRequest.Rules.RuleConditions] = []
                for v in value {
                    if v != nil {
                        var model = CreateRulesRequest.Rules.RuleConditions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ruleConditions = tmp
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["Tag"] as? [Any?] {
                var tmp : [CreateRulesRequest.Rules.Tag] = []
                for v in value {
                    if v != nil {
                        var model = CreateRulesRequest.Rules.Tag()
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
    public var clientToken: String?

    public var dryRun: Bool?

    public var listenerId: String?

    public var rules: [CreateRulesRequest.Rules]?

    public override init() {
        super.init()
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
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
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
        if let value = dict["Rules"] as? [Any?] {
            var tmp : [CreateRulesRequest.Rules] = []
            for v in value {
                if v != nil {
                    var model = CreateRulesRequest.Rules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rules = tmp
        }
    }
}

public class CreateRulesResponseBody : Tea.TeaModel {
    public class RuleIds : Tea.TeaModel {
        public var priority: Int32?

        public var ruleId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
        }
    }
    public var jobId: String?

    public var requestId: String?

    public var ruleIds: [CreateRulesResponseBody.RuleIds]?

    public override init() {
        super.init()
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
        if self.ruleIds != nil {
            var tmp : [Any] = []
            for k in self.ruleIds! {
                tmp.append(k.toMap())
            }
            map["RuleIds"] = tmp
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
        if let value = dict["RuleIds"] as? [Any?] {
            var tmp : [CreateRulesResponseBody.RuleIds] = []
            for v in value {
                if v != nil {
                    var model = CreateRulesResponseBody.RuleIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ruleIds = tmp
        }
    }
}

public class CreateRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRulesResponseBody?

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
            var model = CreateRulesResponseBody()
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

    public var resourceGroupId: String?

    public var securityPolicyName: String?

    public var TLSVersions: [String]?

    public var tag: [CreateSecurityPolicyRequest.Tag]?

    public override init() {
        super.init()
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityPolicyName != nil {
            map["SecurityPolicyName"] = self.securityPolicyName!
        }
        if self.TLSVersions != nil {
            map["TLSVersions"] = self.TLSVersions!
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
        if let value = dict["Ciphers"] as? [String] {
            self.ciphers = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SecurityPolicyName"] as? String {
            self.securityPolicyName = value
        }
        if let value = dict["TLSVersions"] as? [String] {
            self.TLSVersions = value
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
    }
}

public class CreateSecurityPolicyResponseBody : Tea.TeaModel {
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
    public class ConnectionDrainConfig : Tea.TeaModel {
        public var connectionDrainEnabled: Bool?

        public var connectionDrainTimeout: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionDrainEnabled != nil {
                map["ConnectionDrainEnabled"] = self.connectionDrainEnabled!
            }
            if self.connectionDrainTimeout != nil {
                map["ConnectionDrainTimeout"] = self.connectionDrainTimeout!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectionDrainEnabled"] as? Bool {
                self.connectionDrainEnabled = value
            }
            if let value = dict["ConnectionDrainTimeout"] as? Int32 {
                self.connectionDrainTimeout = value
            }
        }
    }
    public class HealthCheckConfig : Tea.TeaModel {
        public var healthCheckCodes: [String]?

        public var healthCheckConnectPort: Int32?

        public var healthCheckEnabled: Bool?

        public var healthCheckHost: String?

        public var healthCheckHttpVersion: String?

        public var healthCheckInterval: Int32?

        public var healthCheckMethod: String?

        public var healthCheckPath: String?

        public var healthCheckProtocol: String?

        public var healthCheckTimeout: Int32?

        public var healthyThreshold: Int32?

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
            if self.healthCheckCodes != nil {
                map["HealthCheckCodes"] = self.healthCheckCodes!
            }
            if self.healthCheckConnectPort != nil {
                map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
            }
            if self.healthCheckEnabled != nil {
                map["HealthCheckEnabled"] = self.healthCheckEnabled!
            }
            if self.healthCheckHost != nil {
                map["HealthCheckHost"] = self.healthCheckHost!
            }
            if self.healthCheckHttpVersion != nil {
                map["HealthCheckHttpVersion"] = self.healthCheckHttpVersion!
            }
            if self.healthCheckInterval != nil {
                map["HealthCheckInterval"] = self.healthCheckInterval!
            }
            if self.healthCheckMethod != nil {
                map["HealthCheckMethod"] = self.healthCheckMethod!
            }
            if self.healthCheckPath != nil {
                map["HealthCheckPath"] = self.healthCheckPath!
            }
            if self.healthCheckProtocol != nil {
                map["HealthCheckProtocol"] = self.healthCheckProtocol!
            }
            if self.healthCheckTimeout != nil {
                map["HealthCheckTimeout"] = self.healthCheckTimeout!
            }
            if self.healthyThreshold != nil {
                map["HealthyThreshold"] = self.healthyThreshold!
            }
            if self.unhealthyThreshold != nil {
                map["UnhealthyThreshold"] = self.unhealthyThreshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HealthCheckCodes"] as? [String] {
                self.healthCheckCodes = value
            }
            if let value = dict["HealthCheckConnectPort"] as? Int32 {
                self.healthCheckConnectPort = value
            }
            if let value = dict["HealthCheckEnabled"] as? Bool {
                self.healthCheckEnabled = value
            }
            if let value = dict["HealthCheckHost"] as? String {
                self.healthCheckHost = value
            }
            if let value = dict["HealthCheckHttpVersion"] as? String {
                self.healthCheckHttpVersion = value
            }
            if let value = dict["HealthCheckInterval"] as? Int32 {
                self.healthCheckInterval = value
            }
            if let value = dict["HealthCheckMethod"] as? String {
                self.healthCheckMethod = value
            }
            if let value = dict["HealthCheckPath"] as? String {
                self.healthCheckPath = value
            }
            if let value = dict["HealthCheckProtocol"] as? String {
                self.healthCheckProtocol = value
            }
            if let value = dict["HealthCheckTimeout"] as? Int32 {
                self.healthCheckTimeout = value
            }
            if let value = dict["HealthyThreshold"] as? Int32 {
                self.healthyThreshold = value
            }
            if let value = dict["UnhealthyThreshold"] as? Int32 {
                self.unhealthyThreshold = value
            }
        }
    }
    public class SlowStartConfig : Tea.TeaModel {
        public var slowStartDuration: Int32?

        public var slowStartEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.slowStartDuration != nil {
                map["SlowStartDuration"] = self.slowStartDuration!
            }
            if self.slowStartEnabled != nil {
                map["SlowStartEnabled"] = self.slowStartEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SlowStartDuration"] as? Int32 {
                self.slowStartDuration = value
            }
            if let value = dict["SlowStartEnabled"] as? Bool {
                self.slowStartEnabled = value
            }
        }
    }
    public class StickySessionConfig : Tea.TeaModel {
        public var cookie: String?

        public var cookieTimeout: Int32?

        public var stickySessionEnabled: Bool?

        public var stickySessionType: String?

        public override init() {
            super.init()
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
            if self.stickySessionEnabled != nil {
                map["StickySessionEnabled"] = self.stickySessionEnabled!
            }
            if self.stickySessionType != nil {
                map["StickySessionType"] = self.stickySessionType!
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
            if let value = dict["StickySessionEnabled"] as? Bool {
                self.stickySessionEnabled = value
            }
            if let value = dict["StickySessionType"] as? String {
                self.stickySessionType = value
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
    public class UchConfig : Tea.TeaModel {
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
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var clientToken: String?

    public var connectionDrainConfig: CreateServerGroupRequest.ConnectionDrainConfig?

    public var crossZoneEnabled: Bool?

    public var dryRun: Bool?

    public var healthCheckConfig: CreateServerGroupRequest.HealthCheckConfig?

    public var ipv6Enabled: Bool?

    public var protocol_: String?

    public var resourceGroupId: String?

    public var scheduler: String?

    public var serverGroupName: String?

    public var serverGroupType: String?

    public var serviceName: String?

    public var slowStartConfig: CreateServerGroupRequest.SlowStartConfig?

    public var stickySessionConfig: CreateServerGroupRequest.StickySessionConfig?

    public var tag: [CreateServerGroupRequest.Tag]?

    public var uchConfig: CreateServerGroupRequest.UchConfig?

    public var upstreamKeepaliveEnabled: Bool?

    public var vpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.connectionDrainConfig?.validate()
        try self.healthCheckConfig?.validate()
        try self.slowStartConfig?.validate()
        try self.stickySessionConfig?.validate()
        try self.uchConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.connectionDrainConfig != nil {
            map["ConnectionDrainConfig"] = self.connectionDrainConfig?.toMap()
        }
        if self.crossZoneEnabled != nil {
            map["CrossZoneEnabled"] = self.crossZoneEnabled!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.healthCheckConfig != nil {
            map["HealthCheckConfig"] = self.healthCheckConfig?.toMap()
        }
        if self.ipv6Enabled != nil {
            map["Ipv6Enabled"] = self.ipv6Enabled!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
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
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.slowStartConfig != nil {
            map["SlowStartConfig"] = self.slowStartConfig?.toMap()
        }
        if self.stickySessionConfig != nil {
            map["StickySessionConfig"] = self.stickySessionConfig?.toMap()
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.uchConfig != nil {
            map["UchConfig"] = self.uchConfig?.toMap()
        }
        if self.upstreamKeepaliveEnabled != nil {
            map["UpstreamKeepaliveEnabled"] = self.upstreamKeepaliveEnabled!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConnectionDrainConfig"] as? [String: Any?] {
            var model = CreateServerGroupRequest.ConnectionDrainConfig()
            model.fromMap(value)
            self.connectionDrainConfig = model
        }
        if let value = dict["CrossZoneEnabled"] as? Bool {
            self.crossZoneEnabled = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["HealthCheckConfig"] as? [String: Any?] {
            var model = CreateServerGroupRequest.HealthCheckConfig()
            model.fromMap(value)
            self.healthCheckConfig = model
        }
        if let value = dict["Ipv6Enabled"] as? Bool {
            self.ipv6Enabled = value
        }
        if let value = dict["Protocol"] as? String {
            self.protocol_ = value
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
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["SlowStartConfig"] as? [String: Any?] {
            var model = CreateServerGroupRequest.SlowStartConfig()
            model.fromMap(value)
            self.slowStartConfig = model
        }
        if let value = dict["StickySessionConfig"] as? [String: Any?] {
            var model = CreateServerGroupRequest.StickySessionConfig()
            model.fromMap(value)
            self.stickySessionConfig = model
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
        if let value = dict["UchConfig"] as? [String: Any?] {
            var model = CreateServerGroupRequest.UchConfig()
            model.fromMap(value)
            self.uchConfig = model
        }
        if let value = dict["UpstreamKeepaliveEnabled"] as? Bool {
            self.upstreamKeepaliveEnabled = value
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

public class DeleteAScriptsRequest : Tea.TeaModel {
    public var AScriptIds: [String]?

    public var clientToken: String?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.AScriptIds != nil {
            map["AScriptIds"] = self.AScriptIds!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AScriptIds"] as? [String] {
            self.AScriptIds = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class DeleteAScriptsResponseBody : Tea.TeaModel {
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

public class DeleteAScriptsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAScriptsResponseBody?

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
            var model = DeleteAScriptsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAclRequest : Tea.TeaModel {
    public var aclId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class DeleteAclResponseBody : Tea.TeaModel {
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

public class DeleteAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAclResponseBody?

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
            var model = DeleteAclResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteHealthCheckTemplatesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var healthCheckTemplateIds: [String]?

    public override init() {
        super.init()
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
        if self.healthCheckTemplateIds != nil {
            map["HealthCheckTemplateIds"] = self.healthCheckTemplateIds!
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
        if let value = dict["HealthCheckTemplateIds"] as? [String] {
            self.healthCheckTemplateIds = value
        }
    }
}

public class DeleteHealthCheckTemplatesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteHealthCheckTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHealthCheckTemplatesResponseBody?

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
            var model = DeleteHealthCheckTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteListenerRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var listenerId: String?

    public override init() {
        super.init()
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

    public override init() {
        super.init()
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

public class DeleteRuleRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ruleId: String?

    public override init() {
        super.init()
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
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
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class DeleteRuleResponseBody : Tea.TeaModel {
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

public class DeleteRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRuleResponseBody?

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
            var model = DeleteRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRulesRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var ruleIds: [String]?

    public override init() {
        super.init()
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
        if self.ruleIds != nil {
            map["RuleIds"] = self.ruleIds!
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
        if let value = dict["RuleIds"] as? [String] {
            self.ruleIds = value
        }
    }
}

public class DeleteRulesResponseBody : Tea.TeaModel {
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

public class DeleteRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRulesResponseBody?

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
            var model = DeleteRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSecurityPolicyRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

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

public class DescribeCapacityReservationRequest : Tea.TeaModel {
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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
    }
}

public class DescribeCapacityReservationResponseBody : Tea.TeaModel {
    public class CapacityReservationState : Tea.TeaModel {
        public var availabilityZone: String?

        public var effectiveCapacityUnits: Double?

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
            if self.availabilityZone != nil {
                map["AvailabilityZone"] = self.availabilityZone!
            }
            if self.effectiveCapacityUnits != nil {
                map["EffectiveCapacityUnits"] = self.effectiveCapacityUnits!
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
            if let value = dict["AvailabilityZone"] as? String {
                self.availabilityZone = value
            }
            if let value = dict["EffectiveCapacityUnits"] as? Double {
                self.effectiveCapacityUnits = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public class MinimumLoadBalancerCapacity : Tea.TeaModel {
        public var capacityUnits: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capacityUnits != nil {
                map["CapacityUnits"] = self.capacityUnits!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CapacityUnits"] as? Int32 {
                self.capacityUnits = value
            }
        }
    }
    public var capacityReservationState: [DescribeCapacityReservationResponseBody.CapacityReservationState]?

    public var decreaseRequestsRemaining: Int32?

    public var lastModifiedTime: String?

    public var minimumLoadBalancerCapacity: DescribeCapacityReservationResponseBody.MinimumLoadBalancerCapacity?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.minimumLoadBalancerCapacity?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.capacityReservationState != nil {
            var tmp : [Any] = []
            for k in self.capacityReservationState! {
                tmp.append(k.toMap())
            }
            map["CapacityReservationState"] = tmp
        }
        if self.decreaseRequestsRemaining != nil {
            map["DecreaseRequestsRemaining"] = self.decreaseRequestsRemaining!
        }
        if self.lastModifiedTime != nil {
            map["LastModifiedTime"] = self.lastModifiedTime!
        }
        if self.minimumLoadBalancerCapacity != nil {
            map["MinimumLoadBalancerCapacity"] = self.minimumLoadBalancerCapacity?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CapacityReservationState"] as? [Any?] {
            var tmp : [DescribeCapacityReservationResponseBody.CapacityReservationState] = []
            for v in value {
                if v != nil {
                    var model = DescribeCapacityReservationResponseBody.CapacityReservationState()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.capacityReservationState = tmp
        }
        if let value = dict["DecreaseRequestsRemaining"] as? Int32 {
            self.decreaseRequestsRemaining = value
        }
        if let value = dict["LastModifiedTime"] as? String {
            self.lastModifiedTime = value
        }
        if let value = dict["MinimumLoadBalancerCapacity"] as? [String: Any?] {
            var model = DescribeCapacityReservationResponseBody.MinimumLoadBalancerCapacity()
            model.fromMap(value)
            self.minimumLoadBalancerCapacity = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeCapacityReservationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCapacityReservationResponseBody?

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
            var model = DescribeCapacityReservationResponseBody()
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

public class DisableDeletionProtectionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
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
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
    }
}

public class DisableDeletionProtectionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DisableDeletionProtectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableDeletionProtectionResponseBody?

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
            var model = DisableDeletionProtectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableLoadBalancerAccessLogRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
    }
}

public class DisableLoadBalancerAccessLogResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DisableLoadBalancerAccessLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableLoadBalancerAccessLogResponseBody?

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
            var model = DisableLoadBalancerAccessLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableLoadBalancerIpv6InternetRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
    }
}

public class DisableLoadBalancerIpv6InternetResponseBody : Tea.TeaModel {
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

public class DissociateAclsFromListenerRequest : Tea.TeaModel {
    public var aclIds: [String]?

    public var clientToken: String?

    public var dryRun: Bool?

    public var listenerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclIds != nil {
            map["AclIds"] = self.aclIds!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclIds"] as? [String] {
            self.aclIds = value
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
    }
}

public class DissociateAclsFromListenerResponseBody : Tea.TeaModel {
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

public class DissociateAclsFromListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DissociateAclsFromListenerResponseBody?

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
            var model = DissociateAclsFromListenerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DissociateAdditionalCertificatesFromListenerRequest : Tea.TeaModel {
    public class Certificates : Tea.TeaModel {
        public var certificateId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertificateId"] as? String {
                self.certificateId = value
            }
        }
    }
    public var certificates: [DissociateAdditionalCertificatesFromListenerRequest.Certificates]?

    public var clientToken: String?

    public var dryRun: Bool?

    public var listenerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificates != nil {
            var tmp : [Any] = []
            for k in self.certificates! {
                tmp.append(k.toMap())
            }
            map["Certificates"] = tmp
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Certificates"] as? [Any?] {
            var tmp : [DissociateAdditionalCertificatesFromListenerRequest.Certificates] = []
            for v in value {
                if v != nil {
                    var model = DissociateAdditionalCertificatesFromListenerRequest.Certificates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.certificates = tmp
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
    }
}

public class DissociateAdditionalCertificatesFromListenerResponseBody : Tea.TeaModel {
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

public class DissociateAdditionalCertificatesFromListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DissociateAdditionalCertificatesFromListenerResponseBody?

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
            var model = DissociateAdditionalCertificatesFromListenerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableDeletionProtectionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
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
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
    }
}

public class EnableDeletionProtectionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class EnableDeletionProtectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableDeletionProtectionResponseBody?

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
            var model = EnableDeletionProtectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableLoadBalancerAccessLogRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var loadBalancerId: String?

    public var logProject: String?

    public var logStore: String?

    public override init() {
        super.init()
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
        if self.logProject != nil {
            map["LogProject"] = self.logProject!
        }
        if self.logStore != nil {
            map["LogStore"] = self.logStore!
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
        if let value = dict["LogProject"] as? String {
            self.logProject = value
        }
        if let value = dict["LogStore"] as? String {
            self.logStore = value
        }
    }
}

public class EnableLoadBalancerAccessLogResponseBody : Tea.TeaModel {
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

public class EnableLoadBalancerAccessLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableLoadBalancerAccessLogResponseBody?

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
            var model = EnableLoadBalancerAccessLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableLoadBalancerIpv6InternetRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
    }
}

public class EnableLoadBalancerIpv6InternetResponseBody : Tea.TeaModel {
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

public class GetHealthCheckTemplateAttributeRequest : Tea.TeaModel {
    public var healthCheckTemplateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.healthCheckTemplateId != nil {
            map["HealthCheckTemplateId"] = self.healthCheckTemplateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HealthCheckTemplateId"] as? String {
            self.healthCheckTemplateId = value
        }
    }
}

public class GetHealthCheckTemplateAttributeResponseBody : Tea.TeaModel {
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
    public var healthCheckCodes: [String]?

    public var healthCheckConnectPort: Int32?

    public var healthCheckHost: String?

    public var healthCheckHttpVersion: String?

    public var healthCheckInterval: Int32?

    public var healthCheckMethod: String?

    public var healthCheckPath: String?

    public var healthCheckProtocol: String?

    public var healthCheckTemplateId: String?

    public var healthCheckTemplateName: String?

    public var healthCheckTimeout: Int32?

    public var healthyThreshold: Int32?

    public var requestId: String?

    public var resourceGroupId: String?

    public var tags: [GetHealthCheckTemplateAttributeResponseBody.Tags]?

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
        if self.healthCheckCodes != nil {
            map["HealthCheckCodes"] = self.healthCheckCodes!
        }
        if self.healthCheckConnectPort != nil {
            map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
        }
        if self.healthCheckHost != nil {
            map["HealthCheckHost"] = self.healthCheckHost!
        }
        if self.healthCheckHttpVersion != nil {
            map["HealthCheckHttpVersion"] = self.healthCheckHttpVersion!
        }
        if self.healthCheckInterval != nil {
            map["HealthCheckInterval"] = self.healthCheckInterval!
        }
        if self.healthCheckMethod != nil {
            map["HealthCheckMethod"] = self.healthCheckMethod!
        }
        if self.healthCheckPath != nil {
            map["HealthCheckPath"] = self.healthCheckPath!
        }
        if self.healthCheckProtocol != nil {
            map["HealthCheckProtocol"] = self.healthCheckProtocol!
        }
        if self.healthCheckTemplateId != nil {
            map["HealthCheckTemplateId"] = self.healthCheckTemplateId!
        }
        if self.healthCheckTemplateName != nil {
            map["HealthCheckTemplateName"] = self.healthCheckTemplateName!
        }
        if self.healthCheckTimeout != nil {
            map["HealthCheckTimeout"] = self.healthCheckTimeout!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HealthCheckCodes"] as? [String] {
            self.healthCheckCodes = value
        }
        if let value = dict["HealthCheckConnectPort"] as? Int32 {
            self.healthCheckConnectPort = value
        }
        if let value = dict["HealthCheckHost"] as? String {
            self.healthCheckHost = value
        }
        if let value = dict["HealthCheckHttpVersion"] as? String {
            self.healthCheckHttpVersion = value
        }
        if let value = dict["HealthCheckInterval"] as? Int32 {
            self.healthCheckInterval = value
        }
        if let value = dict["HealthCheckMethod"] as? String {
            self.healthCheckMethod = value
        }
        if let value = dict["HealthCheckPath"] as? String {
            self.healthCheckPath = value
        }
        if let value = dict["HealthCheckProtocol"] as? String {
            self.healthCheckProtocol = value
        }
        if let value = dict["HealthCheckTemplateId"] as? String {
            self.healthCheckTemplateId = value
        }
        if let value = dict["HealthCheckTemplateName"] as? String {
            self.healthCheckTemplateName = value
        }
        if let value = dict["HealthCheckTimeout"] as? Int32 {
            self.healthCheckTimeout = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetHealthCheckTemplateAttributeResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetHealthCheckTemplateAttributeResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
    }
}

public class GetHealthCheckTemplateAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHealthCheckTemplateAttributeResponseBody?

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
            var model = GetHealthCheckTemplateAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetListenerAttributeRequest : Tea.TeaModel {
    public var listenerId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerId"] as? String {
            self.listenerId = value
        }
    }
}

public class GetListenerAttributeResponseBody : Tea.TeaModel {
    public class AclConfig : Tea.TeaModel {
        public class AclRelations : Tea.TeaModel {
            public var aclId: String?

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
                if self.aclId != nil {
                    map["AclId"] = self.aclId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AclId"] as? String {
                    self.aclId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var aclRelations: [GetListenerAttributeResponseBody.AclConfig.AclRelations]?

        public var aclType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclRelations != nil {
                var tmp : [Any] = []
                for k in self.aclRelations! {
                    tmp.append(k.toMap())
                }
                map["AclRelations"] = tmp
            }
            if self.aclType != nil {
                map["AclType"] = self.aclType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclRelations"] as? [Any?] {
                var tmp : [GetListenerAttributeResponseBody.AclConfig.AclRelations] = []
                for v in value {
                    if v != nil {
                        var model = GetListenerAttributeResponseBody.AclConfig.AclRelations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.aclRelations = tmp
            }
            if let value = dict["AclType"] as? String {
                self.aclType = value
            }
        }
    }
    public class CaCertificates : Tea.TeaModel {
        public var certificateId: String?

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
            if let value = dict["IsDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public class Certificates : Tea.TeaModel {
        public var certificateId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertificateId"] as? String {
                self.certificateId = value
            }
        }
    }
    public class DefaultActions : Tea.TeaModel {
        public class ForwardGroupConfig : Tea.TeaModel {
            public class ServerGroupTuples : Tea.TeaModel {
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
                    if self.serverGroupId != nil {
                        map["ServerGroupId"] = self.serverGroupId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ServerGroupId"] as? String {
                        self.serverGroupId = value
                    }
                }
            }
            public var serverGroupTuples: [GetListenerAttributeResponseBody.DefaultActions.ForwardGroupConfig.ServerGroupTuples]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.serverGroupTuples != nil {
                    var tmp : [Any] = []
                    for k in self.serverGroupTuples! {
                        tmp.append(k.toMap())
                    }
                    map["ServerGroupTuples"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ServerGroupTuples"] as? [Any?] {
                    var tmp : [GetListenerAttributeResponseBody.DefaultActions.ForwardGroupConfig.ServerGroupTuples] = []
                    for v in value {
                        if v != nil {
                            var model = GetListenerAttributeResponseBody.DefaultActions.ForwardGroupConfig.ServerGroupTuples()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.serverGroupTuples = tmp
                }
            }
        }
        public var forwardGroupConfig: GetListenerAttributeResponseBody.DefaultActions.ForwardGroupConfig?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.forwardGroupConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.forwardGroupConfig != nil {
                map["ForwardGroupConfig"] = self.forwardGroupConfig?.toMap()
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ForwardGroupConfig"] as? [String: Any?] {
                var model = GetListenerAttributeResponseBody.DefaultActions.ForwardGroupConfig()
                model.fromMap(value)
                self.forwardGroupConfig = model
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class LogConfig : Tea.TeaModel {
        public class AccessLogTracingConfig : Tea.TeaModel {
            public var tracingEnabled: Bool?

            public var tracingSample: Int32?

            public var tracingType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tracingEnabled != nil {
                    map["TracingEnabled"] = self.tracingEnabled!
                }
                if self.tracingSample != nil {
                    map["TracingSample"] = self.tracingSample!
                }
                if self.tracingType != nil {
                    map["TracingType"] = self.tracingType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TracingEnabled"] as? Bool {
                    self.tracingEnabled = value
                }
                if let value = dict["TracingSample"] as? Int32 {
                    self.tracingSample = value
                }
                if let value = dict["TracingType"] as? String {
                    self.tracingType = value
                }
            }
        }
        public var accessLogRecordCustomizedHeadersEnabled: Bool?

        public var accessLogTracingConfig: GetListenerAttributeResponseBody.LogConfig.AccessLogTracingConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.accessLogTracingConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessLogRecordCustomizedHeadersEnabled != nil {
                map["AccessLogRecordCustomizedHeadersEnabled"] = self.accessLogRecordCustomizedHeadersEnabled!
            }
            if self.accessLogTracingConfig != nil {
                map["AccessLogTracingConfig"] = self.accessLogTracingConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessLogRecordCustomizedHeadersEnabled"] as? Bool {
                self.accessLogRecordCustomizedHeadersEnabled = value
            }
            if let value = dict["AccessLogTracingConfig"] as? [String: Any?] {
                var model = GetListenerAttributeResponseBody.LogConfig.AccessLogTracingConfig()
                model.fromMap(value)
                self.accessLogTracingConfig = model
            }
        }
    }
    public class QuicConfig : Tea.TeaModel {
        public var quicListenerId: String?

        public var quicUpgradeEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.quicListenerId != nil {
                map["QuicListenerId"] = self.quicListenerId!
            }
            if self.quicUpgradeEnabled != nil {
                map["QuicUpgradeEnabled"] = self.quicUpgradeEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["QuicListenerId"] as? String {
                self.quicListenerId = value
            }
            if let value = dict["QuicUpgradeEnabled"] as? Bool {
                self.quicUpgradeEnabled = value
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
    public class XForwardedForConfig : Tea.TeaModel {
        public var XForwardedForClientCertClientVerifyAlias: String?

        public var XForwardedForClientCertClientVerifyEnabled: Bool?

        public var XForwardedForClientCertFingerprintAlias: String?

        public var XForwardedForClientCertFingerprintEnabled: Bool?

        public var XForwardedForClientCertIssuerDNAlias: String?

        public var XForwardedForClientCertIssuerDNEnabled: Bool?

        public var XForwardedForClientCertSubjectDNAlias: String?

        public var XForwardedForClientCertSubjectDNEnabled: Bool?

        public var XForwardedForClientSourceIpsEnabled: Bool?

        public var XForwardedForClientSourceIpsTrusted: String?

        public var XForwardedForClientSrcPortEnabled: Bool?

        public var XForwardedForEnabled: Bool?

        public var XForwardedForHostEnabled: Bool?

        public var XForwardedForProcessingMode: String?

        public var XForwardedForProtoEnabled: Bool?

        public var XForwardedForSLBIdEnabled: Bool?

        public var XForwardedForSLBPortEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.XForwardedForClientCertClientVerifyAlias != nil {
                map["XForwardedForClientCertClientVerifyAlias"] = self.XForwardedForClientCertClientVerifyAlias!
            }
            if self.XForwardedForClientCertClientVerifyEnabled != nil {
                map["XForwardedForClientCertClientVerifyEnabled"] = self.XForwardedForClientCertClientVerifyEnabled!
            }
            if self.XForwardedForClientCertFingerprintAlias != nil {
                map["XForwardedForClientCertFingerprintAlias"] = self.XForwardedForClientCertFingerprintAlias!
            }
            if self.XForwardedForClientCertFingerprintEnabled != nil {
                map["XForwardedForClientCertFingerprintEnabled"] = self.XForwardedForClientCertFingerprintEnabled!
            }
            if self.XForwardedForClientCertIssuerDNAlias != nil {
                map["XForwardedForClientCertIssuerDNAlias"] = self.XForwardedForClientCertIssuerDNAlias!
            }
            if self.XForwardedForClientCertIssuerDNEnabled != nil {
                map["XForwardedForClientCertIssuerDNEnabled"] = self.XForwardedForClientCertIssuerDNEnabled!
            }
            if self.XForwardedForClientCertSubjectDNAlias != nil {
                map["XForwardedForClientCertSubjectDNAlias"] = self.XForwardedForClientCertSubjectDNAlias!
            }
            if self.XForwardedForClientCertSubjectDNEnabled != nil {
                map["XForwardedForClientCertSubjectDNEnabled"] = self.XForwardedForClientCertSubjectDNEnabled!
            }
            if self.XForwardedForClientSourceIpsEnabled != nil {
                map["XForwardedForClientSourceIpsEnabled"] = self.XForwardedForClientSourceIpsEnabled!
            }
            if self.XForwardedForClientSourceIpsTrusted != nil {
                map["XForwardedForClientSourceIpsTrusted"] = self.XForwardedForClientSourceIpsTrusted!
            }
            if self.XForwardedForClientSrcPortEnabled != nil {
                map["XForwardedForClientSrcPortEnabled"] = self.XForwardedForClientSrcPortEnabled!
            }
            if self.XForwardedForEnabled != nil {
                map["XForwardedForEnabled"] = self.XForwardedForEnabled!
            }
            if self.XForwardedForHostEnabled != nil {
                map["XForwardedForHostEnabled"] = self.XForwardedForHostEnabled!
            }
            if self.XForwardedForProcessingMode != nil {
                map["XForwardedForProcessingMode"] = self.XForwardedForProcessingMode!
            }
            if self.XForwardedForProtoEnabled != nil {
                map["XForwardedForProtoEnabled"] = self.XForwardedForProtoEnabled!
            }
            if self.XForwardedForSLBIdEnabled != nil {
                map["XForwardedForSLBIdEnabled"] = self.XForwardedForSLBIdEnabled!
            }
            if self.XForwardedForSLBPortEnabled != nil {
                map["XForwardedForSLBPortEnabled"] = self.XForwardedForSLBPortEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["XForwardedForClientCertClientVerifyAlias"] as? String {
                self.XForwardedForClientCertClientVerifyAlias = value
            }
            if let value = dict["XForwardedForClientCertClientVerifyEnabled"] as? Bool {
                self.XForwardedForClientCertClientVerifyEnabled = value
            }
            if let value = dict["XForwardedForClientCertFingerprintAlias"] as? String {
                self.XForwardedForClientCertFingerprintAlias = value
            }
            if let value = dict["XForwardedForClientCertFingerprintEnabled"] as? Bool {
                self.XForwardedForClientCertFingerprintEnabled = value
            }
            if let value = dict["XForwardedForClientCertIssuerDNAlias"] as? String {
                self.XForwardedForClientCertIssuerDNAlias = value
            }
            if let value = dict["XForwardedForClientCertIssuerDNEnabled"] as? Bool {
                self.XForwardedForClientCertIssuerDNEnabled = value
            }
            if let value = dict["XForwardedForClientCertSubjectDNAlias"] as? String {
                self.XForwardedForClientCertSubjectDNAlias = value
            }
            if let value = dict["XForwardedForClientCertSubjectDNEnabled"] as? Bool {
                self.XForwardedForClientCertSubjectDNEnabled = value
            }
            if let value = dict["XForwardedForClientSourceIpsEnabled"] as? Bool {
                self.XForwardedForClientSourceIpsEnabled = value
            }
            if let value = dict["XForwardedForClientSourceIpsTrusted"] as? String {
                self.XForwardedForClientSourceIpsTrusted = value
            }
            if let value = dict["XForwardedForClientSrcPortEnabled"] as? Bool {
                self.XForwardedForClientSrcPortEnabled = value
            }
            if let value = dict["XForwardedForEnabled"] as? Bool {
                self.XForwardedForEnabled = value
            }
            if let value = dict["XForwardedForHostEnabled"] as? Bool {
                self.XForwardedForHostEnabled = value
            }
            if let value = dict["XForwardedForProcessingMode"] as? String {
                self.XForwardedForProcessingMode = value
            }
            if let value = dict["XForwardedForProtoEnabled"] as? Bool {
                self.XForwardedForProtoEnabled = value
            }
            if let value = dict["XForwardedForSLBIdEnabled"] as? Bool {
                self.XForwardedForSLBIdEnabled = value
            }
            if let value = dict["XForwardedForSLBPortEnabled"] as? Bool {
                self.XForwardedForSLBPortEnabled = value
            }
        }
    }
    public var aclConfig: GetListenerAttributeResponseBody.AclConfig?

    public var caCertificates: [GetListenerAttributeResponseBody.CaCertificates]?

    public var caEnabled: Bool?

    public var certificates: [GetListenerAttributeResponseBody.Certificates]?

    public var defaultActions: [GetListenerAttributeResponseBody.DefaultActions]?

    public var gzipEnabled: Bool?

    public var http2Enabled: Bool?

    public var idleTimeout: Int32?

    public var listenerDescription: String?

    public var listenerId: String?

    public var listenerPort: Int32?

    public var listenerProtocol: String?

    public var listenerStatus: String?

    public var loadBalancerId: String?

    public var logConfig: GetListenerAttributeResponseBody.LogConfig?

    public var quicConfig: GetListenerAttributeResponseBody.QuicConfig?

    public var requestId: String?

    public var requestTimeout: Int32?

    public var securityPolicyId: String?

    public var tags: [GetListenerAttributeResponseBody.Tags]?

    public var XForwardedForConfig: GetListenerAttributeResponseBody.XForwardedForConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.aclConfig?.validate()
        try self.logConfig?.validate()
        try self.quicConfig?.validate()
        try self.XForwardedForConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclConfig != nil {
            map["AclConfig"] = self.aclConfig?.toMap()
        }
        if self.caCertificates != nil {
            var tmp : [Any] = []
            for k in self.caCertificates! {
                tmp.append(k.toMap())
            }
            map["CaCertificates"] = tmp
        }
        if self.caEnabled != nil {
            map["CaEnabled"] = self.caEnabled!
        }
        if self.certificates != nil {
            var tmp : [Any] = []
            for k in self.certificates! {
                tmp.append(k.toMap())
            }
            map["Certificates"] = tmp
        }
        if self.defaultActions != nil {
            var tmp : [Any] = []
            for k in self.defaultActions! {
                tmp.append(k.toMap())
            }
            map["DefaultActions"] = tmp
        }
        if self.gzipEnabled != nil {
            map["GzipEnabled"] = self.gzipEnabled!
        }
        if self.http2Enabled != nil {
            map["Http2Enabled"] = self.http2Enabled!
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
        if self.logConfig != nil {
            map["LogConfig"] = self.logConfig?.toMap()
        }
        if self.quicConfig != nil {
            map["QuicConfig"] = self.quicConfig?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.requestTimeout != nil {
            map["RequestTimeout"] = self.requestTimeout!
        }
        if self.securityPolicyId != nil {
            map["SecurityPolicyId"] = self.securityPolicyId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.XForwardedForConfig != nil {
            map["XForwardedForConfig"] = self.XForwardedForConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclConfig"] as? [String: Any?] {
            var model = GetListenerAttributeResponseBody.AclConfig()
            model.fromMap(value)
            self.aclConfig = model
        }
        if let value = dict["CaCertificates"] as? [Any?] {
            var tmp : [GetListenerAttributeResponseBody.CaCertificates] = []
            for v in value {
                if v != nil {
                    var model = GetListenerAttributeResponseBody.CaCertificates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.caCertificates = tmp
        }
        if let value = dict["CaEnabled"] as? Bool {
            self.caEnabled = value
        }
        if let value = dict["Certificates"] as? [Any?] {
            var tmp : [GetListenerAttributeResponseBody.Certificates] = []
            for v in value {
                if v != nil {
                    var model = GetListenerAttributeResponseBody.Certificates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.certificates = tmp
        }
        if let value = dict["DefaultActions"] as? [Any?] {
            var tmp : [GetListenerAttributeResponseBody.DefaultActions] = []
            for v in value {
                if v != nil {
                    var model = GetListenerAttributeResponseBody.DefaultActions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.defaultActions = tmp
        }
        if let value = dict["GzipEnabled"] as? Bool {
            self.gzipEnabled = value
        }
        if let value = dict["Http2Enabled"] as? Bool {
            self.http2Enabled = value
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
        if let value = dict["LogConfig"] as? [String: Any?] {
            var model = GetListenerAttributeResponseBody.LogConfig()
            model.fromMap(value)
            self.logConfig = model
        }
        if let value = dict["QuicConfig"] as? [String: Any?] {
            var model = GetListenerAttributeResponseBody.QuicConfig()
            model.fromMap(value)
            self.quicConfig = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RequestTimeout"] as? Int32 {
            self.requestTimeout = value
        }
        if let value = dict["SecurityPolicyId"] as? String {
            self.securityPolicyId = value
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
        if let value = dict["XForwardedForConfig"] as? [String: Any?] {
            var model = GetListenerAttributeResponseBody.XForwardedForConfig()
            model.fromMap(value)
            self.XForwardedForConfig = model
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
    public var includeRule: Bool?

    public var listenerId: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.includeRule != nil {
            map["IncludeRule"] = self.includeRule!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IncludeRule"] as? Bool {
            self.includeRule = value
        }
        if let value = dict["ListenerId"] as? String {
            self.listenerId = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class GetListenerHealthStatusResponseBody : Tea.TeaModel {
    public class ListenerHealthStatus : Tea.TeaModel {
        public class ServerGroupInfos : Tea.TeaModel {
            public class NonNormalServers : Tea.TeaModel {
                public class Reason : Tea.TeaModel {
                    public var actualResponse: String?

                    public var expectedResponse: String?

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
                        if self.actualResponse != nil {
                            map["ActualResponse"] = self.actualResponse!
                        }
                        if self.expectedResponse != nil {
                            map["ExpectedResponse"] = self.expectedResponse!
                        }
                        if self.reasonCode != nil {
                            map["ReasonCode"] = self.reasonCode!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ActualResponse"] as? String {
                            self.actualResponse = value
                        }
                        if let value = dict["ExpectedResponse"] as? String {
                            self.expectedResponse = value
                        }
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
            public var actionType: String?

            public var healthCheckEnabled: String?

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
                if self.actionType != nil {
                    map["ActionType"] = self.actionType!
                }
                if self.healthCheckEnabled != nil {
                    map["HealthCheckEnabled"] = self.healthCheckEnabled!
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
                if let value = dict["ActionType"] as? String {
                    self.actionType = value
                }
                if let value = dict["HealthCheckEnabled"] as? String {
                    self.healthCheckEnabled = value
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
    public class RuleHealthStatus : Tea.TeaModel {
        public class ServerGroupInfos : Tea.TeaModel {
            public class NonNormalServers : Tea.TeaModel {
                public class Reason : Tea.TeaModel {
                    public var actualResponse: String?

                    public var expectedResponse: String?

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
                        if self.actualResponse != nil {
                            map["ActualResponse"] = self.actualResponse!
                        }
                        if self.expectedResponse != nil {
                            map["ExpectedResponse"] = self.expectedResponse!
                        }
                        if self.reasonCode != nil {
                            map["ReasonCode"] = self.reasonCode!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ActualResponse"] as? String {
                            self.actualResponse = value
                        }
                        if let value = dict["ExpectedResponse"] as? String {
                            self.expectedResponse = value
                        }
                        if let value = dict["ReasonCode"] as? String {
                            self.reasonCode = value
                        }
                    }
                }
                public var port: Int32?

                public var reason: GetListenerHealthStatusResponseBody.RuleHealthStatus.ServerGroupInfos.NonNormalServers.Reason?

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
                        var model = GetListenerHealthStatusResponseBody.RuleHealthStatus.ServerGroupInfos.NonNormalServers.Reason()
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
            public var actionType: String?

            public var healthCheckEnabled: String?

            public var nonNormalServers: [GetListenerHealthStatusResponseBody.RuleHealthStatus.ServerGroupInfos.NonNormalServers]?

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
                if self.actionType != nil {
                    map["ActionType"] = self.actionType!
                }
                if self.healthCheckEnabled != nil {
                    map["HealthCheckEnabled"] = self.healthCheckEnabled!
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
                if let value = dict["ActionType"] as? String {
                    self.actionType = value
                }
                if let value = dict["HealthCheckEnabled"] as? String {
                    self.healthCheckEnabled = value
                }
                if let value = dict["NonNormalServers"] as? [Any?] {
                    var tmp : [GetListenerHealthStatusResponseBody.RuleHealthStatus.ServerGroupInfos.NonNormalServers] = []
                    for v in value {
                        if v != nil {
                            var model = GetListenerHealthStatusResponseBody.RuleHealthStatus.ServerGroupInfos.NonNormalServers()
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
        public var ruleId: String?

        public var serverGroupInfos: [GetListenerHealthStatusResponseBody.RuleHealthStatus.ServerGroupInfos]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
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
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["ServerGroupInfos"] as? [Any?] {
                var tmp : [GetListenerHealthStatusResponseBody.RuleHealthStatus.ServerGroupInfos] = []
                for v in value {
                    if v != nil {
                        var model = GetListenerHealthStatusResponseBody.RuleHealthStatus.ServerGroupInfos()
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

    public var nextToken: String?

    public var requestId: String?

    public var ruleHealthStatus: [GetListenerHealthStatusResponseBody.RuleHealthStatus]?

    public override init() {
        super.init()
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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.ruleHealthStatus != nil {
            var tmp : [Any] = []
            for k in self.ruleHealthStatus! {
                tmp.append(k.toMap())
            }
            map["RuleHealthStatus"] = tmp
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
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RuleHealthStatus"] as? [Any?] {
            var tmp : [GetListenerHealthStatusResponseBody.RuleHealthStatus] = []
            for v in value {
                if v != nil {
                    var model = GetListenerHealthStatusResponseBody.RuleHealthStatus()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ruleHealthStatus = tmp
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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
    }
}

public class GetLoadBalancerAttributeResponseBody : Tea.TeaModel {
    public class AccessLogConfig : Tea.TeaModel {
        public var logProject: String?

        public var logStore: String?

        public override init() {
            super.init()
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
            if self.logStore != nil {
                map["LogStore"] = self.logStore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LogProject"] as? String {
                self.logProject = value
            }
            if let value = dict["LogStore"] as? String {
                self.logStore = value
            }
        }
    }
    public class DeletionProtectionConfig : Tea.TeaModel {
        public var enabled: Bool?

        public var enabledTime: String?

        public override init() {
            super.init()
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
    public class LoadBalancerOperationLocks : Tea.TeaModel {
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
            public var address: String?

            public var allocationId: String?

            public var eipType: String?

            public var intranetAddress: String?

            public var intranetAddressHcStatus: String?

            public var ipv4LocalAddresses: [String]?

            public var ipv6Address: String?

            public var ipv6AddressHcStatus: String?

            public var ipv6LocalAddresses: [String]?

            public override init() {
                super.init()
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
                if self.allocationId != nil {
                    map["AllocationId"] = self.allocationId!
                }
                if self.eipType != nil {
                    map["EipType"] = self.eipType!
                }
                if self.intranetAddress != nil {
                    map["IntranetAddress"] = self.intranetAddress!
                }
                if self.intranetAddressHcStatus != nil {
                    map["IntranetAddressHcStatus"] = self.intranetAddressHcStatus!
                }
                if self.ipv4LocalAddresses != nil {
                    map["Ipv4LocalAddresses"] = self.ipv4LocalAddresses!
                }
                if self.ipv6Address != nil {
                    map["Ipv6Address"] = self.ipv6Address!
                }
                if self.ipv6AddressHcStatus != nil {
                    map["Ipv6AddressHcStatus"] = self.ipv6AddressHcStatus!
                }
                if self.ipv6LocalAddresses != nil {
                    map["Ipv6LocalAddresses"] = self.ipv6LocalAddresses!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Address"] as? String {
                    self.address = value
                }
                if let value = dict["AllocationId"] as? String {
                    self.allocationId = value
                }
                if let value = dict["EipType"] as? String {
                    self.eipType = value
                }
                if let value = dict["IntranetAddress"] as? String {
                    self.intranetAddress = value
                }
                if let value = dict["IntranetAddressHcStatus"] as? String {
                    self.intranetAddressHcStatus = value
                }
                if let value = dict["Ipv4LocalAddresses"] as? [String] {
                    self.ipv4LocalAddresses = value
                }
                if let value = dict["Ipv6Address"] as? String {
                    self.ipv6Address = value
                }
                if let value = dict["Ipv6AddressHcStatus"] as? String {
                    self.ipv6AddressHcStatus = value
                }
                if let value = dict["Ipv6LocalAddresses"] as? [String] {
                    self.ipv6LocalAddresses = value
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
    public var accessLogConfig: GetLoadBalancerAttributeResponseBody.AccessLogConfig?

    public var addressAllocatedMode: String?

    public var addressIpVersion: String?

    public var addressType: String?

    public var bandwidthPackageId: String?

    public var createTime: String?

    public var DNSName: String?

    public var deletionProtectionConfig: GetLoadBalancerAttributeResponseBody.DeletionProtectionConfig?

    public var ipv6AddressType: String?

    public var loadBalancerBillingConfig: GetLoadBalancerAttributeResponseBody.LoadBalancerBillingConfig?

    public var loadBalancerBussinessStatus: String?

    public var loadBalancerEdition: String?

    public var loadBalancerId: String?

    public var loadBalancerName: String?

    public var loadBalancerOperationLocks: [GetLoadBalancerAttributeResponseBody.LoadBalancerOperationLocks]?

    public var loadBalancerStatus: String?

    public var modificationProtectionConfig: GetLoadBalancerAttributeResponseBody.ModificationProtectionConfig?

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
        try self.accessLogConfig?.validate()
        try self.deletionProtectionConfig?.validate()
        try self.loadBalancerBillingConfig?.validate()
        try self.modificationProtectionConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessLogConfig != nil {
            map["AccessLogConfig"] = self.accessLogConfig?.toMap()
        }
        if self.addressAllocatedMode != nil {
            map["AddressAllocatedMode"] = self.addressAllocatedMode!
        }
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
        if self.loadBalancerBussinessStatus != nil {
            map["LoadBalancerBussinessStatus"] = self.loadBalancerBussinessStatus!
        }
        if self.loadBalancerEdition != nil {
            map["LoadBalancerEdition"] = self.loadBalancerEdition!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.loadBalancerName != nil {
            map["LoadBalancerName"] = self.loadBalancerName!
        }
        if self.loadBalancerOperationLocks != nil {
            var tmp : [Any] = []
            for k in self.loadBalancerOperationLocks! {
                tmp.append(k.toMap())
            }
            map["LoadBalancerOperationLocks"] = tmp
        }
        if self.loadBalancerStatus != nil {
            map["LoadBalancerStatus"] = self.loadBalancerStatus!
        }
        if self.modificationProtectionConfig != nil {
            map["ModificationProtectionConfig"] = self.modificationProtectionConfig?.toMap()
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
        if let value = dict["AccessLogConfig"] as? [String: Any?] {
            var model = GetLoadBalancerAttributeResponseBody.AccessLogConfig()
            model.fromMap(value)
            self.accessLogConfig = model
        }
        if let value = dict["AddressAllocatedMode"] as? String {
            self.addressAllocatedMode = value
        }
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
        if let value = dict["LoadBalancerBussinessStatus"] as? String {
            self.loadBalancerBussinessStatus = value
        }
        if let value = dict["LoadBalancerEdition"] as? String {
            self.loadBalancerEdition = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["LoadBalancerName"] as? String {
            self.loadBalancerName = value
        }
        if let value = dict["LoadBalancerOperationLocks"] as? [Any?] {
            var tmp : [GetLoadBalancerAttributeResponseBody.LoadBalancerOperationLocks] = []
            for v in value {
                if v != nil {
                    var model = GetLoadBalancerAttributeResponseBody.LoadBalancerOperationLocks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.loadBalancerOperationLocks = tmp
        }
        if let value = dict["LoadBalancerStatus"] as? String {
            self.loadBalancerStatus = value
        }
        if let value = dict["ModificationProtectionConfig"] as? [String: Any?] {
            var model = GetLoadBalancerAttributeResponseBody.ModificationProtectionConfig()
            model.fromMap(value)
            self.modificationProtectionConfig = model
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

public class ListAScriptsRequest : Tea.TeaModel {
    public var AScriptIds: [String]?

    public var AScriptNames: [String]?

    public var listenerIds: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.AScriptIds != nil {
            map["AScriptIds"] = self.AScriptIds!
        }
        if self.AScriptNames != nil {
            map["AScriptNames"] = self.AScriptNames!
        }
        if self.listenerIds != nil {
            map["ListenerIds"] = self.listenerIds!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AScriptIds"] as? [String] {
            self.AScriptIds = value
        }
        if let value = dict["AScriptNames"] as? [String] {
            self.AScriptNames = value
        }
        if let value = dict["ListenerIds"] as? [String] {
            self.listenerIds = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListAScriptsResponseBody : Tea.TeaModel {
    public class AScripts : Tea.TeaModel {
        public var AScriptId: String?

        public var AScriptName: String?

        public var AScriptStatus: String?

        public var enabled: Bool?

        public var listenerId: String?

        public var loadBalancerId: String?

        public var scriptContent: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.AScriptId != nil {
                map["AScriptId"] = self.AScriptId!
            }
            if self.AScriptName != nil {
                map["AScriptName"] = self.AScriptName!
            }
            if self.AScriptStatus != nil {
                map["AScriptStatus"] = self.AScriptStatus!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.listenerId != nil {
                map["ListenerId"] = self.listenerId!
            }
            if self.loadBalancerId != nil {
                map["LoadBalancerId"] = self.loadBalancerId!
            }
            if self.scriptContent != nil {
                map["ScriptContent"] = self.scriptContent!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AScriptId"] as? String {
                self.AScriptId = value
            }
            if let value = dict["AScriptName"] as? String {
                self.AScriptName = value
            }
            if let value = dict["AScriptStatus"] as? String {
                self.AScriptStatus = value
            }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["ListenerId"] as? String {
                self.listenerId = value
            }
            if let value = dict["LoadBalancerId"] as? String {
                self.loadBalancerId = value
            }
            if let value = dict["ScriptContent"] as? String {
                self.scriptContent = value
            }
        }
    }
    public var AScripts: [ListAScriptsResponseBody.AScripts]?

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
        if self.AScripts != nil {
            var tmp : [Any] = []
            for k in self.AScripts! {
                tmp.append(k.toMap())
            }
            map["AScripts"] = tmp
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
        if let value = dict["AScripts"] as? [Any?] {
            var tmp : [ListAScriptsResponseBody.AScripts] = []
            for v in value {
                if v != nil {
                    var model = ListAScriptsResponseBody.AScripts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.AScripts = tmp
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

public class ListAScriptsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAScriptsResponseBody?

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
            var model = ListAScriptsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAclEntriesRequest : Tea.TeaModel {
    public var aclId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListAclEntriesResponseBody : Tea.TeaModel {
    public class AclEntries : Tea.TeaModel {
        public var description_: String?

        public var entry: String?

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
            if self.entry != nil {
                map["Entry"] = self.entry!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Entry"] as? String {
                self.entry = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var aclEntries: [ListAclEntriesResponseBody.AclEntries]?

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
        if self.aclEntries != nil {
            var tmp : [Any] = []
            for k in self.aclEntries! {
                tmp.append(k.toMap())
            }
            map["AclEntries"] = tmp
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
        if let value = dict["AclEntries"] as? [Any?] {
            var tmp : [ListAclEntriesResponseBody.AclEntries] = []
            for v in value {
                if v != nil {
                    var model = ListAclEntriesResponseBody.AclEntries()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.aclEntries = tmp
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

public class ListAclEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAclEntriesResponseBody?

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
            var model = ListAclEntriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAclRelationsRequest : Tea.TeaModel {
    public var aclIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclIds != nil {
            map["AclIds"] = self.aclIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclIds"] as? [String] {
            self.aclIds = value
        }
    }
}

public class ListAclRelationsResponseBody : Tea.TeaModel {
    public class AclRelations : Tea.TeaModel {
        public class RelatedListeners : Tea.TeaModel {
            public var listenerId: String?

            public var listenerPort: Int32?

            public var listenerProtocol: String?

            public var loadBalancerId: String?

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
                if self.status != nil {
                    map["Status"] = self.status!
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
                if let value = dict["LoadBalancerId"] as? String {
                    self.loadBalancerId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var aclId: String?

        public var relatedListeners: [ListAclRelationsResponseBody.AclRelations.RelatedListeners]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclId != nil {
                map["AclId"] = self.aclId!
            }
            if self.relatedListeners != nil {
                var tmp : [Any] = []
                for k in self.relatedListeners! {
                    tmp.append(k.toMap())
                }
                map["RelatedListeners"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclId"] as? String {
                self.aclId = value
            }
            if let value = dict["RelatedListeners"] as? [Any?] {
                var tmp : [ListAclRelationsResponseBody.AclRelations.RelatedListeners] = []
                for v in value {
                    if v != nil {
                        var model = ListAclRelationsResponseBody.AclRelations.RelatedListeners()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.relatedListeners = tmp
            }
        }
    }
    public var aclRelations: [ListAclRelationsResponseBody.AclRelations]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclRelations != nil {
            var tmp : [Any] = []
            for k in self.aclRelations! {
                tmp.append(k.toMap())
            }
            map["AclRelations"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclRelations"] as? [Any?] {
            var tmp : [ListAclRelationsResponseBody.AclRelations] = []
            for v in value {
                if v != nil {
                    var model = ListAclRelationsResponseBody.AclRelations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.aclRelations = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAclRelationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAclRelationsResponseBody?

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
            var model = ListAclRelationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAclsRequest : Tea.TeaModel {
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
    public var aclIds: [String]?

    public var aclNames: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceGroupId: String?

    public var tag: [ListAclsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclIds != nil {
            map["AclIds"] = self.aclIds!
        }
        if self.aclNames != nil {
            map["AclNames"] = self.aclNames!
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
        if let value = dict["AclIds"] as? [String] {
            self.aclIds = value
        }
        if let value = dict["AclNames"] as? [String] {
            self.aclNames = value
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
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListAclsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListAclsRequest.Tag()
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

public class ListAclsResponseBody : Tea.TeaModel {
    public class Acls : Tea.TeaModel {
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
        public var aclId: String?

        public var aclName: String?

        public var aclStatus: String?

        public var addressIPVersion: String?

        public var configManagedEnabled: Bool?

        public var createTime: String?

        public var resourceGroupId: String?

        public var tags: [ListAclsResponseBody.Acls.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclId != nil {
                map["AclId"] = self.aclId!
            }
            if self.aclName != nil {
                map["AclName"] = self.aclName!
            }
            if self.aclStatus != nil {
                map["AclStatus"] = self.aclStatus!
            }
            if self.addressIPVersion != nil {
                map["AddressIPVersion"] = self.addressIPVersion!
            }
            if self.configManagedEnabled != nil {
                map["ConfigManagedEnabled"] = self.configManagedEnabled!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
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
            if let value = dict["AclId"] as? String {
                self.aclId = value
            }
            if let value = dict["AclName"] as? String {
                self.aclName = value
            }
            if let value = dict["AclStatus"] as? String {
                self.aclStatus = value
            }
            if let value = dict["AddressIPVersion"] as? String {
                self.addressIPVersion = value
            }
            if let value = dict["ConfigManagedEnabled"] as? Bool {
                self.configManagedEnabled = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListAclsResponseBody.Acls.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListAclsResponseBody.Acls.Tags()
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
    public var acls: [ListAclsResponseBody.Acls]?

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
        if self.acls != nil {
            var tmp : [Any] = []
            for k in self.acls! {
                tmp.append(k.toMap())
            }
            map["Acls"] = tmp
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
        if let value = dict["Acls"] as? [Any?] {
            var tmp : [ListAclsResponseBody.Acls] = []
            for v in value {
                if v != nil {
                    var model = ListAclsResponseBody.Acls()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.acls = tmp
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

public class ListAclsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAclsResponseBody?

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
            var model = ListAclsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAsynJobsRequest : Tea.TeaModel {
    public var apiName: String?

    public var beginTime: Int64?

    public var endTime: Int64?

    public var jobIds: [String]?

    public var maxResults: Int64?

    public var nextToken: String?

    public var resourceIds: [String]?

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
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.jobIds != nil {
            map["JobIds"] = self.jobIds!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiName"] as? String {
            self.apiName = value
        }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["JobIds"] as? [String] {
            self.jobIds = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceIds"] as? [String] {
            self.resourceIds = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ListAsynJobsResponseBody : Tea.TeaModel {
    public class Jobs : Tea.TeaModel {
        public var apiName: String?

        public var createTime: Int64?

        public var errorCode: String?

        public var errorMessage: String?

        public var id: String?

        public var modifyTime: Int64?

        public var operateType: String?

        public var resourceId: String?

        public var resourceType: String?

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
            if self.apiName != nil {
                map["ApiName"] = self.apiName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.operateType != nil {
                map["OperateType"] = self.operateType!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApiName"] as? String {
                self.apiName = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["ModifyTime"] as? Int64 {
                self.modifyTime = value
            }
            if let value = dict["OperateType"] as? String {
                self.operateType = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var jobs: [ListAsynJobsResponseBody.Jobs]?

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
        if self.jobs != nil {
            var tmp : [Any] = []
            for k in self.jobs! {
                tmp.append(k.toMap())
            }
            map["Jobs"] = tmp
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
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
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

public class ListHealthCheckTemplatesRequest : Tea.TeaModel {
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
    public var healthCheckTemplateIds: [String]?

    public var healthCheckTemplateNames: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceGroupId: String?

    public var tag: [ListHealthCheckTemplatesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.healthCheckTemplateIds != nil {
            map["HealthCheckTemplateIds"] = self.healthCheckTemplateIds!
        }
        if self.healthCheckTemplateNames != nil {
            map["HealthCheckTemplateNames"] = self.healthCheckTemplateNames!
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
        if let value = dict["HealthCheckTemplateIds"] as? [String] {
            self.healthCheckTemplateIds = value
        }
        if let value = dict["HealthCheckTemplateNames"] as? [String] {
            self.healthCheckTemplateNames = value
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
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListHealthCheckTemplatesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListHealthCheckTemplatesRequest.Tag()
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

public class ListHealthCheckTemplatesResponseBody : Tea.TeaModel {
    public class HealthCheckTemplates : Tea.TeaModel {
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
        public var healthCheckCodes: [String]?

        public var healthCheckConnectPort: Int32?

        public var healthCheckHost: String?

        public var healthCheckHttpVersion: String?

        public var healthCheckInterval: Int32?

        public var healthCheckMethod: String?

        public var healthCheckPath: String?

        public var healthCheckProtocol: String?

        public var healthCheckTemplateId: String?

        public var healthCheckTemplateName: String?

        public var healthCheckTimeout: Int32?

        public var healthyThreshold: Int32?

        public var resourceGroupId: String?

        public var tags: [ListHealthCheckTemplatesResponseBody.HealthCheckTemplates.Tags]?

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
            if self.healthCheckCodes != nil {
                map["HealthCheckCodes"] = self.healthCheckCodes!
            }
            if self.healthCheckConnectPort != nil {
                map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
            }
            if self.healthCheckHost != nil {
                map["HealthCheckHost"] = self.healthCheckHost!
            }
            if self.healthCheckHttpVersion != nil {
                map["HealthCheckHttpVersion"] = self.healthCheckHttpVersion!
            }
            if self.healthCheckInterval != nil {
                map["HealthCheckInterval"] = self.healthCheckInterval!
            }
            if self.healthCheckMethod != nil {
                map["HealthCheckMethod"] = self.healthCheckMethod!
            }
            if self.healthCheckPath != nil {
                map["HealthCheckPath"] = self.healthCheckPath!
            }
            if self.healthCheckProtocol != nil {
                map["HealthCheckProtocol"] = self.healthCheckProtocol!
            }
            if self.healthCheckTemplateId != nil {
                map["HealthCheckTemplateId"] = self.healthCheckTemplateId!
            }
            if self.healthCheckTemplateName != nil {
                map["HealthCheckTemplateName"] = self.healthCheckTemplateName!
            }
            if self.healthCheckTimeout != nil {
                map["HealthCheckTimeout"] = self.healthCheckTimeout!
            }
            if self.healthyThreshold != nil {
                map["HealthyThreshold"] = self.healthyThreshold!
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
            if self.unhealthyThreshold != nil {
                map["UnhealthyThreshold"] = self.unhealthyThreshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HealthCheckCodes"] as? [String] {
                self.healthCheckCodes = value
            }
            if let value = dict["HealthCheckConnectPort"] as? Int32 {
                self.healthCheckConnectPort = value
            }
            if let value = dict["HealthCheckHost"] as? String {
                self.healthCheckHost = value
            }
            if let value = dict["HealthCheckHttpVersion"] as? String {
                self.healthCheckHttpVersion = value
            }
            if let value = dict["HealthCheckInterval"] as? Int32 {
                self.healthCheckInterval = value
            }
            if let value = dict["HealthCheckMethod"] as? String {
                self.healthCheckMethod = value
            }
            if let value = dict["HealthCheckPath"] as? String {
                self.healthCheckPath = value
            }
            if let value = dict["HealthCheckProtocol"] as? String {
                self.healthCheckProtocol = value
            }
            if let value = dict["HealthCheckTemplateId"] as? String {
                self.healthCheckTemplateId = value
            }
            if let value = dict["HealthCheckTemplateName"] as? String {
                self.healthCheckTemplateName = value
            }
            if let value = dict["HealthCheckTimeout"] as? Int32 {
                self.healthCheckTimeout = value
            }
            if let value = dict["HealthyThreshold"] as? Int32 {
                self.healthyThreshold = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListHealthCheckTemplatesResponseBody.HealthCheckTemplates.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListHealthCheckTemplatesResponseBody.HealthCheckTemplates.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["UnhealthyThreshold"] as? Int32 {
                self.unhealthyThreshold = value
            }
        }
    }
    public var healthCheckTemplates: [ListHealthCheckTemplatesResponseBody.HealthCheckTemplates]?

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
        if self.healthCheckTemplates != nil {
            var tmp : [Any] = []
            for k in self.healthCheckTemplates! {
                tmp.append(k.toMap())
            }
            map["HealthCheckTemplates"] = tmp
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
        if let value = dict["HealthCheckTemplates"] as? [Any?] {
            var tmp : [ListHealthCheckTemplatesResponseBody.HealthCheckTemplates] = []
            for v in value {
                if v != nil {
                    var model = ListHealthCheckTemplatesResponseBody.HealthCheckTemplates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.healthCheckTemplates = tmp
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

public class ListHealthCheckTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHealthCheckTemplatesResponseBody?

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
            var model = ListHealthCheckTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListListenerCertificatesRequest : Tea.TeaModel {
    public var certificateIds: [String]?

    public var certificateType: String?

    public var listenerId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
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
        if self.certificateType != nil {
            map["CertificateType"] = self.certificateType!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateIds"] as? [String] {
            self.certificateIds = value
        }
        if let value = dict["CertificateType"] as? String {
            self.certificateType = value
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
        public class DefaultActions : Tea.TeaModel {
            public class ForwardGroupConfig : Tea.TeaModel {
                public class ServerGroupTuples : Tea.TeaModel {
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
                        if self.serverGroupId != nil {
                            map["ServerGroupId"] = self.serverGroupId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ServerGroupId"] as? String {
                            self.serverGroupId = value
                        }
                    }
                }
                public var serverGroupTuples: [ListListenersResponseBody.Listeners.DefaultActions.ForwardGroupConfig.ServerGroupTuples]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.serverGroupTuples != nil {
                        var tmp : [Any] = []
                        for k in self.serverGroupTuples! {
                            tmp.append(k.toMap())
                        }
                        map["ServerGroupTuples"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ServerGroupTuples"] as? [Any?] {
                        var tmp : [ListListenersResponseBody.Listeners.DefaultActions.ForwardGroupConfig.ServerGroupTuples] = []
                        for v in value {
                            if v != nil {
                                var model = ListListenersResponseBody.Listeners.DefaultActions.ForwardGroupConfig.ServerGroupTuples()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.serverGroupTuples = tmp
                    }
                }
            }
            public var forwardGroupConfig: ListListenersResponseBody.Listeners.DefaultActions.ForwardGroupConfig?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.forwardGroupConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.forwardGroupConfig != nil {
                    map["ForwardGroupConfig"] = self.forwardGroupConfig?.toMap()
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ForwardGroupConfig"] as? [String: Any?] {
                    var model = ListListenersResponseBody.Listeners.DefaultActions.ForwardGroupConfig()
                    model.fromMap(value)
                    self.forwardGroupConfig = model
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class LogConfig : Tea.TeaModel {
            public class AccessLogTracingConfig : Tea.TeaModel {
                public var tracingEnabled: Bool?

                public var tracingSample: Int32?

                public var tracingType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tracingEnabled != nil {
                        map["TracingEnabled"] = self.tracingEnabled!
                    }
                    if self.tracingSample != nil {
                        map["TracingSample"] = self.tracingSample!
                    }
                    if self.tracingType != nil {
                        map["TracingType"] = self.tracingType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["TracingEnabled"] as? Bool {
                        self.tracingEnabled = value
                    }
                    if let value = dict["TracingSample"] as? Int32 {
                        self.tracingSample = value
                    }
                    if let value = dict["TracingType"] as? String {
                        self.tracingType = value
                    }
                }
            }
            public var accessLogRecordCustomizedHeadersEnabled: Bool?

            public var accessLogTracingConfig: ListListenersResponseBody.Listeners.LogConfig.AccessLogTracingConfig?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.accessLogTracingConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessLogRecordCustomizedHeadersEnabled != nil {
                    map["AccessLogRecordCustomizedHeadersEnabled"] = self.accessLogRecordCustomizedHeadersEnabled!
                }
                if self.accessLogTracingConfig != nil {
                    map["AccessLogTracingConfig"] = self.accessLogTracingConfig?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessLogRecordCustomizedHeadersEnabled"] as? Bool {
                    self.accessLogRecordCustomizedHeadersEnabled = value
                }
                if let value = dict["AccessLogTracingConfig"] as? [String: Any?] {
                    var model = ListListenersResponseBody.Listeners.LogConfig.AccessLogTracingConfig()
                    model.fromMap(value)
                    self.accessLogTracingConfig = model
                }
            }
        }
        public class QuicConfig : Tea.TeaModel {
            public var quicListenerId: String?

            public var quicUpgradeEnabled: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.quicListenerId != nil {
                    map["QuicListenerId"] = self.quicListenerId!
                }
                if self.quicUpgradeEnabled != nil {
                    map["QuicUpgradeEnabled"] = self.quicUpgradeEnabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["QuicListenerId"] as? String {
                    self.quicListenerId = value
                }
                if let value = dict["QuicUpgradeEnabled"] as? Bool {
                    self.quicUpgradeEnabled = value
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
        public class XForwardedForConfig : Tea.TeaModel {
            public var XForwardedForClientCertClientVerifyAlias: String?

            public var XForwardedForClientCertClientVerifyEnabled: Bool?

            public var XForwardedForClientCertFingerprintAlias: String?

            public var XForwardedForClientCertFingerprintEnabled: Bool?

            public var XForwardedForClientCertIssuerDNAlias: String?

            public var XForwardedForClientCertIssuerDNEnabled: Bool?

            public var XForwardedForClientCertSubjectDNAlias: String?

            public var XForwardedForClientCertSubjectDNEnabled: Bool?

            public var XForwardedForClientSourceIpsEnabled: Bool?

            public var XForwardedForClientSourceIpsTrusted: String?

            public var XForwardedForClientSrcPortEnabled: Bool?

            public var XForwardedForEnabled: Bool?

            public var XForwardedForHostEnabled: Bool?

            public var XForwardedForProcessingMode: String?

            public var XForwardedForProtoEnabled: Bool?

            public var XForwardedForSLBIdEnabled: Bool?

            public var XForwardedForSLBPortEnabled: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.XForwardedForClientCertClientVerifyAlias != nil {
                    map["XForwardedForClientCertClientVerifyAlias"] = self.XForwardedForClientCertClientVerifyAlias!
                }
                if self.XForwardedForClientCertClientVerifyEnabled != nil {
                    map["XForwardedForClientCertClientVerifyEnabled"] = self.XForwardedForClientCertClientVerifyEnabled!
                }
                if self.XForwardedForClientCertFingerprintAlias != nil {
                    map["XForwardedForClientCertFingerprintAlias"] = self.XForwardedForClientCertFingerprintAlias!
                }
                if self.XForwardedForClientCertFingerprintEnabled != nil {
                    map["XForwardedForClientCertFingerprintEnabled"] = self.XForwardedForClientCertFingerprintEnabled!
                }
                if self.XForwardedForClientCertIssuerDNAlias != nil {
                    map["XForwardedForClientCertIssuerDNAlias"] = self.XForwardedForClientCertIssuerDNAlias!
                }
                if self.XForwardedForClientCertIssuerDNEnabled != nil {
                    map["XForwardedForClientCertIssuerDNEnabled"] = self.XForwardedForClientCertIssuerDNEnabled!
                }
                if self.XForwardedForClientCertSubjectDNAlias != nil {
                    map["XForwardedForClientCertSubjectDNAlias"] = self.XForwardedForClientCertSubjectDNAlias!
                }
                if self.XForwardedForClientCertSubjectDNEnabled != nil {
                    map["XForwardedForClientCertSubjectDNEnabled"] = self.XForwardedForClientCertSubjectDNEnabled!
                }
                if self.XForwardedForClientSourceIpsEnabled != nil {
                    map["XForwardedForClientSourceIpsEnabled"] = self.XForwardedForClientSourceIpsEnabled!
                }
                if self.XForwardedForClientSourceIpsTrusted != nil {
                    map["XForwardedForClientSourceIpsTrusted"] = self.XForwardedForClientSourceIpsTrusted!
                }
                if self.XForwardedForClientSrcPortEnabled != nil {
                    map["XForwardedForClientSrcPortEnabled"] = self.XForwardedForClientSrcPortEnabled!
                }
                if self.XForwardedForEnabled != nil {
                    map["XForwardedForEnabled"] = self.XForwardedForEnabled!
                }
                if self.XForwardedForHostEnabled != nil {
                    map["XForwardedForHostEnabled"] = self.XForwardedForHostEnabled!
                }
                if self.XForwardedForProcessingMode != nil {
                    map["XForwardedForProcessingMode"] = self.XForwardedForProcessingMode!
                }
                if self.XForwardedForProtoEnabled != nil {
                    map["XForwardedForProtoEnabled"] = self.XForwardedForProtoEnabled!
                }
                if self.XForwardedForSLBIdEnabled != nil {
                    map["XForwardedForSLBIdEnabled"] = self.XForwardedForSLBIdEnabled!
                }
                if self.XForwardedForSLBPortEnabled != nil {
                    map["XForwardedForSLBPortEnabled"] = self.XForwardedForSLBPortEnabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["XForwardedForClientCertClientVerifyAlias"] as? String {
                    self.XForwardedForClientCertClientVerifyAlias = value
                }
                if let value = dict["XForwardedForClientCertClientVerifyEnabled"] as? Bool {
                    self.XForwardedForClientCertClientVerifyEnabled = value
                }
                if let value = dict["XForwardedForClientCertFingerprintAlias"] as? String {
                    self.XForwardedForClientCertFingerprintAlias = value
                }
                if let value = dict["XForwardedForClientCertFingerprintEnabled"] as? Bool {
                    self.XForwardedForClientCertFingerprintEnabled = value
                }
                if let value = dict["XForwardedForClientCertIssuerDNAlias"] as? String {
                    self.XForwardedForClientCertIssuerDNAlias = value
                }
                if let value = dict["XForwardedForClientCertIssuerDNEnabled"] as? Bool {
                    self.XForwardedForClientCertIssuerDNEnabled = value
                }
                if let value = dict["XForwardedForClientCertSubjectDNAlias"] as? String {
                    self.XForwardedForClientCertSubjectDNAlias = value
                }
                if let value = dict["XForwardedForClientCertSubjectDNEnabled"] as? Bool {
                    self.XForwardedForClientCertSubjectDNEnabled = value
                }
                if let value = dict["XForwardedForClientSourceIpsEnabled"] as? Bool {
                    self.XForwardedForClientSourceIpsEnabled = value
                }
                if let value = dict["XForwardedForClientSourceIpsTrusted"] as? String {
                    self.XForwardedForClientSourceIpsTrusted = value
                }
                if let value = dict["XForwardedForClientSrcPortEnabled"] as? Bool {
                    self.XForwardedForClientSrcPortEnabled = value
                }
                if let value = dict["XForwardedForEnabled"] as? Bool {
                    self.XForwardedForEnabled = value
                }
                if let value = dict["XForwardedForHostEnabled"] as? Bool {
                    self.XForwardedForHostEnabled = value
                }
                if let value = dict["XForwardedForProcessingMode"] as? String {
                    self.XForwardedForProcessingMode = value
                }
                if let value = dict["XForwardedForProtoEnabled"] as? Bool {
                    self.XForwardedForProtoEnabled = value
                }
                if let value = dict["XForwardedForSLBIdEnabled"] as? Bool {
                    self.XForwardedForSLBIdEnabled = value
                }
                if let value = dict["XForwardedForSLBPortEnabled"] as? Bool {
                    self.XForwardedForSLBPortEnabled = value
                }
            }
        }
        public var defaultActions: [ListListenersResponseBody.Listeners.DefaultActions]?

        public var gzipEnabled: Bool?

        public var http2Enabled: Bool?

        public var idleTimeout: Int32?

        public var listenerDescription: String?

        public var listenerId: String?

        public var listenerPort: Int32?

        public var listenerProtocol: String?

        public var listenerStatus: String?

        public var loadBalancerId: String?

        public var logConfig: ListListenersResponseBody.Listeners.LogConfig?

        public var quicConfig: ListListenersResponseBody.Listeners.QuicConfig?

        public var requestTimeout: Int32?

        public var securityPolicyId: String?

        public var tags: [ListListenersResponseBody.Listeners.Tags]?

        public var XForwardedForConfig: ListListenersResponseBody.Listeners.XForwardedForConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.logConfig?.validate()
            try self.quicConfig?.validate()
            try self.XForwardedForConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.defaultActions != nil {
                var tmp : [Any] = []
                for k in self.defaultActions! {
                    tmp.append(k.toMap())
                }
                map["DefaultActions"] = tmp
            }
            if self.gzipEnabled != nil {
                map["GzipEnabled"] = self.gzipEnabled!
            }
            if self.http2Enabled != nil {
                map["Http2Enabled"] = self.http2Enabled!
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
            if self.logConfig != nil {
                map["LogConfig"] = self.logConfig?.toMap()
            }
            if self.quicConfig != nil {
                map["QuicConfig"] = self.quicConfig?.toMap()
            }
            if self.requestTimeout != nil {
                map["RequestTimeout"] = self.requestTimeout!
            }
            if self.securityPolicyId != nil {
                map["SecurityPolicyId"] = self.securityPolicyId!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.XForwardedForConfig != nil {
                map["XForwardedForConfig"] = self.XForwardedForConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DefaultActions"] as? [Any?] {
                var tmp : [ListListenersResponseBody.Listeners.DefaultActions] = []
                for v in value {
                    if v != nil {
                        var model = ListListenersResponseBody.Listeners.DefaultActions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.defaultActions = tmp
            }
            if let value = dict["GzipEnabled"] as? Bool {
                self.gzipEnabled = value
            }
            if let value = dict["Http2Enabled"] as? Bool {
                self.http2Enabled = value
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
            if let value = dict["LogConfig"] as? [String: Any?] {
                var model = ListListenersResponseBody.Listeners.LogConfig()
                model.fromMap(value)
                self.logConfig = model
            }
            if let value = dict["QuicConfig"] as? [String: Any?] {
                var model = ListListenersResponseBody.Listeners.QuicConfig()
                model.fromMap(value)
                self.quicConfig = model
            }
            if let value = dict["RequestTimeout"] as? Int32 {
                self.requestTimeout = value
            }
            if let value = dict["SecurityPolicyId"] as? String {
                self.securityPolicyId = value
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
            if let value = dict["XForwardedForConfig"] as? [String: Any?] {
                var model = ListListenersResponseBody.Listeners.XForwardedForConfig()
                model.fromMap(value)
                self.XForwardedForConfig = model
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

    public var loadBalancerBussinessStatus: String?

    public var loadBalancerIds: [String]?

    public var loadBalancerNames: [String]?

    public var loadBalancerStatus: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var payType: String?

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
        if self.loadBalancerBussinessStatus != nil {
            map["LoadBalancerBussinessStatus"] = self.loadBalancerBussinessStatus!
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
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
        if let value = dict["LoadBalancerBussinessStatus"] as? String {
            self.loadBalancerBussinessStatus = value
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
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
        public class AccessLogConfig : Tea.TeaModel {
            public var logProject: String?

            public var logStore: String?

            public override init() {
                super.init()
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
                if self.logStore != nil {
                    map["LogStore"] = self.logStore!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LogProject"] as? String {
                    self.logProject = value
                }
                if let value = dict["LogStore"] as? String {
                    self.logStore = value
                }
            }
        }
        public class DeletionProtectionConfig : Tea.TeaModel {
            public var enabled: Bool?

            public var enabledTime: String?

            public override init() {
                super.init()
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
        public class LoadBalancerOperationLocks : Tea.TeaModel {
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
        public var accessLogConfig: ListLoadBalancersResponseBody.LoadBalancers.AccessLogConfig?

        public var addressAllocatedMode: String?

        public var addressIpVersion: String?

        public var addressType: String?

        public var bandwidthPackageId: String?

        public var createTime: String?

        public var DNSName: String?

        public var deletionProtectionConfig: ListLoadBalancersResponseBody.LoadBalancers.DeletionProtectionConfig?

        public var ipv6AddressType: String?

        public var loadBalancerBillingConfig: ListLoadBalancersResponseBody.LoadBalancers.LoadBalancerBillingConfig?

        public var loadBalancerBussinessStatus: String?

        public var loadBalancerEdition: String?

        public var loadBalancerId: String?

        public var loadBalancerName: String?

        public var loadBalancerOperationLocks: [ListLoadBalancersResponseBody.LoadBalancers.LoadBalancerOperationLocks]?

        public var loadBalancerStatus: String?

        public var modificationProtectionConfig: ListLoadBalancersResponseBody.LoadBalancers.ModificationProtectionConfig?

        public var resourceGroupId: String?

        public var securityGroupIds: [String]?

        public var tags: [ListLoadBalancersResponseBody.LoadBalancers.Tags]?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.accessLogConfig?.validate()
            try self.deletionProtectionConfig?.validate()
            try self.loadBalancerBillingConfig?.validate()
            try self.modificationProtectionConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessLogConfig != nil {
                map["AccessLogConfig"] = self.accessLogConfig?.toMap()
            }
            if self.addressAllocatedMode != nil {
                map["AddressAllocatedMode"] = self.addressAllocatedMode!
            }
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
            if self.loadBalancerBussinessStatus != nil {
                map["LoadBalancerBussinessStatus"] = self.loadBalancerBussinessStatus!
            }
            if self.loadBalancerEdition != nil {
                map["LoadBalancerEdition"] = self.loadBalancerEdition!
            }
            if self.loadBalancerId != nil {
                map["LoadBalancerId"] = self.loadBalancerId!
            }
            if self.loadBalancerName != nil {
                map["LoadBalancerName"] = self.loadBalancerName!
            }
            if self.loadBalancerOperationLocks != nil {
                var tmp : [Any] = []
                for k in self.loadBalancerOperationLocks! {
                    tmp.append(k.toMap())
                }
                map["LoadBalancerOperationLocks"] = tmp
            }
            if self.loadBalancerStatus != nil {
                map["LoadBalancerStatus"] = self.loadBalancerStatus!
            }
            if self.modificationProtectionConfig != nil {
                map["ModificationProtectionConfig"] = self.modificationProtectionConfig?.toMap()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessLogConfig"] as? [String: Any?] {
                var model = ListLoadBalancersResponseBody.LoadBalancers.AccessLogConfig()
                model.fromMap(value)
                self.accessLogConfig = model
            }
            if let value = dict["AddressAllocatedMode"] as? String {
                self.addressAllocatedMode = value
            }
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
            if let value = dict["LoadBalancerBussinessStatus"] as? String {
                self.loadBalancerBussinessStatus = value
            }
            if let value = dict["LoadBalancerEdition"] as? String {
                self.loadBalancerEdition = value
            }
            if let value = dict["LoadBalancerId"] as? String {
                self.loadBalancerId = value
            }
            if let value = dict["LoadBalancerName"] as? String {
                self.loadBalancerName = value
            }
            if let value = dict["LoadBalancerOperationLocks"] as? [Any?] {
                var tmp : [ListLoadBalancersResponseBody.LoadBalancers.LoadBalancerOperationLocks] = []
                for v in value {
                    if v != nil {
                        var model = ListLoadBalancersResponseBody.LoadBalancers.LoadBalancerOperationLocks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.loadBalancerOperationLocks = tmp
            }
            if let value = dict["LoadBalancerStatus"] as? String {
                self.loadBalancerStatus = value
            }
            if let value = dict["ModificationProtectionConfig"] as? [String: Any?] {
                var model = ListLoadBalancersResponseBody.LoadBalancers.ModificationProtectionConfig()
                model.fromMap(value)
                self.modificationProtectionConfig = model
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

public class ListRulesRequest : Tea.TeaModel {
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
    public var direction: String?

    public var listenerIds: [String]?

    public var loadBalancerIds: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var ruleIds: [String]?

    public var tag: [ListRulesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.listenerIds != nil {
            map["ListenerIds"] = self.listenerIds!
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
        if self.ruleIds != nil {
            map["RuleIds"] = self.ruleIds!
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
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["ListenerIds"] as? [String] {
            self.listenerIds = value
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
        if let value = dict["RuleIds"] as? [String] {
            self.ruleIds = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListRulesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListRulesRequest.Tag()
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

public class ListRulesResponseBody : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public class RuleActions : Tea.TeaModel {
            public class CorsConfig : Tea.TeaModel {
                public var allowCredentials: String?

                public var allowHeaders: [String]?

                public var allowMethods: [String]?

                public var allowOrigin: [String]?

                public var exposeHeaders: [String]?

                public var maxAge: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.allowCredentials != nil {
                        map["AllowCredentials"] = self.allowCredentials!
                    }
                    if self.allowHeaders != nil {
                        map["AllowHeaders"] = self.allowHeaders!
                    }
                    if self.allowMethods != nil {
                        map["AllowMethods"] = self.allowMethods!
                    }
                    if self.allowOrigin != nil {
                        map["AllowOrigin"] = self.allowOrigin!
                    }
                    if self.exposeHeaders != nil {
                        map["ExposeHeaders"] = self.exposeHeaders!
                    }
                    if self.maxAge != nil {
                        map["MaxAge"] = self.maxAge!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AllowCredentials"] as? String {
                        self.allowCredentials = value
                    }
                    if let value = dict["AllowHeaders"] as? [String] {
                        self.allowHeaders = value
                    }
                    if let value = dict["AllowMethods"] as? [String] {
                        self.allowMethods = value
                    }
                    if let value = dict["AllowOrigin"] as? [String] {
                        self.allowOrigin = value
                    }
                    if let value = dict["ExposeHeaders"] as? [String] {
                        self.exposeHeaders = value
                    }
                    if let value = dict["MaxAge"] as? Int64 {
                        self.maxAge = value
                    }
                }
            }
            public class FixedResponseConfig : Tea.TeaModel {
                public var content: String?

                public var contentType: String?

                public var httpCode: String?

                public override init() {
                    super.init()
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
                    if self.httpCode != nil {
                        map["HttpCode"] = self.httpCode!
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
                    if let value = dict["HttpCode"] as? String {
                        self.httpCode = value
                    }
                }
            }
            public class ForwardGroupConfig : Tea.TeaModel {
                public class ServerGroupStickySession : Tea.TeaModel {
                    public var enabled: Bool?

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
                        if self.enabled != nil {
                            map["Enabled"] = self.enabled!
                        }
                        if self.timeout != nil {
                            map["Timeout"] = self.timeout!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Enabled"] as? Bool {
                            self.enabled = value
                        }
                        if let value = dict["Timeout"] as? Int32 {
                            self.timeout = value
                        }
                    }
                }
                public class ServerGroupTuples : Tea.TeaModel {
                    public var serverGroupId: String?

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
                        if self.serverGroupId != nil {
                            map["ServerGroupId"] = self.serverGroupId!
                        }
                        if self.weight != nil {
                            map["Weight"] = self.weight!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ServerGroupId"] as? String {
                            self.serverGroupId = value
                        }
                        if let value = dict["Weight"] as? Int32 {
                            self.weight = value
                        }
                    }
                }
                public var serverGroupStickySession: ListRulesResponseBody.Rules.RuleActions.ForwardGroupConfig.ServerGroupStickySession?

                public var serverGroupTuples: [ListRulesResponseBody.Rules.RuleActions.ForwardGroupConfig.ServerGroupTuples]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.serverGroupStickySession?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.serverGroupStickySession != nil {
                        map["ServerGroupStickySession"] = self.serverGroupStickySession?.toMap()
                    }
                    if self.serverGroupTuples != nil {
                        var tmp : [Any] = []
                        for k in self.serverGroupTuples! {
                            tmp.append(k.toMap())
                        }
                        map["ServerGroupTuples"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ServerGroupStickySession"] as? [String: Any?] {
                        var model = ListRulesResponseBody.Rules.RuleActions.ForwardGroupConfig.ServerGroupStickySession()
                        model.fromMap(value)
                        self.serverGroupStickySession = model
                    }
                    if let value = dict["ServerGroupTuples"] as? [Any?] {
                        var tmp : [ListRulesResponseBody.Rules.RuleActions.ForwardGroupConfig.ServerGroupTuples] = []
                        for v in value {
                            if v != nil {
                                var model = ListRulesResponseBody.Rules.RuleActions.ForwardGroupConfig.ServerGroupTuples()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.serverGroupTuples = tmp
                    }
                }
            }
            public class InsertHeaderConfig : Tea.TeaModel {
                public var key: String?

                public var value: String?

                public var valueType: String?

                public override init() {
                    super.init()
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
                    if self.valueType != nil {
                        map["ValueType"] = self.valueType!
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
                    if let value = dict["ValueType"] as? String {
                        self.valueType = value
                    }
                }
            }
            public class RedirectConfig : Tea.TeaModel {
                public var host: String?

                public var httpCode: String?

                public var path: String?

                public var port: String?

                public var protocol_: String?

                public var query: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.httpCode != nil {
                        map["HttpCode"] = self.httpCode!
                    }
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.protocol_ != nil {
                        map["Protocol"] = self.protocol_!
                    }
                    if self.query != nil {
                        map["Query"] = self.query!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Host"] as? String {
                        self.host = value
                    }
                    if let value = dict["HttpCode"] as? String {
                        self.httpCode = value
                    }
                    if let value = dict["Path"] as? String {
                        self.path = value
                    }
                    if let value = dict["Port"] as? String {
                        self.port = value
                    }
                    if let value = dict["Protocol"] as? String {
                        self.protocol_ = value
                    }
                    if let value = dict["Query"] as? String {
                        self.query = value
                    }
                }
            }
            public class RemoveHeaderConfig : Tea.TeaModel {
                public var key: String?

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                }
            }
            public class RewriteConfig : Tea.TeaModel {
                public var host: String?

                public var path: String?

                public var query: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.query != nil {
                        map["Query"] = self.query!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Host"] as? String {
                        self.host = value
                    }
                    if let value = dict["Path"] as? String {
                        self.path = value
                    }
                    if let value = dict["Query"] as? String {
                        self.query = value
                    }
                }
            }
            public class TrafficLimitConfig : Tea.TeaModel {
                public var perIpQps: Int32?

                public var QPS: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.perIpQps != nil {
                        map["PerIpQps"] = self.perIpQps!
                    }
                    if self.QPS != nil {
                        map["QPS"] = self.QPS!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PerIpQps"] as? Int32 {
                        self.perIpQps = value
                    }
                    if let value = dict["QPS"] as? Int32 {
                        self.QPS = value
                    }
                }
            }
            public class TrafficMirrorConfig : Tea.TeaModel {
                public class MirrorGroupConfig : Tea.TeaModel {
                    public class ServerGroupTuples : Tea.TeaModel {
                        public var serverGroupId: String?

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
                            if self.serverGroupId != nil {
                                map["ServerGroupId"] = self.serverGroupId!
                            }
                            if self.weight != nil {
                                map["Weight"] = self.weight!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["ServerGroupId"] as? String {
                                self.serverGroupId = value
                            }
                            if let value = dict["Weight"] as? Int32 {
                                self.weight = value
                            }
                        }
                    }
                    public var serverGroupTuples: [ListRulesResponseBody.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.serverGroupTuples != nil {
                            var tmp : [Any] = []
                            for k in self.serverGroupTuples! {
                                tmp.append(k.toMap())
                            }
                            map["ServerGroupTuples"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ServerGroupTuples"] as? [Any?] {
                            var tmp : [ListRulesResponseBody.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples] = []
                            for v in value {
                                if v != nil {
                                    var model = ListRulesResponseBody.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.serverGroupTuples = tmp
                        }
                    }
                }
                public var mirrorGroupConfig: ListRulesResponseBody.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig?

                public var targetType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.mirrorGroupConfig?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mirrorGroupConfig != nil {
                        map["MirrorGroupConfig"] = self.mirrorGroupConfig?.toMap()
                    }
                    if self.targetType != nil {
                        map["TargetType"] = self.targetType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MirrorGroupConfig"] as? [String: Any?] {
                        var model = ListRulesResponseBody.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig()
                        model.fromMap(value)
                        self.mirrorGroupConfig = model
                    }
                    if let value = dict["TargetType"] as? String {
                        self.targetType = value
                    }
                }
            }
            public var corsConfig: ListRulesResponseBody.Rules.RuleActions.CorsConfig?

            public var fixedResponseConfig: ListRulesResponseBody.Rules.RuleActions.FixedResponseConfig?

            public var forwardGroupConfig: ListRulesResponseBody.Rules.RuleActions.ForwardGroupConfig?

            public var insertHeaderConfig: ListRulesResponseBody.Rules.RuleActions.InsertHeaderConfig?

            public var order: Int32?

            public var redirectConfig: ListRulesResponseBody.Rules.RuleActions.RedirectConfig?

            public var removeHeaderConfig: ListRulesResponseBody.Rules.RuleActions.RemoveHeaderConfig?

            public var rewriteConfig: ListRulesResponseBody.Rules.RuleActions.RewriteConfig?

            public var trafficLimitConfig: ListRulesResponseBody.Rules.RuleActions.TrafficLimitConfig?

            public var trafficMirrorConfig: ListRulesResponseBody.Rules.RuleActions.TrafficMirrorConfig?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.corsConfig?.validate()
                try self.fixedResponseConfig?.validate()
                try self.forwardGroupConfig?.validate()
                try self.insertHeaderConfig?.validate()
                try self.redirectConfig?.validate()
                try self.removeHeaderConfig?.validate()
                try self.rewriteConfig?.validate()
                try self.trafficLimitConfig?.validate()
                try self.trafficMirrorConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.corsConfig != nil {
                    map["CorsConfig"] = self.corsConfig?.toMap()
                }
                if self.fixedResponseConfig != nil {
                    map["FixedResponseConfig"] = self.fixedResponseConfig?.toMap()
                }
                if self.forwardGroupConfig != nil {
                    map["ForwardGroupConfig"] = self.forwardGroupConfig?.toMap()
                }
                if self.insertHeaderConfig != nil {
                    map["InsertHeaderConfig"] = self.insertHeaderConfig?.toMap()
                }
                if self.order != nil {
                    map["Order"] = self.order!
                }
                if self.redirectConfig != nil {
                    map["RedirectConfig"] = self.redirectConfig?.toMap()
                }
                if self.removeHeaderConfig != nil {
                    map["RemoveHeaderConfig"] = self.removeHeaderConfig?.toMap()
                }
                if self.rewriteConfig != nil {
                    map["RewriteConfig"] = self.rewriteConfig?.toMap()
                }
                if self.trafficLimitConfig != nil {
                    map["TrafficLimitConfig"] = self.trafficLimitConfig?.toMap()
                }
                if self.trafficMirrorConfig != nil {
                    map["TrafficMirrorConfig"] = self.trafficMirrorConfig?.toMap()
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CorsConfig"] as? [String: Any?] {
                    var model = ListRulesResponseBody.Rules.RuleActions.CorsConfig()
                    model.fromMap(value)
                    self.corsConfig = model
                }
                if let value = dict["FixedResponseConfig"] as? [String: Any?] {
                    var model = ListRulesResponseBody.Rules.RuleActions.FixedResponseConfig()
                    model.fromMap(value)
                    self.fixedResponseConfig = model
                }
                if let value = dict["ForwardGroupConfig"] as? [String: Any?] {
                    var model = ListRulesResponseBody.Rules.RuleActions.ForwardGroupConfig()
                    model.fromMap(value)
                    self.forwardGroupConfig = model
                }
                if let value = dict["InsertHeaderConfig"] as? [String: Any?] {
                    var model = ListRulesResponseBody.Rules.RuleActions.InsertHeaderConfig()
                    model.fromMap(value)
                    self.insertHeaderConfig = model
                }
                if let value = dict["Order"] as? Int32 {
                    self.order = value
                }
                if let value = dict["RedirectConfig"] as? [String: Any?] {
                    var model = ListRulesResponseBody.Rules.RuleActions.RedirectConfig()
                    model.fromMap(value)
                    self.redirectConfig = model
                }
                if let value = dict["RemoveHeaderConfig"] as? [String: Any?] {
                    var model = ListRulesResponseBody.Rules.RuleActions.RemoveHeaderConfig()
                    model.fromMap(value)
                    self.removeHeaderConfig = model
                }
                if let value = dict["RewriteConfig"] as? [String: Any?] {
                    var model = ListRulesResponseBody.Rules.RuleActions.RewriteConfig()
                    model.fromMap(value)
                    self.rewriteConfig = model
                }
                if let value = dict["TrafficLimitConfig"] as? [String: Any?] {
                    var model = ListRulesResponseBody.Rules.RuleActions.TrafficLimitConfig()
                    model.fromMap(value)
                    self.trafficLimitConfig = model
                }
                if let value = dict["TrafficMirrorConfig"] as? [String: Any?] {
                    var model = ListRulesResponseBody.Rules.RuleActions.TrafficMirrorConfig()
                    model.fromMap(value)
                    self.trafficMirrorConfig = model
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class RuleConditions : Tea.TeaModel {
            public class CookieConfig : Tea.TeaModel {
                public class Values : Tea.TeaModel {
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
                public var values: [ListRulesResponseBody.Rules.RuleConditions.CookieConfig.Values]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        var tmp : [Any] = []
                        for k in self.values! {
                            tmp.append(k.toMap())
                        }
                        map["Values"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [Any?] {
                        var tmp : [ListRulesResponseBody.Rules.RuleConditions.CookieConfig.Values] = []
                        for v in value {
                            if v != nil {
                                var model = ListRulesResponseBody.Rules.RuleConditions.CookieConfig.Values()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.values = tmp
                    }
                }
            }
            public class HeaderConfig : Tea.TeaModel {
                public var key: String?

                public var values: [String]?

                public override init() {
                    super.init()
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
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public class HostConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public class MethodConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public class PathConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public class QueryStringConfig : Tea.TeaModel {
                public class Values : Tea.TeaModel {
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
                public var values: [ListRulesResponseBody.Rules.RuleConditions.QueryStringConfig.Values]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        var tmp : [Any] = []
                        for k in self.values! {
                            tmp.append(k.toMap())
                        }
                        map["Values"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [Any?] {
                        var tmp : [ListRulesResponseBody.Rules.RuleConditions.QueryStringConfig.Values] = []
                        for v in value {
                            if v != nil {
                                var model = ListRulesResponseBody.Rules.RuleConditions.QueryStringConfig.Values()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.values = tmp
                    }
                }
            }
            public class ResponseHeaderConfig : Tea.TeaModel {
                public var key: String?

                public var values: [String]?

                public override init() {
                    super.init()
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
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public class ResponseStatusCodeConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public class SourceIpConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public var cookieConfig: ListRulesResponseBody.Rules.RuleConditions.CookieConfig?

            public var headerConfig: ListRulesResponseBody.Rules.RuleConditions.HeaderConfig?

            public var hostConfig: ListRulesResponseBody.Rules.RuleConditions.HostConfig?

            public var methodConfig: ListRulesResponseBody.Rules.RuleConditions.MethodConfig?

            public var pathConfig: ListRulesResponseBody.Rules.RuleConditions.PathConfig?

            public var queryStringConfig: ListRulesResponseBody.Rules.RuleConditions.QueryStringConfig?

            public var responseHeaderConfig: ListRulesResponseBody.Rules.RuleConditions.ResponseHeaderConfig?

            public var responseStatusCodeConfig: ListRulesResponseBody.Rules.RuleConditions.ResponseStatusCodeConfig?

            public var sourceIpConfig: ListRulesResponseBody.Rules.RuleConditions.SourceIpConfig?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cookieConfig?.validate()
                try self.headerConfig?.validate()
                try self.hostConfig?.validate()
                try self.methodConfig?.validate()
                try self.pathConfig?.validate()
                try self.queryStringConfig?.validate()
                try self.responseHeaderConfig?.validate()
                try self.responseStatusCodeConfig?.validate()
                try self.sourceIpConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cookieConfig != nil {
                    map["CookieConfig"] = self.cookieConfig?.toMap()
                }
                if self.headerConfig != nil {
                    map["HeaderConfig"] = self.headerConfig?.toMap()
                }
                if self.hostConfig != nil {
                    map["HostConfig"] = self.hostConfig?.toMap()
                }
                if self.methodConfig != nil {
                    map["MethodConfig"] = self.methodConfig?.toMap()
                }
                if self.pathConfig != nil {
                    map["PathConfig"] = self.pathConfig?.toMap()
                }
                if self.queryStringConfig != nil {
                    map["QueryStringConfig"] = self.queryStringConfig?.toMap()
                }
                if self.responseHeaderConfig != nil {
                    map["ResponseHeaderConfig"] = self.responseHeaderConfig?.toMap()
                }
                if self.responseStatusCodeConfig != nil {
                    map["ResponseStatusCodeConfig"] = self.responseStatusCodeConfig?.toMap()
                }
                if self.sourceIpConfig != nil {
                    map["SourceIpConfig"] = self.sourceIpConfig?.toMap()
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CookieConfig"] as? [String: Any?] {
                    var model = ListRulesResponseBody.Rules.RuleConditions.CookieConfig()
                    model.fromMap(value)
                    self.cookieConfig = model
                }
                if let value = dict["HeaderConfig"] as? [String: Any?] {
                    var model = ListRulesResponseBody.Rules.RuleConditions.HeaderConfig()
                    model.fromMap(value)
                    self.headerConfig = model
                }
                if let value = dict["HostConfig"] as? [String: Any?] {
                    var model = ListRulesResponseBody.Rules.RuleConditions.HostConfig()
                    model.fromMap(value)
                    self.hostConfig = model
                }
                if let value = dict["MethodConfig"] as? [String: Any?] {
                    var model = ListRulesResponseBody.Rules.RuleConditions.MethodConfig()
                    model.fromMap(value)
                    self.methodConfig = model
                }
                if let value = dict["PathConfig"] as? [String: Any?] {
                    var model = ListRulesResponseBody.Rules.RuleConditions.PathConfig()
                    model.fromMap(value)
                    self.pathConfig = model
                }
                if let value = dict["QueryStringConfig"] as? [String: Any?] {
                    var model = ListRulesResponseBody.Rules.RuleConditions.QueryStringConfig()
                    model.fromMap(value)
                    self.queryStringConfig = model
                }
                if let value = dict["ResponseHeaderConfig"] as? [String: Any?] {
                    var model = ListRulesResponseBody.Rules.RuleConditions.ResponseHeaderConfig()
                    model.fromMap(value)
                    self.responseHeaderConfig = model
                }
                if let value = dict["ResponseStatusCodeConfig"] as? [String: Any?] {
                    var model = ListRulesResponseBody.Rules.RuleConditions.ResponseStatusCodeConfig()
                    model.fromMap(value)
                    self.responseStatusCodeConfig = model
                }
                if let value = dict["SourceIpConfig"] as? [String: Any?] {
                    var model = ListRulesResponseBody.Rules.RuleConditions.SourceIpConfig()
                    model.fromMap(value)
                    self.sourceIpConfig = model
                }
                if let value = dict["Type"] as? String {
                    self.type = value
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
        public var direction: String?

        public var listenerId: String?

        public var loadBalancerId: String?

        public var priority: Int32?

        public var ruleActions: [ListRulesResponseBody.Rules.RuleActions]?

        public var ruleConditions: [ListRulesResponseBody.Rules.RuleConditions]?

        public var ruleId: String?

        public var ruleName: String?

        public var ruleStatus: String?

        public var tags: [ListRulesResponseBody.Rules.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.direction != nil {
                map["Direction"] = self.direction!
            }
            if self.listenerId != nil {
                map["ListenerId"] = self.listenerId!
            }
            if self.loadBalancerId != nil {
                map["LoadBalancerId"] = self.loadBalancerId!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.ruleActions != nil {
                var tmp : [Any] = []
                for k in self.ruleActions! {
                    tmp.append(k.toMap())
                }
                map["RuleActions"] = tmp
            }
            if self.ruleConditions != nil {
                var tmp : [Any] = []
                for k in self.ruleConditions! {
                    tmp.append(k.toMap())
                }
                map["RuleConditions"] = tmp
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.ruleStatus != nil {
                map["RuleStatus"] = self.ruleStatus!
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
            if let value = dict["Direction"] as? String {
                self.direction = value
            }
            if let value = dict["ListenerId"] as? String {
                self.listenerId = value
            }
            if let value = dict["LoadBalancerId"] as? String {
                self.loadBalancerId = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["RuleActions"] as? [Any?] {
                var tmp : [ListRulesResponseBody.Rules.RuleActions] = []
                for v in value {
                    if v != nil {
                        var model = ListRulesResponseBody.Rules.RuleActions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ruleActions = tmp
            }
            if let value = dict["RuleConditions"] as? [Any?] {
                var tmp : [ListRulesResponseBody.Rules.RuleConditions] = []
                for v in value {
                    if v != nil {
                        var model = ListRulesResponseBody.Rules.RuleConditions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ruleConditions = tmp
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["RuleStatus"] as? String {
                self.ruleStatus = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListRulesResponseBody.Rules.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListRulesResponseBody.Rules.Tags()
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
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var rules: [ListRulesResponseBody.Rules]?

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
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
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
        if let value = dict["Rules"] as? [Any?] {
            var tmp : [ListRulesResponseBody.Rules] = []
            for v in value {
                if v != nil {
                    var model = ListRulesResponseBody.Rules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rules = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRulesResponseBody?

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
            var model = ListRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSecurityPoliciesRequest : Tea.TeaModel {
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

    public var resourceGroupId: String?

    public var securityPolicyIds: [String]?

    public var securityPolicyNames: [String]?

    public var tag: [ListSecurityPoliciesRequest.Tag]?

    public override init() {
        super.init()
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
            var tmp : [ListSecurityPoliciesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListSecurityPoliciesRequest.Tag()
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

public class ListSecurityPoliciesResponseBody : Tea.TeaModel {
    public class SecurityPolicies : Tea.TeaModel {
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
        public var ciphers: [String]?

        public var createTime: String?

        public var resourceGroupId: String?

        public var securityPolicyId: String?

        public var securityPolicyName: String?

        public var securityPolicyStatus: String?

        public var TLSVersions: [String]?

        public var tags: [ListSecurityPoliciesResponseBody.SecurityPolicies.Tags]?

        public override init() {
            super.init()
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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
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
            if self.TLSVersions != nil {
                map["TLSVersions"] = self.TLSVersions!
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
            if let value = dict["Ciphers"] as? [String] {
                self.ciphers = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
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
            if let value = dict["TLSVersions"] as? [String] {
                self.TLSVersions = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListSecurityPoliciesResponseBody.SecurityPolicies.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListSecurityPoliciesResponseBody.SecurityPolicies.Tags()
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
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var securityPolicies: [ListSecurityPoliciesResponseBody.SecurityPolicies]?

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
            var tmp : [ListSecurityPoliciesResponseBody.SecurityPolicies] = []
            for v in value {
                if v != nil {
                    var model = ListSecurityPoliciesResponseBody.SecurityPolicies()
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

public class ListSecurityPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSecurityPoliciesResponseBody?

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
            var model = ListSecurityPoliciesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSecurityPolicyRelationsRequest : Tea.TeaModel {
    public var securityPolicyIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.securityPolicyIds != nil {
            map["SecurityPolicyIds"] = self.securityPolicyIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SecurityPolicyIds"] as? [String] {
            self.securityPolicyIds = value
        }
    }
}

public class ListSecurityPolicyRelationsResponseBody : Tea.TeaModel {
    public class SecrityPolicyRelations : Tea.TeaModel {
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
        public var relatedListeners: [ListSecurityPolicyRelationsResponseBody.SecrityPolicyRelations.RelatedListeners]?

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
            if self.relatedListeners != nil {
                var tmp : [Any] = []
                for k in self.relatedListeners! {
                    tmp.append(k.toMap())
                }
                map["RelatedListeners"] = tmp
            }
            if self.securityPolicyId != nil {
                map["SecurityPolicyId"] = self.securityPolicyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RelatedListeners"] as? [Any?] {
                var tmp : [ListSecurityPolicyRelationsResponseBody.SecrityPolicyRelations.RelatedListeners] = []
                for v in value {
                    if v != nil {
                        var model = ListSecurityPolicyRelationsResponseBody.SecrityPolicyRelations.RelatedListeners()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.relatedListeners = tmp
            }
            if let value = dict["SecurityPolicyId"] as? String {
                self.securityPolicyId = value
            }
        }
    }
    public var requestId: String?

    public var secrityPolicyRelations: [ListSecurityPolicyRelationsResponseBody.SecrityPolicyRelations]?

    public override init() {
        super.init()
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
        if self.secrityPolicyRelations != nil {
            var tmp : [Any] = []
            for k in self.secrityPolicyRelations! {
                tmp.append(k.toMap())
            }
            map["SecrityPolicyRelations"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecrityPolicyRelations"] as? [Any?] {
            var tmp : [ListSecurityPolicyRelationsResponseBody.SecrityPolicyRelations] = []
            for v in value {
                if v != nil {
                    var model = ListSecurityPolicyRelationsResponseBody.SecrityPolicyRelations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.secrityPolicyRelations = tmp
        }
    }
}

public class ListSecurityPolicyRelationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSecurityPolicyRelationsResponseBody?

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
            var model = ListSecurityPolicyRelationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServerGroupServersRequest : Tea.TeaModel {
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

    public var serverGroupId: String?

    public var serverIds: [String]?

    public var tag: [ListServerGroupServersRequest.Tag]?

    public override init() {
        super.init()
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
        if self.serverGroupId != nil {
            map["ServerGroupId"] = self.serverGroupId!
        }
        if self.serverIds != nil {
            map["ServerIds"] = self.serverIds!
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
        if let value = dict["ServerGroupId"] as? String {
            self.serverGroupId = value
        }
        if let value = dict["ServerIds"] as? [String] {
            self.serverIds = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListServerGroupServersRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListServerGroupServersRequest.Tag()
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

public class ListServerGroupServersResponseBody : Tea.TeaModel {
    public class Servers : Tea.TeaModel {
        public var description_: String?

        public var port: Int32?

        public var remoteIpEnabled: Bool?

        public var serverGroupId: String?

        public var serverId: String?

        public var serverIp: String?

        public var serverType: String?

        public var status: String?

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
            if self.remoteIpEnabled != nil {
                map["RemoteIpEnabled"] = self.remoteIpEnabled!
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
            if let value = dict["RemoteIpEnabled"] as? Bool {
                self.remoteIpEnabled = value
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
        public class ConnectionDrainConfig : Tea.TeaModel {
            public var connectionDrainEnabled: Bool?

            public var connectionDrainTimeout: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connectionDrainEnabled != nil {
                    map["ConnectionDrainEnabled"] = self.connectionDrainEnabled!
                }
                if self.connectionDrainTimeout != nil {
                    map["ConnectionDrainTimeout"] = self.connectionDrainTimeout!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnectionDrainEnabled"] as? Bool {
                    self.connectionDrainEnabled = value
                }
                if let value = dict["ConnectionDrainTimeout"] as? Int32 {
                    self.connectionDrainTimeout = value
                }
            }
        }
        public class HealthCheckConfig : Tea.TeaModel {
            public var healthCheckCodes: [String]?

            public var healthCheckConnectPort: Int32?

            public var healthCheckEnabled: Bool?

            public var healthCheckHost: String?

            public var healthCheckHttpVersion: String?

            public var healthCheckInterval: Int32?

            public var healthCheckMethod: String?

            public var healthCheckPath: String?

            public var healthCheckProtocol: String?

            public var healthCheckTimeout: Int32?

            public var healthyThreshold: Int32?

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
                if self.healthCheckCodes != nil {
                    map["HealthCheckCodes"] = self.healthCheckCodes!
                }
                if self.healthCheckConnectPort != nil {
                    map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
                }
                if self.healthCheckEnabled != nil {
                    map["HealthCheckEnabled"] = self.healthCheckEnabled!
                }
                if self.healthCheckHost != nil {
                    map["HealthCheckHost"] = self.healthCheckHost!
                }
                if self.healthCheckHttpVersion != nil {
                    map["HealthCheckHttpVersion"] = self.healthCheckHttpVersion!
                }
                if self.healthCheckInterval != nil {
                    map["HealthCheckInterval"] = self.healthCheckInterval!
                }
                if self.healthCheckMethod != nil {
                    map["HealthCheckMethod"] = self.healthCheckMethod!
                }
                if self.healthCheckPath != nil {
                    map["HealthCheckPath"] = self.healthCheckPath!
                }
                if self.healthCheckProtocol != nil {
                    map["HealthCheckProtocol"] = self.healthCheckProtocol!
                }
                if self.healthCheckTimeout != nil {
                    map["HealthCheckTimeout"] = self.healthCheckTimeout!
                }
                if self.healthyThreshold != nil {
                    map["HealthyThreshold"] = self.healthyThreshold!
                }
                if self.unhealthyThreshold != nil {
                    map["UnhealthyThreshold"] = self.unhealthyThreshold!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HealthCheckCodes"] as? [String] {
                    self.healthCheckCodes = value
                }
                if let value = dict["HealthCheckConnectPort"] as? Int32 {
                    self.healthCheckConnectPort = value
                }
                if let value = dict["HealthCheckEnabled"] as? Bool {
                    self.healthCheckEnabled = value
                }
                if let value = dict["HealthCheckHost"] as? String {
                    self.healthCheckHost = value
                }
                if let value = dict["HealthCheckHttpVersion"] as? String {
                    self.healthCheckHttpVersion = value
                }
                if let value = dict["HealthCheckInterval"] as? Int32 {
                    self.healthCheckInterval = value
                }
                if let value = dict["HealthCheckMethod"] as? String {
                    self.healthCheckMethod = value
                }
                if let value = dict["HealthCheckPath"] as? String {
                    self.healthCheckPath = value
                }
                if let value = dict["HealthCheckProtocol"] as? String {
                    self.healthCheckProtocol = value
                }
                if let value = dict["HealthCheckTimeout"] as? Int32 {
                    self.healthCheckTimeout = value
                }
                if let value = dict["HealthyThreshold"] as? Int32 {
                    self.healthyThreshold = value
                }
                if let value = dict["UnhealthyThreshold"] as? Int32 {
                    self.unhealthyThreshold = value
                }
            }
        }
        public class SlowStartConfig : Tea.TeaModel {
            public var slowStartDuration: Int32?

            public var slowStartEnabled: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.slowStartDuration != nil {
                    map["SlowStartDuration"] = self.slowStartDuration!
                }
                if self.slowStartEnabled != nil {
                    map["SlowStartEnabled"] = self.slowStartEnabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SlowStartDuration"] as? Int32 {
                    self.slowStartDuration = value
                }
                if let value = dict["SlowStartEnabled"] as? Bool {
                    self.slowStartEnabled = value
                }
            }
        }
        public class StickySessionConfig : Tea.TeaModel {
            public var cookie: String?

            public var cookieTimeout: Int32?

            public var stickySessionEnabled: Bool?

            public var stickySessionType: String?

            public override init() {
                super.init()
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
                if self.stickySessionEnabled != nil {
                    map["StickySessionEnabled"] = self.stickySessionEnabled!
                }
                if self.stickySessionType != nil {
                    map["StickySessionType"] = self.stickySessionType!
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
                if let value = dict["StickySessionEnabled"] as? Bool {
                    self.stickySessionEnabled = value
                }
                if let value = dict["StickySessionType"] as? String {
                    self.stickySessionType = value
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
        public class UchConfig : Tea.TeaModel {
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
                    map["Type"] = self.type!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var configManagedEnabled: Bool?

        public var connectionDrainConfig: ListServerGroupsResponseBody.ServerGroups.ConnectionDrainConfig?

        public var createTime: String?

        public var crossZoneEnabled: Bool?

        public var healthCheckConfig: ListServerGroupsResponseBody.ServerGroups.HealthCheckConfig?

        public var ipv6Enabled: Bool?

        public var protocol_: String?

        public var relatedLoadBalancerIds: [String]?

        public var resourceGroupId: String?

        public var scheduler: String?

        public var serverCount: Int32?

        public var serverGroupId: String?

        public var serverGroupName: String?

        public var serverGroupStatus: String?

        public var serverGroupType: String?

        public var serviceName: String?

        public var slowStartConfig: ListServerGroupsResponseBody.ServerGroups.SlowStartConfig?

        public var stickySessionConfig: ListServerGroupsResponseBody.ServerGroups.StickySessionConfig?

        public var tags: [ListServerGroupsResponseBody.ServerGroups.Tags]?

        public var uchConfig: ListServerGroupsResponseBody.ServerGroups.UchConfig?

        public var upstreamKeepaliveEnabled: Bool?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.connectionDrainConfig?.validate()
            try self.healthCheckConfig?.validate()
            try self.slowStartConfig?.validate()
            try self.stickySessionConfig?.validate()
            try self.uchConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configManagedEnabled != nil {
                map["ConfigManagedEnabled"] = self.configManagedEnabled!
            }
            if self.connectionDrainConfig != nil {
                map["ConnectionDrainConfig"] = self.connectionDrainConfig?.toMap()
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.crossZoneEnabled != nil {
                map["CrossZoneEnabled"] = self.crossZoneEnabled!
            }
            if self.healthCheckConfig != nil {
                map["HealthCheckConfig"] = self.healthCheckConfig?.toMap()
            }
            if self.ipv6Enabled != nil {
                map["Ipv6Enabled"] = self.ipv6Enabled!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
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
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.slowStartConfig != nil {
                map["SlowStartConfig"] = self.slowStartConfig?.toMap()
            }
            if self.stickySessionConfig != nil {
                map["StickySessionConfig"] = self.stickySessionConfig?.toMap()
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.uchConfig != nil {
                map["UchConfig"] = self.uchConfig?.toMap()
            }
            if self.upstreamKeepaliveEnabled != nil {
                map["UpstreamKeepaliveEnabled"] = self.upstreamKeepaliveEnabled!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfigManagedEnabled"] as? Bool {
                self.configManagedEnabled = value
            }
            if let value = dict["ConnectionDrainConfig"] as? [String: Any?] {
                var model = ListServerGroupsResponseBody.ServerGroups.ConnectionDrainConfig()
                model.fromMap(value)
                self.connectionDrainConfig = model
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CrossZoneEnabled"] as? Bool {
                self.crossZoneEnabled = value
            }
            if let value = dict["HealthCheckConfig"] as? [String: Any?] {
                var model = ListServerGroupsResponseBody.ServerGroups.HealthCheckConfig()
                model.fromMap(value)
                self.healthCheckConfig = model
            }
            if let value = dict["Ipv6Enabled"] as? Bool {
                self.ipv6Enabled = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
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
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["SlowStartConfig"] as? [String: Any?] {
                var model = ListServerGroupsResponseBody.ServerGroups.SlowStartConfig()
                model.fromMap(value)
                self.slowStartConfig = model
            }
            if let value = dict["StickySessionConfig"] as? [String: Any?] {
                var model = ListServerGroupsResponseBody.ServerGroups.StickySessionConfig()
                model.fromMap(value)
                self.stickySessionConfig = model
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
            if let value = dict["UchConfig"] as? [String: Any?] {
                var model = ListServerGroupsResponseBody.ServerGroups.UchConfig()
                model.fromMap(value)
                self.uchConfig = model
            }
            if let value = dict["UpstreamKeepaliveEnabled"] as? Bool {
                self.upstreamKeepaliveEnabled = value
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

public class ListSystemSecurityPoliciesResponseBody : Tea.TeaModel {
    public class SecurityPolicies : Tea.TeaModel {
        public var ciphers: [String]?

        public var securityPolicyId: String?

        public var TLSVersions: [String]?

        public override init() {
            super.init()
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
            if self.TLSVersions != nil {
                map["TLSVersions"] = self.TLSVersions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ciphers"] as? [String] {
                self.ciphers = value
            }
            if let value = dict["SecurityPolicyId"] as? String {
                self.securityPolicyId = value
            }
            if let value = dict["TLSVersions"] as? [String] {
                self.TLSVersions = value
            }
        }
    }
    public var requestId: String?

    public var securityPolicies: [ListSystemSecurityPoliciesResponseBody.SecurityPolicies]?

    public override init() {
        super.init()
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
            var tmp : [ListSystemSecurityPoliciesResponseBody.SecurityPolicies] = []
            for v in value {
                if v != nil {
                    var model = ListSystemSecurityPoliciesResponseBody.SecurityPolicies()
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

public class ListSystemSecurityPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSystemSecurityPoliciesResponseBody?

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
            var model = ListSystemSecurityPoliciesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagKeysRequest : Tea.TeaModel {
    public var category: String?

    public var keyword: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ListTagKeysResponseBody : Tea.TeaModel {
    public class TagKeys : Tea.TeaModel {
        public var category: String?

        public var tagKey: String?

        public override init() {
            super.init()
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
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var tagKeys: [ListTagKeysResponseBody.TagKeys]?

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
        if self.tagKeys != nil {
            var tmp : [Any] = []
            for k in self.tagKeys! {
                tmp.append(k.toMap())
            }
            map["TagKeys"] = tmp
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
        if let value = dict["TagKeys"] as? [Any?] {
            var tmp : [ListTagKeysResponseBody.TagKeys] = []
            for v in value {
                if v != nil {
                    var model = ListTagKeysResponseBody.TagKeys()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tagKeys = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListTagKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagKeysResponseBody?

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
            var model = ListTagKeysResponseBody()
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

public class ListTagValuesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceId: String?

    public var resourceType: String?

    public var tagKey: String?

    public override init() {
        super.init()
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
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
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
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? String {
            self.tagKey = value
        }
    }
}

public class ListTagValuesResponseBody : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var tagValues: [String]?

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
        if self.tagValues != nil {
            map["TagValues"] = self.tagValues!
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
        if let value = dict["TagValues"] as? [String] {
            self.tagValues = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListTagValuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagValuesResponseBody?

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
            var model = ListTagValuesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class LoadBalancerJoinSecurityGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var loadBalancerId: String?

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

public class ModifyCapacityReservationRequest : Tea.TeaModel {
    public class MinimumLoadBalancerCapacity : Tea.TeaModel {
        public var capacityUnits: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capacityUnits != nil {
                map["CapacityUnits"] = self.capacityUnits!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CapacityUnits"] as? Int32 {
                self.capacityUnits = value
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var loadBalancerId: String?

    public var minimumLoadBalancerCapacity: ModifyCapacityReservationRequest.MinimumLoadBalancerCapacity?

    public var resetCapacityReservation: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.minimumLoadBalancerCapacity?.validate()
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
        if self.minimumLoadBalancerCapacity != nil {
            map["MinimumLoadBalancerCapacity"] = self.minimumLoadBalancerCapacity?.toMap()
        }
        if self.resetCapacityReservation != nil {
            map["ResetCapacityReservation"] = self.resetCapacityReservation!
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
        if let value = dict["MinimumLoadBalancerCapacity"] as? [String: Any?] {
            var model = ModifyCapacityReservationRequest.MinimumLoadBalancerCapacity()
            model.fromMap(value)
            self.minimumLoadBalancerCapacity = model
        }
        if let value = dict["ResetCapacityReservation"] as? Bool {
            self.resetCapacityReservation = value
        }
    }
}

public class ModifyCapacityReservationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyCapacityReservationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCapacityReservationResponseBody?

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
            var model = ModifyCapacityReservationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MoveResourceGroupRequest : Tea.TeaModel {
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

public class RemoveEntriesFromAclRequest : Tea.TeaModel {
    public var aclId: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public var entries: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.entries != nil {
            map["Entries"] = self.entries!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["Entries"] as? [String] {
            self.entries = value
        }
    }
}

public class RemoveEntriesFromAclResponseBody : Tea.TeaModel {
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

public class RemoveEntriesFromAclResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveEntriesFromAclResponseBody?

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
            var model = RemoveEntriesFromAclResponseBody()
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

    public override init() {
        super.init()
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

public class ReplaceServersInServerGroupRequest : Tea.TeaModel {
    public class AddedServers : Tea.TeaModel {
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
    public class RemovedServers : Tea.TeaModel {
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
    public var addedServers: [ReplaceServersInServerGroupRequest.AddedServers]?

    public var clientToken: String?

    public var dryRun: Bool?

    public var removedServers: [ReplaceServersInServerGroupRequest.RemovedServers]?

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
        if self.addedServers != nil {
            var tmp : [Any] = []
            for k in self.addedServers! {
                tmp.append(k.toMap())
            }
            map["AddedServers"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.removedServers != nil {
            var tmp : [Any] = []
            for k in self.removedServers! {
                tmp.append(k.toMap())
            }
            map["RemovedServers"] = tmp
        }
        if self.serverGroupId != nil {
            map["ServerGroupId"] = self.serverGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddedServers"] as? [Any?] {
            var tmp : [ReplaceServersInServerGroupRequest.AddedServers] = []
            for v in value {
                if v != nil {
                    var model = ReplaceServersInServerGroupRequest.AddedServers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.addedServers = tmp
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["RemovedServers"] as? [Any?] {
            var tmp : [ReplaceServersInServerGroupRequest.RemovedServers] = []
            for v in value {
                if v != nil {
                    var model = ReplaceServersInServerGroupRequest.RemovedServers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.removedServers = tmp
        }
        if let value = dict["ServerGroupId"] as? String {
            self.serverGroupId = value
        }
    }
}

public class ReplaceServersInServerGroupResponseBody : Tea.TeaModel {
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

public class ReplaceServersInServerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReplaceServersInServerGroupResponseBody?

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
            var model = ReplaceServersInServerGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartListenerRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var listenerId: String?

    public override init() {
        super.init()
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

    public override init() {
        super.init()
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

public class UnTagResourcesRequest : Tea.TeaModel {
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
    public var all: Bool?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [UnTagResourcesRequest.Tag]?

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
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [UnTagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = UnTagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TagKey"] as? [String] {
            self.tagKey = value
        }
    }
}

public class UnTagResourcesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UnTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnTagResourcesResponseBody?

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
            var model = UnTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAScriptsRequest : Tea.TeaModel {
    public class AScripts : Tea.TeaModel {
        public class ExtAttributes : Tea.TeaModel {
            public var attributeKey: String?

            public var attributeValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attributeKey != nil {
                    map["AttributeKey"] = self.attributeKey!
                }
                if self.attributeValue != nil {
                    map["AttributeValue"] = self.attributeValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttributeKey"] as? String {
                    self.attributeKey = value
                }
                if let value = dict["AttributeValue"] as? String {
                    self.attributeValue = value
                }
            }
        }
        public var AScriptId: String?

        public var AScriptName: String?

        public var enabled: Bool?

        public var extAttributeEnabled: Bool?

        public var extAttributes: [UpdateAScriptsRequest.AScripts.ExtAttributes]?

        public var scriptContent: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.AScriptId != nil {
                map["AScriptId"] = self.AScriptId!
            }
            if self.AScriptName != nil {
                map["AScriptName"] = self.AScriptName!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.extAttributeEnabled != nil {
                map["ExtAttributeEnabled"] = self.extAttributeEnabled!
            }
            if self.extAttributes != nil {
                var tmp : [Any] = []
                for k in self.extAttributes! {
                    tmp.append(k.toMap())
                }
                map["ExtAttributes"] = tmp
            }
            if self.scriptContent != nil {
                map["ScriptContent"] = self.scriptContent!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AScriptId"] as? String {
                self.AScriptId = value
            }
            if let value = dict["AScriptName"] as? String {
                self.AScriptName = value
            }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["ExtAttributeEnabled"] as? Bool {
                self.extAttributeEnabled = value
            }
            if let value = dict["ExtAttributes"] as? [Any?] {
                var tmp : [UpdateAScriptsRequest.AScripts.ExtAttributes] = []
                for v in value {
                    if v != nil {
                        var model = UpdateAScriptsRequest.AScripts.ExtAttributes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.extAttributes = tmp
            }
            if let value = dict["ScriptContent"] as? String {
                self.scriptContent = value
            }
        }
    }
    public var AScripts: [UpdateAScriptsRequest.AScripts]?

    public var clientToken: String?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.AScripts != nil {
            var tmp : [Any] = []
            for k in self.AScripts! {
                tmp.append(k.toMap())
            }
            map["AScripts"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AScripts"] as? [Any?] {
            var tmp : [UpdateAScriptsRequest.AScripts] = []
            for v in value {
                if v != nil {
                    var model = UpdateAScriptsRequest.AScripts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.AScripts = tmp
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class UpdateAScriptsResponseBody : Tea.TeaModel {
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

public class UpdateAScriptsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAScriptsResponseBody?

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
            var model = UpdateAScriptsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAclAttributeRequest : Tea.TeaModel {
    public var aclId: String?

    public var aclName: String?

    public var clientToken: String?

    public var dryRun: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclName != nil {
            map["AclName"] = self.aclName!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["AclName"] as? String {
            self.aclName = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
    }
}

public class UpdateAclAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpdateAclAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAclAttributeResponseBody?

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
            var model = UpdateAclAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateHealthCheckTemplateAttributeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var healthCheckCodes: [String]?

    public var healthCheckConnectPort: Int32?

    public var healthCheckHost: String?

    public var healthCheckHttpVersion: String?

    public var healthCheckInterval: Int32?

    public var healthCheckMethod: String?

    public var healthCheckPath: String?

    public var healthCheckProtocol: String?

    public var healthCheckTemplateId: String?

    public var healthCheckTemplateName: String?

    public var healthCheckTimeout: Int32?

    public var healthyThreshold: Int32?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.healthCheckCodes != nil {
            map["HealthCheckCodes"] = self.healthCheckCodes!
        }
        if self.healthCheckConnectPort != nil {
            map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
        }
        if self.healthCheckHost != nil {
            map["HealthCheckHost"] = self.healthCheckHost!
        }
        if self.healthCheckHttpVersion != nil {
            map["HealthCheckHttpVersion"] = self.healthCheckHttpVersion!
        }
        if self.healthCheckInterval != nil {
            map["HealthCheckInterval"] = self.healthCheckInterval!
        }
        if self.healthCheckMethod != nil {
            map["HealthCheckMethod"] = self.healthCheckMethod!
        }
        if self.healthCheckPath != nil {
            map["HealthCheckPath"] = self.healthCheckPath!
        }
        if self.healthCheckProtocol != nil {
            map["HealthCheckProtocol"] = self.healthCheckProtocol!
        }
        if self.healthCheckTemplateId != nil {
            map["HealthCheckTemplateId"] = self.healthCheckTemplateId!
        }
        if self.healthCheckTemplateName != nil {
            map["HealthCheckTemplateName"] = self.healthCheckTemplateName!
        }
        if self.healthCheckTimeout != nil {
            map["HealthCheckTimeout"] = self.healthCheckTimeout!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
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
        if let value = dict["HealthCheckCodes"] as? [String] {
            self.healthCheckCodes = value
        }
        if let value = dict["HealthCheckConnectPort"] as? Int32 {
            self.healthCheckConnectPort = value
        }
        if let value = dict["HealthCheckHost"] as? String {
            self.healthCheckHost = value
        }
        if let value = dict["HealthCheckHttpVersion"] as? String {
            self.healthCheckHttpVersion = value
        }
        if let value = dict["HealthCheckInterval"] as? Int32 {
            self.healthCheckInterval = value
        }
        if let value = dict["HealthCheckMethod"] as? String {
            self.healthCheckMethod = value
        }
        if let value = dict["HealthCheckPath"] as? String {
            self.healthCheckPath = value
        }
        if let value = dict["HealthCheckProtocol"] as? String {
            self.healthCheckProtocol = value
        }
        if let value = dict["HealthCheckTemplateId"] as? String {
            self.healthCheckTemplateId = value
        }
        if let value = dict["HealthCheckTemplateName"] as? String {
            self.healthCheckTemplateName = value
        }
        if let value = dict["HealthCheckTimeout"] as? Int32 {
            self.healthCheckTimeout = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
    }
}

public class UpdateHealthCheckTemplateAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpdateHealthCheckTemplateAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateHealthCheckTemplateAttributeResponseBody?

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
            var model = UpdateHealthCheckTemplateAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateListenerAttributeRequest : Tea.TeaModel {
    public class CaCertificates : Tea.TeaModel {
        public var certificateId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertificateId"] as? String {
                self.certificateId = value
            }
        }
    }
    public class Certificates : Tea.TeaModel {
        public var certificateId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertificateId"] as? String {
                self.certificateId = value
            }
        }
    }
    public class DefaultActions : Tea.TeaModel {
        public class ForwardGroupConfig : Tea.TeaModel {
            public class ServerGroupTuples : Tea.TeaModel {
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
                    if self.serverGroupId != nil {
                        map["ServerGroupId"] = self.serverGroupId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ServerGroupId"] as? String {
                        self.serverGroupId = value
                    }
                }
            }
            public var serverGroupTuples: [UpdateListenerAttributeRequest.DefaultActions.ForwardGroupConfig.ServerGroupTuples]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.serverGroupTuples != nil {
                    var tmp : [Any] = []
                    for k in self.serverGroupTuples! {
                        tmp.append(k.toMap())
                    }
                    map["ServerGroupTuples"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ServerGroupTuples"] as? [Any?] {
                    var tmp : [UpdateListenerAttributeRequest.DefaultActions.ForwardGroupConfig.ServerGroupTuples] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateListenerAttributeRequest.DefaultActions.ForwardGroupConfig.ServerGroupTuples()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.serverGroupTuples = tmp
                }
            }
        }
        public var forwardGroupConfig: UpdateListenerAttributeRequest.DefaultActions.ForwardGroupConfig?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.forwardGroupConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.forwardGroupConfig != nil {
                map["ForwardGroupConfig"] = self.forwardGroupConfig?.toMap()
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ForwardGroupConfig"] as? [String: Any?] {
                var model = UpdateListenerAttributeRequest.DefaultActions.ForwardGroupConfig()
                model.fromMap(value)
                self.forwardGroupConfig = model
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class QuicConfig : Tea.TeaModel {
        public var quicListenerId: String?

        public var quicUpgradeEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.quicListenerId != nil {
                map["QuicListenerId"] = self.quicListenerId!
            }
            if self.quicUpgradeEnabled != nil {
                map["QuicUpgradeEnabled"] = self.quicUpgradeEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["QuicListenerId"] as? String {
                self.quicListenerId = value
            }
            if let value = dict["QuicUpgradeEnabled"] as? Bool {
                self.quicUpgradeEnabled = value
            }
        }
    }
    public class XForwardedForConfig : Tea.TeaModel {
        public var XForwardedForClientCertClientVerifyAlias: String?

        public var XForwardedForClientCertClientVerifyEnabled: Bool?

        public var XForwardedForClientCertFingerprintAlias: String?

        public var XForwardedForClientCertFingerprintEnabled: Bool?

        public var XForwardedForClientCertIssuerDNAlias: String?

        public var XForwardedForClientCertIssuerDNEnabled: Bool?

        public var XForwardedForClientCertSubjectDNAlias: String?

        public var XForwardedForClientCertSubjectDNEnabled: Bool?

        public var XForwardedForClientSourceIpsEnabled: Bool?

        public var XForwardedForClientSourceIpsTrusted: String?

        public var XForwardedForClientSrcPortEnabled: Bool?

        public var XForwardedForEnabled: Bool?

        public var XForwardedForHostEnabled: Bool?

        public var XForwardedForProcessingMode: String?

        public var XForwardedForProtoEnabled: Bool?

        public var XForwardedForSLBIdEnabled: Bool?

        public var XForwardedForSLBPortEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.XForwardedForClientCertClientVerifyAlias != nil {
                map["XForwardedForClientCertClientVerifyAlias"] = self.XForwardedForClientCertClientVerifyAlias!
            }
            if self.XForwardedForClientCertClientVerifyEnabled != nil {
                map["XForwardedForClientCertClientVerifyEnabled"] = self.XForwardedForClientCertClientVerifyEnabled!
            }
            if self.XForwardedForClientCertFingerprintAlias != nil {
                map["XForwardedForClientCertFingerprintAlias"] = self.XForwardedForClientCertFingerprintAlias!
            }
            if self.XForwardedForClientCertFingerprintEnabled != nil {
                map["XForwardedForClientCertFingerprintEnabled"] = self.XForwardedForClientCertFingerprintEnabled!
            }
            if self.XForwardedForClientCertIssuerDNAlias != nil {
                map["XForwardedForClientCertIssuerDNAlias"] = self.XForwardedForClientCertIssuerDNAlias!
            }
            if self.XForwardedForClientCertIssuerDNEnabled != nil {
                map["XForwardedForClientCertIssuerDNEnabled"] = self.XForwardedForClientCertIssuerDNEnabled!
            }
            if self.XForwardedForClientCertSubjectDNAlias != nil {
                map["XForwardedForClientCertSubjectDNAlias"] = self.XForwardedForClientCertSubjectDNAlias!
            }
            if self.XForwardedForClientCertSubjectDNEnabled != nil {
                map["XForwardedForClientCertSubjectDNEnabled"] = self.XForwardedForClientCertSubjectDNEnabled!
            }
            if self.XForwardedForClientSourceIpsEnabled != nil {
                map["XForwardedForClientSourceIpsEnabled"] = self.XForwardedForClientSourceIpsEnabled!
            }
            if self.XForwardedForClientSourceIpsTrusted != nil {
                map["XForwardedForClientSourceIpsTrusted"] = self.XForwardedForClientSourceIpsTrusted!
            }
            if self.XForwardedForClientSrcPortEnabled != nil {
                map["XForwardedForClientSrcPortEnabled"] = self.XForwardedForClientSrcPortEnabled!
            }
            if self.XForwardedForEnabled != nil {
                map["XForwardedForEnabled"] = self.XForwardedForEnabled!
            }
            if self.XForwardedForHostEnabled != nil {
                map["XForwardedForHostEnabled"] = self.XForwardedForHostEnabled!
            }
            if self.XForwardedForProcessingMode != nil {
                map["XForwardedForProcessingMode"] = self.XForwardedForProcessingMode!
            }
            if self.XForwardedForProtoEnabled != nil {
                map["XForwardedForProtoEnabled"] = self.XForwardedForProtoEnabled!
            }
            if self.XForwardedForSLBIdEnabled != nil {
                map["XForwardedForSLBIdEnabled"] = self.XForwardedForSLBIdEnabled!
            }
            if self.XForwardedForSLBPortEnabled != nil {
                map["XForwardedForSLBPortEnabled"] = self.XForwardedForSLBPortEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["XForwardedForClientCertClientVerifyAlias"] as? String {
                self.XForwardedForClientCertClientVerifyAlias = value
            }
            if let value = dict["XForwardedForClientCertClientVerifyEnabled"] as? Bool {
                self.XForwardedForClientCertClientVerifyEnabled = value
            }
            if let value = dict["XForwardedForClientCertFingerprintAlias"] as? String {
                self.XForwardedForClientCertFingerprintAlias = value
            }
            if let value = dict["XForwardedForClientCertFingerprintEnabled"] as? Bool {
                self.XForwardedForClientCertFingerprintEnabled = value
            }
            if let value = dict["XForwardedForClientCertIssuerDNAlias"] as? String {
                self.XForwardedForClientCertIssuerDNAlias = value
            }
            if let value = dict["XForwardedForClientCertIssuerDNEnabled"] as? Bool {
                self.XForwardedForClientCertIssuerDNEnabled = value
            }
            if let value = dict["XForwardedForClientCertSubjectDNAlias"] as? String {
                self.XForwardedForClientCertSubjectDNAlias = value
            }
            if let value = dict["XForwardedForClientCertSubjectDNEnabled"] as? Bool {
                self.XForwardedForClientCertSubjectDNEnabled = value
            }
            if let value = dict["XForwardedForClientSourceIpsEnabled"] as? Bool {
                self.XForwardedForClientSourceIpsEnabled = value
            }
            if let value = dict["XForwardedForClientSourceIpsTrusted"] as? String {
                self.XForwardedForClientSourceIpsTrusted = value
            }
            if let value = dict["XForwardedForClientSrcPortEnabled"] as? Bool {
                self.XForwardedForClientSrcPortEnabled = value
            }
            if let value = dict["XForwardedForEnabled"] as? Bool {
                self.XForwardedForEnabled = value
            }
            if let value = dict["XForwardedForHostEnabled"] as? Bool {
                self.XForwardedForHostEnabled = value
            }
            if let value = dict["XForwardedForProcessingMode"] as? String {
                self.XForwardedForProcessingMode = value
            }
            if let value = dict["XForwardedForProtoEnabled"] as? Bool {
                self.XForwardedForProtoEnabled = value
            }
            if let value = dict["XForwardedForSLBIdEnabled"] as? Bool {
                self.XForwardedForSLBIdEnabled = value
            }
            if let value = dict["XForwardedForSLBPortEnabled"] as? Bool {
                self.XForwardedForSLBPortEnabled = value
            }
        }
    }
    public var caCertificates: [UpdateListenerAttributeRequest.CaCertificates]?

    public var caEnabled: Bool?

    public var certificates: [UpdateListenerAttributeRequest.Certificates]?

    public var clientToken: String?

    public var defaultActions: [UpdateListenerAttributeRequest.DefaultActions]?

    public var dryRun: Bool?

    public var gzipEnabled: Bool?

    public var http2Enabled: Bool?

    public var idleTimeout: Int32?

    public var listenerDescription: String?

    public var listenerId: String?

    public var quicConfig: UpdateListenerAttributeRequest.QuicConfig?

    public var requestTimeout: Int32?

    public var securityPolicyId: String?

    public var XForwardedForConfig: UpdateListenerAttributeRequest.XForwardedForConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.quicConfig?.validate()
        try self.XForwardedForConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caCertificates != nil {
            var tmp : [Any] = []
            for k in self.caCertificates! {
                tmp.append(k.toMap())
            }
            map["CaCertificates"] = tmp
        }
        if self.caEnabled != nil {
            map["CaEnabled"] = self.caEnabled!
        }
        if self.certificates != nil {
            var tmp : [Any] = []
            for k in self.certificates! {
                tmp.append(k.toMap())
            }
            map["Certificates"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.defaultActions != nil {
            var tmp : [Any] = []
            for k in self.defaultActions! {
                tmp.append(k.toMap())
            }
            map["DefaultActions"] = tmp
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.gzipEnabled != nil {
            map["GzipEnabled"] = self.gzipEnabled!
        }
        if self.http2Enabled != nil {
            map["Http2Enabled"] = self.http2Enabled!
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
        if self.quicConfig != nil {
            map["QuicConfig"] = self.quicConfig?.toMap()
        }
        if self.requestTimeout != nil {
            map["RequestTimeout"] = self.requestTimeout!
        }
        if self.securityPolicyId != nil {
            map["SecurityPolicyId"] = self.securityPolicyId!
        }
        if self.XForwardedForConfig != nil {
            map["XForwardedForConfig"] = self.XForwardedForConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CaCertificates"] as? [Any?] {
            var tmp : [UpdateListenerAttributeRequest.CaCertificates] = []
            for v in value {
                if v != nil {
                    var model = UpdateListenerAttributeRequest.CaCertificates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.caCertificates = tmp
        }
        if let value = dict["CaEnabled"] as? Bool {
            self.caEnabled = value
        }
        if let value = dict["Certificates"] as? [Any?] {
            var tmp : [UpdateListenerAttributeRequest.Certificates] = []
            for v in value {
                if v != nil {
                    var model = UpdateListenerAttributeRequest.Certificates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.certificates = tmp
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DefaultActions"] as? [Any?] {
            var tmp : [UpdateListenerAttributeRequest.DefaultActions] = []
            for v in value {
                if v != nil {
                    var model = UpdateListenerAttributeRequest.DefaultActions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.defaultActions = tmp
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["GzipEnabled"] as? Bool {
            self.gzipEnabled = value
        }
        if let value = dict["Http2Enabled"] as? Bool {
            self.http2Enabled = value
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
        if let value = dict["QuicConfig"] as? [String: Any?] {
            var model = UpdateListenerAttributeRequest.QuicConfig()
            model.fromMap(value)
            self.quicConfig = model
        }
        if let value = dict["RequestTimeout"] as? Int32 {
            self.requestTimeout = value
        }
        if let value = dict["SecurityPolicyId"] as? String {
            self.securityPolicyId = value
        }
        if let value = dict["XForwardedForConfig"] as? [String: Any?] {
            var model = UpdateListenerAttributeRequest.XForwardedForConfig()
            model.fromMap(value)
            self.XForwardedForConfig = model
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

public class UpdateListenerLogConfigRequest : Tea.TeaModel {
    public class AccessLogTracingConfig : Tea.TeaModel {
        public var tracingEnabled: Bool?

        public var tracingSample: Int32?

        public var tracingType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tracingEnabled != nil {
                map["TracingEnabled"] = self.tracingEnabled!
            }
            if self.tracingSample != nil {
                map["TracingSample"] = self.tracingSample!
            }
            if self.tracingType != nil {
                map["TracingType"] = self.tracingType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TracingEnabled"] as? Bool {
                self.tracingEnabled = value
            }
            if let value = dict["TracingSample"] as? Int32 {
                self.tracingSample = value
            }
            if let value = dict["TracingType"] as? String {
                self.tracingType = value
            }
        }
    }
    public var accessLogRecordCustomizedHeadersEnabled: Bool?

    public var accessLogTracingConfig: UpdateListenerLogConfigRequest.AccessLogTracingConfig?

    public var clientToken: String?

    public var dryRun: Bool?

    public var listenerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessLogTracingConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessLogRecordCustomizedHeadersEnabled != nil {
            map["AccessLogRecordCustomizedHeadersEnabled"] = self.accessLogRecordCustomizedHeadersEnabled!
        }
        if self.accessLogTracingConfig != nil {
            map["AccessLogTracingConfig"] = self.accessLogTracingConfig?.toMap()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessLogRecordCustomizedHeadersEnabled"] as? Bool {
            self.accessLogRecordCustomizedHeadersEnabled = value
        }
        if let value = dict["AccessLogTracingConfig"] as? [String: Any?] {
            var model = UpdateListenerLogConfigRequest.AccessLogTracingConfig()
            model.fromMap(value)
            self.accessLogTracingConfig = model
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
    }
}

public class UpdateListenerLogConfigResponseBody : Tea.TeaModel {
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

public class UpdateListenerLogConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateListenerLogConfigResponseBody?

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
            var model = UpdateListenerLogConfigResponseBody()
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

    public var dryRun: String?

    public var loadBalancerId: String?

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
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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
    public var clientToken: String?

    public var dryRun: Bool?

    public var loadBalancerId: String?

    public var loadBalancerName: String?

    public var modificationProtectionConfig: UpdateLoadBalancerAttributeRequest.ModificationProtectionConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.modificationProtectionConfig?.validate()
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
        if self.loadBalancerName != nil {
            map["LoadBalancerName"] = self.loadBalancerName!
        }
        if self.modificationProtectionConfig != nil {
            map["ModificationProtectionConfig"] = self.modificationProtectionConfig?.toMap()
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
        if let value = dict["LoadBalancerName"] as? String {
            self.loadBalancerName = value
        }
        if let value = dict["ModificationProtectionConfig"] as? [String: Any?] {
            var model = UpdateLoadBalancerAttributeRequest.ModificationProtectionConfig()
            model.fromMap(value)
            self.modificationProtectionConfig = model
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

public class UpdateLoadBalancerEditionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dryRun: Bool?

    public var loadBalancerEdition: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.loadBalancerEdition != nil {
            map["LoadBalancerEdition"] = self.loadBalancerEdition!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if let value = dict["LoadBalancerEdition"] as? String {
            self.loadBalancerEdition = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
    }
}

public class UpdateLoadBalancerEditionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpdateLoadBalancerEditionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLoadBalancerEditionResponseBody?

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
            var model = UpdateLoadBalancerEditionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateLoadBalancerZonesRequest : Tea.TeaModel {
    public class ZoneMappings : Tea.TeaModel {
        public var eipType: String?

        public var intranetAddress: String?

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
            if self.eipType != nil {
                map["EipType"] = self.eipType!
            }
            if self.intranetAddress != nil {
                map["IntranetAddress"] = self.intranetAddress!
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
            if let value = dict["EipType"] as? String {
                self.eipType = value
            }
            if let value = dict["IntranetAddress"] as? String {
                self.intranetAddress = value
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

public class UpdateRuleAttributeRequest : Tea.TeaModel {
    public class RuleActions : Tea.TeaModel {
        public class CorsConfig : Tea.TeaModel {
            public var allowCredentials: String?

            public var allowHeaders: [String]?

            public var allowMethods: [String]?

            public var allowOrigin: [String]?

            public var exposeHeaders: [String]?

            public var maxAge: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowCredentials != nil {
                    map["AllowCredentials"] = self.allowCredentials!
                }
                if self.allowHeaders != nil {
                    map["AllowHeaders"] = self.allowHeaders!
                }
                if self.allowMethods != nil {
                    map["AllowMethods"] = self.allowMethods!
                }
                if self.allowOrigin != nil {
                    map["AllowOrigin"] = self.allowOrigin!
                }
                if self.exposeHeaders != nil {
                    map["ExposeHeaders"] = self.exposeHeaders!
                }
                if self.maxAge != nil {
                    map["MaxAge"] = self.maxAge!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowCredentials"] as? String {
                    self.allowCredentials = value
                }
                if let value = dict["AllowHeaders"] as? [String] {
                    self.allowHeaders = value
                }
                if let value = dict["AllowMethods"] as? [String] {
                    self.allowMethods = value
                }
                if let value = dict["AllowOrigin"] as? [String] {
                    self.allowOrigin = value
                }
                if let value = dict["ExposeHeaders"] as? [String] {
                    self.exposeHeaders = value
                }
                if let value = dict["MaxAge"] as? Int64 {
                    self.maxAge = value
                }
            }
        }
        public class FixedResponseConfig : Tea.TeaModel {
            public var content: String?

            public var contentType: String?

            public var httpCode: String?

            public override init() {
                super.init()
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
                if self.httpCode != nil {
                    map["HttpCode"] = self.httpCode!
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
                if let value = dict["HttpCode"] as? String {
                    self.httpCode = value
                }
            }
        }
        public class ForwardGroupConfig : Tea.TeaModel {
            public class ServerGroupStickySession : Tea.TeaModel {
                public var enabled: Bool?

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
                    if self.enabled != nil {
                        map["Enabled"] = self.enabled!
                    }
                    if self.timeout != nil {
                        map["Timeout"] = self.timeout!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Enabled"] as? Bool {
                        self.enabled = value
                    }
                    if let value = dict["Timeout"] as? Int32 {
                        self.timeout = value
                    }
                }
            }
            public class ServerGroupTuples : Tea.TeaModel {
                public var serverGroupId: String?

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
                    if self.serverGroupId != nil {
                        map["ServerGroupId"] = self.serverGroupId!
                    }
                    if self.weight != nil {
                        map["Weight"] = self.weight!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ServerGroupId"] as? String {
                        self.serverGroupId = value
                    }
                    if let value = dict["Weight"] as? Int32 {
                        self.weight = value
                    }
                }
            }
            public var serverGroupStickySession: UpdateRuleAttributeRequest.RuleActions.ForwardGroupConfig.ServerGroupStickySession?

            public var serverGroupTuples: [UpdateRuleAttributeRequest.RuleActions.ForwardGroupConfig.ServerGroupTuples]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.serverGroupStickySession?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.serverGroupStickySession != nil {
                    map["ServerGroupStickySession"] = self.serverGroupStickySession?.toMap()
                }
                if self.serverGroupTuples != nil {
                    var tmp : [Any] = []
                    for k in self.serverGroupTuples! {
                        tmp.append(k.toMap())
                    }
                    map["ServerGroupTuples"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ServerGroupStickySession"] as? [String: Any?] {
                    var model = UpdateRuleAttributeRequest.RuleActions.ForwardGroupConfig.ServerGroupStickySession()
                    model.fromMap(value)
                    self.serverGroupStickySession = model
                }
                if let value = dict["ServerGroupTuples"] as? [Any?] {
                    var tmp : [UpdateRuleAttributeRequest.RuleActions.ForwardGroupConfig.ServerGroupTuples] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateRuleAttributeRequest.RuleActions.ForwardGroupConfig.ServerGroupTuples()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.serverGroupTuples = tmp
                }
            }
        }
        public class InsertHeaderConfig : Tea.TeaModel {
            public var coverEnabled: Bool?

            public var key: String?

            public var value: String?

            public var valueType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.coverEnabled != nil {
                    map["CoverEnabled"] = self.coverEnabled!
                }
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                if self.valueType != nil {
                    map["ValueType"] = self.valueType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CoverEnabled"] as? Bool {
                    self.coverEnabled = value
                }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
                if let value = dict["ValueType"] as? String {
                    self.valueType = value
                }
            }
        }
        public class RedirectConfig : Tea.TeaModel {
            public var host: String?

            public var httpCode: String?

            public var path: String?

            public var port: String?

            public var protocol_: String?

            public var query: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.host != nil {
                    map["Host"] = self.host!
                }
                if self.httpCode != nil {
                    map["HttpCode"] = self.httpCode!
                }
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.query != nil {
                    map["Query"] = self.query!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Host"] as? String {
                    self.host = value
                }
                if let value = dict["HttpCode"] as? String {
                    self.httpCode = value
                }
                if let value = dict["Path"] as? String {
                    self.path = value
                }
                if let value = dict["Port"] as? String {
                    self.port = value
                }
                if let value = dict["Protocol"] as? String {
                    self.protocol_ = value
                }
                if let value = dict["Query"] as? String {
                    self.query = value
                }
            }
        }
        public class RemoveHeaderConfig : Tea.TeaModel {
            public var key: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
            }
        }
        public class RewriteConfig : Tea.TeaModel {
            public var host: String?

            public var path: String?

            public var query: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.host != nil {
                    map["Host"] = self.host!
                }
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.query != nil {
                    map["Query"] = self.query!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Host"] as? String {
                    self.host = value
                }
                if let value = dict["Path"] as? String {
                    self.path = value
                }
                if let value = dict["Query"] as? String {
                    self.query = value
                }
            }
        }
        public class TrafficLimitConfig : Tea.TeaModel {
            public var perIpQps: Int32?

            public var QPS: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.perIpQps != nil {
                    map["PerIpQps"] = self.perIpQps!
                }
                if self.QPS != nil {
                    map["QPS"] = self.QPS!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PerIpQps"] as? Int32 {
                    self.perIpQps = value
                }
                if let value = dict["QPS"] as? Int32 {
                    self.QPS = value
                }
            }
        }
        public class TrafficMirrorConfig : Tea.TeaModel {
            public class MirrorGroupConfig : Tea.TeaModel {
                public class ServerGroupTuples : Tea.TeaModel {
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
                        if self.serverGroupId != nil {
                            map["ServerGroupId"] = self.serverGroupId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ServerGroupId"] as? String {
                            self.serverGroupId = value
                        }
                    }
                }
                public var serverGroupTuples: [UpdateRuleAttributeRequest.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.serverGroupTuples != nil {
                        var tmp : [Any] = []
                        for k in self.serverGroupTuples! {
                            tmp.append(k.toMap())
                        }
                        map["ServerGroupTuples"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ServerGroupTuples"] as? [Any?] {
                        var tmp : [UpdateRuleAttributeRequest.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples] = []
                        for v in value {
                            if v != nil {
                                var model = UpdateRuleAttributeRequest.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.serverGroupTuples = tmp
                    }
                }
            }
            public var mirrorGroupConfig: UpdateRuleAttributeRequest.RuleActions.TrafficMirrorConfig.MirrorGroupConfig?

            public var targetType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.mirrorGroupConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mirrorGroupConfig != nil {
                    map["MirrorGroupConfig"] = self.mirrorGroupConfig?.toMap()
                }
                if self.targetType != nil {
                    map["TargetType"] = self.targetType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MirrorGroupConfig"] as? [String: Any?] {
                    var model = UpdateRuleAttributeRequest.RuleActions.TrafficMirrorConfig.MirrorGroupConfig()
                    model.fromMap(value)
                    self.mirrorGroupConfig = model
                }
                if let value = dict["TargetType"] as? String {
                    self.targetType = value
                }
            }
        }
        public var corsConfig: UpdateRuleAttributeRequest.RuleActions.CorsConfig?

        public var fixedResponseConfig: UpdateRuleAttributeRequest.RuleActions.FixedResponseConfig?

        public var forwardGroupConfig: UpdateRuleAttributeRequest.RuleActions.ForwardGroupConfig?

        public var insertHeaderConfig: UpdateRuleAttributeRequest.RuleActions.InsertHeaderConfig?

        public var order: Int32?

        public var redirectConfig: UpdateRuleAttributeRequest.RuleActions.RedirectConfig?

        public var removeHeaderConfig: UpdateRuleAttributeRequest.RuleActions.RemoveHeaderConfig?

        public var rewriteConfig: UpdateRuleAttributeRequest.RuleActions.RewriteConfig?

        public var trafficLimitConfig: UpdateRuleAttributeRequest.RuleActions.TrafficLimitConfig?

        public var trafficMirrorConfig: UpdateRuleAttributeRequest.RuleActions.TrafficMirrorConfig?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.corsConfig?.validate()
            try self.fixedResponseConfig?.validate()
            try self.forwardGroupConfig?.validate()
            try self.insertHeaderConfig?.validate()
            try self.redirectConfig?.validate()
            try self.removeHeaderConfig?.validate()
            try self.rewriteConfig?.validate()
            try self.trafficLimitConfig?.validate()
            try self.trafficMirrorConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.corsConfig != nil {
                map["CorsConfig"] = self.corsConfig?.toMap()
            }
            if self.fixedResponseConfig != nil {
                map["FixedResponseConfig"] = self.fixedResponseConfig?.toMap()
            }
            if self.forwardGroupConfig != nil {
                map["ForwardGroupConfig"] = self.forwardGroupConfig?.toMap()
            }
            if self.insertHeaderConfig != nil {
                map["InsertHeaderConfig"] = self.insertHeaderConfig?.toMap()
            }
            if self.order != nil {
                map["Order"] = self.order!
            }
            if self.redirectConfig != nil {
                map["RedirectConfig"] = self.redirectConfig?.toMap()
            }
            if self.removeHeaderConfig != nil {
                map["RemoveHeaderConfig"] = self.removeHeaderConfig?.toMap()
            }
            if self.rewriteConfig != nil {
                map["RewriteConfig"] = self.rewriteConfig?.toMap()
            }
            if self.trafficLimitConfig != nil {
                map["TrafficLimitConfig"] = self.trafficLimitConfig?.toMap()
            }
            if self.trafficMirrorConfig != nil {
                map["TrafficMirrorConfig"] = self.trafficMirrorConfig?.toMap()
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CorsConfig"] as? [String: Any?] {
                var model = UpdateRuleAttributeRequest.RuleActions.CorsConfig()
                model.fromMap(value)
                self.corsConfig = model
            }
            if let value = dict["FixedResponseConfig"] as? [String: Any?] {
                var model = UpdateRuleAttributeRequest.RuleActions.FixedResponseConfig()
                model.fromMap(value)
                self.fixedResponseConfig = model
            }
            if let value = dict["ForwardGroupConfig"] as? [String: Any?] {
                var model = UpdateRuleAttributeRequest.RuleActions.ForwardGroupConfig()
                model.fromMap(value)
                self.forwardGroupConfig = model
            }
            if let value = dict["InsertHeaderConfig"] as? [String: Any?] {
                var model = UpdateRuleAttributeRequest.RuleActions.InsertHeaderConfig()
                model.fromMap(value)
                self.insertHeaderConfig = model
            }
            if let value = dict["Order"] as? Int32 {
                self.order = value
            }
            if let value = dict["RedirectConfig"] as? [String: Any?] {
                var model = UpdateRuleAttributeRequest.RuleActions.RedirectConfig()
                model.fromMap(value)
                self.redirectConfig = model
            }
            if let value = dict["RemoveHeaderConfig"] as? [String: Any?] {
                var model = UpdateRuleAttributeRequest.RuleActions.RemoveHeaderConfig()
                model.fromMap(value)
                self.removeHeaderConfig = model
            }
            if let value = dict["RewriteConfig"] as? [String: Any?] {
                var model = UpdateRuleAttributeRequest.RuleActions.RewriteConfig()
                model.fromMap(value)
                self.rewriteConfig = model
            }
            if let value = dict["TrafficLimitConfig"] as? [String: Any?] {
                var model = UpdateRuleAttributeRequest.RuleActions.TrafficLimitConfig()
                model.fromMap(value)
                self.trafficLimitConfig = model
            }
            if let value = dict["TrafficMirrorConfig"] as? [String: Any?] {
                var model = UpdateRuleAttributeRequest.RuleActions.TrafficMirrorConfig()
                model.fromMap(value)
                self.trafficMirrorConfig = model
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class RuleConditions : Tea.TeaModel {
        public class CookieConfig : Tea.TeaModel {
            public class Values : Tea.TeaModel {
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
            public var values: [UpdateRuleAttributeRequest.RuleConditions.CookieConfig.Values]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.values != nil {
                    var tmp : [Any] = []
                    for k in self.values! {
                        tmp.append(k.toMap())
                    }
                    map["Values"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Values"] as? [Any?] {
                    var tmp : [UpdateRuleAttributeRequest.RuleConditions.CookieConfig.Values] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateRuleAttributeRequest.RuleConditions.CookieConfig.Values()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.values = tmp
                }
            }
        }
        public class HeaderConfig : Tea.TeaModel {
            public var key: String?

            public var values: [String]?

            public override init() {
                super.init()
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
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public class HostConfig : Tea.TeaModel {
            public var values: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public class MethodConfig : Tea.TeaModel {
            public var values: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public class PathConfig : Tea.TeaModel {
            public var values: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public class QueryStringConfig : Tea.TeaModel {
            public class Values : Tea.TeaModel {
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
            public var values: [UpdateRuleAttributeRequest.RuleConditions.QueryStringConfig.Values]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.values != nil {
                    var tmp : [Any] = []
                    for k in self.values! {
                        tmp.append(k.toMap())
                    }
                    map["Values"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Values"] as? [Any?] {
                    var tmp : [UpdateRuleAttributeRequest.RuleConditions.QueryStringConfig.Values] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateRuleAttributeRequest.RuleConditions.QueryStringConfig.Values()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.values = tmp
                }
            }
        }
        public class ResponseHeaderConfig : Tea.TeaModel {
            public var key: String?

            public var values: [String]?

            public override init() {
                super.init()
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
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public class ResponseStatusCodeConfig : Tea.TeaModel {
            public var values: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public class SourceIpConfig : Tea.TeaModel {
            public var values: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.values != nil {
                    map["Values"] = self.values!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Values"] as? [String] {
                    self.values = value
                }
            }
        }
        public var cookieConfig: UpdateRuleAttributeRequest.RuleConditions.CookieConfig?

        public var headerConfig: UpdateRuleAttributeRequest.RuleConditions.HeaderConfig?

        public var hostConfig: UpdateRuleAttributeRequest.RuleConditions.HostConfig?

        public var methodConfig: UpdateRuleAttributeRequest.RuleConditions.MethodConfig?

        public var pathConfig: UpdateRuleAttributeRequest.RuleConditions.PathConfig?

        public var queryStringConfig: UpdateRuleAttributeRequest.RuleConditions.QueryStringConfig?

        public var responseHeaderConfig: UpdateRuleAttributeRequest.RuleConditions.ResponseHeaderConfig?

        public var responseStatusCodeConfig: UpdateRuleAttributeRequest.RuleConditions.ResponseStatusCodeConfig?

        public var sourceIpConfig: UpdateRuleAttributeRequest.RuleConditions.SourceIpConfig?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cookieConfig?.validate()
            try self.headerConfig?.validate()
            try self.hostConfig?.validate()
            try self.methodConfig?.validate()
            try self.pathConfig?.validate()
            try self.queryStringConfig?.validate()
            try self.responseHeaderConfig?.validate()
            try self.responseStatusCodeConfig?.validate()
            try self.sourceIpConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cookieConfig != nil {
                map["CookieConfig"] = self.cookieConfig?.toMap()
            }
            if self.headerConfig != nil {
                map["HeaderConfig"] = self.headerConfig?.toMap()
            }
            if self.hostConfig != nil {
                map["HostConfig"] = self.hostConfig?.toMap()
            }
            if self.methodConfig != nil {
                map["MethodConfig"] = self.methodConfig?.toMap()
            }
            if self.pathConfig != nil {
                map["PathConfig"] = self.pathConfig?.toMap()
            }
            if self.queryStringConfig != nil {
                map["QueryStringConfig"] = self.queryStringConfig?.toMap()
            }
            if self.responseHeaderConfig != nil {
                map["ResponseHeaderConfig"] = self.responseHeaderConfig?.toMap()
            }
            if self.responseStatusCodeConfig != nil {
                map["ResponseStatusCodeConfig"] = self.responseStatusCodeConfig?.toMap()
            }
            if self.sourceIpConfig != nil {
                map["SourceIpConfig"] = self.sourceIpConfig?.toMap()
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CookieConfig"] as? [String: Any?] {
                var model = UpdateRuleAttributeRequest.RuleConditions.CookieConfig()
                model.fromMap(value)
                self.cookieConfig = model
            }
            if let value = dict["HeaderConfig"] as? [String: Any?] {
                var model = UpdateRuleAttributeRequest.RuleConditions.HeaderConfig()
                model.fromMap(value)
                self.headerConfig = model
            }
            if let value = dict["HostConfig"] as? [String: Any?] {
                var model = UpdateRuleAttributeRequest.RuleConditions.HostConfig()
                model.fromMap(value)
                self.hostConfig = model
            }
            if let value = dict["MethodConfig"] as? [String: Any?] {
                var model = UpdateRuleAttributeRequest.RuleConditions.MethodConfig()
                model.fromMap(value)
                self.methodConfig = model
            }
            if let value = dict["PathConfig"] as? [String: Any?] {
                var model = UpdateRuleAttributeRequest.RuleConditions.PathConfig()
                model.fromMap(value)
                self.pathConfig = model
            }
            if let value = dict["QueryStringConfig"] as? [String: Any?] {
                var model = UpdateRuleAttributeRequest.RuleConditions.QueryStringConfig()
                model.fromMap(value)
                self.queryStringConfig = model
            }
            if let value = dict["ResponseHeaderConfig"] as? [String: Any?] {
                var model = UpdateRuleAttributeRequest.RuleConditions.ResponseHeaderConfig()
                model.fromMap(value)
                self.responseHeaderConfig = model
            }
            if let value = dict["ResponseStatusCodeConfig"] as? [String: Any?] {
                var model = UpdateRuleAttributeRequest.RuleConditions.ResponseStatusCodeConfig()
                model.fromMap(value)
                self.responseStatusCodeConfig = model
            }
            if let value = dict["SourceIpConfig"] as? [String: Any?] {
                var model = UpdateRuleAttributeRequest.RuleConditions.SourceIpConfig()
                model.fromMap(value)
                self.sourceIpConfig = model
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var priority: Int32?

    public var ruleActions: [UpdateRuleAttributeRequest.RuleActions]?

    public var ruleConditions: [UpdateRuleAttributeRequest.RuleConditions]?

    public var ruleId: String?

    public var ruleName: String?

    public override init() {
        super.init()
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
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.ruleActions != nil {
            var tmp : [Any] = []
            for k in self.ruleActions! {
                tmp.append(k.toMap())
            }
            map["RuleActions"] = tmp
        }
        if self.ruleConditions != nil {
            var tmp : [Any] = []
            for k in self.ruleConditions! {
                tmp.append(k.toMap())
            }
            map["RuleConditions"] = tmp
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
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
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["RuleActions"] as? [Any?] {
            var tmp : [UpdateRuleAttributeRequest.RuleActions] = []
            for v in value {
                if v != nil {
                    var model = UpdateRuleAttributeRequest.RuleActions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ruleActions = tmp
        }
        if let value = dict["RuleConditions"] as? [Any?] {
            var tmp : [UpdateRuleAttributeRequest.RuleConditions] = []
            for v in value {
                if v != nil {
                    var model = UpdateRuleAttributeRequest.RuleConditions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ruleConditions = tmp
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
    }
}

public class UpdateRuleAttributeResponseBody : Tea.TeaModel {
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

public class UpdateRuleAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRuleAttributeResponseBody?

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
            var model = UpdateRuleAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateRulesAttributeRequest : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public class RuleActions : Tea.TeaModel {
            public class CorsConfig : Tea.TeaModel {
                public var allowCredentials: String?

                public var allowHeaders: [String]?

                public var allowMethods: [String]?

                public var allowOrigin: [String]?

                public var exposeHeaders: [String]?

                public var maxAge: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.allowCredentials != nil {
                        map["AllowCredentials"] = self.allowCredentials!
                    }
                    if self.allowHeaders != nil {
                        map["AllowHeaders"] = self.allowHeaders!
                    }
                    if self.allowMethods != nil {
                        map["AllowMethods"] = self.allowMethods!
                    }
                    if self.allowOrigin != nil {
                        map["AllowOrigin"] = self.allowOrigin!
                    }
                    if self.exposeHeaders != nil {
                        map["ExposeHeaders"] = self.exposeHeaders!
                    }
                    if self.maxAge != nil {
                        map["MaxAge"] = self.maxAge!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AllowCredentials"] as? String {
                        self.allowCredentials = value
                    }
                    if let value = dict["AllowHeaders"] as? [String] {
                        self.allowHeaders = value
                    }
                    if let value = dict["AllowMethods"] as? [String] {
                        self.allowMethods = value
                    }
                    if let value = dict["AllowOrigin"] as? [String] {
                        self.allowOrigin = value
                    }
                    if let value = dict["ExposeHeaders"] as? [String] {
                        self.exposeHeaders = value
                    }
                    if let value = dict["MaxAge"] as? Int64 {
                        self.maxAge = value
                    }
                }
            }
            public class FixedResponseConfig : Tea.TeaModel {
                public var content: String?

                public var contentType: String?

                public var httpCode: String?

                public override init() {
                    super.init()
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
                    if self.httpCode != nil {
                        map["HttpCode"] = self.httpCode!
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
                    if let value = dict["HttpCode"] as? String {
                        self.httpCode = value
                    }
                }
            }
            public class ForwardGroupConfig : Tea.TeaModel {
                public class ServerGroupStickySession : Tea.TeaModel {
                    public var enabled: Bool?

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
                        if self.enabled != nil {
                            map["Enabled"] = self.enabled!
                        }
                        if self.timeout != nil {
                            map["Timeout"] = self.timeout!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Enabled"] as? Bool {
                            self.enabled = value
                        }
                        if let value = dict["Timeout"] as? Int32 {
                            self.timeout = value
                        }
                    }
                }
                public class ServerGroupTuples : Tea.TeaModel {
                    public var serverGroupId: String?

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
                        if self.serverGroupId != nil {
                            map["ServerGroupId"] = self.serverGroupId!
                        }
                        if self.weight != nil {
                            map["Weight"] = self.weight!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ServerGroupId"] as? String {
                            self.serverGroupId = value
                        }
                        if let value = dict["Weight"] as? Int32 {
                            self.weight = value
                        }
                    }
                }
                public var serverGroupStickySession: UpdateRulesAttributeRequest.Rules.RuleActions.ForwardGroupConfig.ServerGroupStickySession?

                public var serverGroupTuples: [UpdateRulesAttributeRequest.Rules.RuleActions.ForwardGroupConfig.ServerGroupTuples]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.serverGroupStickySession?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.serverGroupStickySession != nil {
                        map["ServerGroupStickySession"] = self.serverGroupStickySession?.toMap()
                    }
                    if self.serverGroupTuples != nil {
                        var tmp : [Any] = []
                        for k in self.serverGroupTuples! {
                            tmp.append(k.toMap())
                        }
                        map["ServerGroupTuples"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ServerGroupStickySession"] as? [String: Any?] {
                        var model = UpdateRulesAttributeRequest.Rules.RuleActions.ForwardGroupConfig.ServerGroupStickySession()
                        model.fromMap(value)
                        self.serverGroupStickySession = model
                    }
                    if let value = dict["ServerGroupTuples"] as? [Any?] {
                        var tmp : [UpdateRulesAttributeRequest.Rules.RuleActions.ForwardGroupConfig.ServerGroupTuples] = []
                        for v in value {
                            if v != nil {
                                var model = UpdateRulesAttributeRequest.Rules.RuleActions.ForwardGroupConfig.ServerGroupTuples()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.serverGroupTuples = tmp
                    }
                }
            }
            public class InsertHeaderConfig : Tea.TeaModel {
                public var coverEnabled: Bool?

                public var key: String?

                public var value: String?

                public var valueType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.coverEnabled != nil {
                        map["CoverEnabled"] = self.coverEnabled!
                    }
                    if self.key != nil {
                        map["Key"] = self.key!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    if self.valueType != nil {
                        map["ValueType"] = self.valueType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CoverEnabled"] as? Bool {
                        self.coverEnabled = value
                    }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
                    }
                    if let value = dict["ValueType"] as? String {
                        self.valueType = value
                    }
                }
            }
            public class RedirectConfig : Tea.TeaModel {
                public var host: String?

                public var httpCode: String?

                public var path: String?

                public var port: String?

                public var protocol_: String?

                public var query: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.httpCode != nil {
                        map["HttpCode"] = self.httpCode!
                    }
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.protocol_ != nil {
                        map["Protocol"] = self.protocol_!
                    }
                    if self.query != nil {
                        map["Query"] = self.query!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Host"] as? String {
                        self.host = value
                    }
                    if let value = dict["HttpCode"] as? String {
                        self.httpCode = value
                    }
                    if let value = dict["Path"] as? String {
                        self.path = value
                    }
                    if let value = dict["Port"] as? String {
                        self.port = value
                    }
                    if let value = dict["Protocol"] as? String {
                        self.protocol_ = value
                    }
                    if let value = dict["Query"] as? String {
                        self.query = value
                    }
                }
            }
            public class RemoveHeaderConfig : Tea.TeaModel {
                public var key: String?

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                }
            }
            public class RewriteConfig : Tea.TeaModel {
                public var host: String?

                public var path: String?

                public var query: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.query != nil {
                        map["Query"] = self.query!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Host"] as? String {
                        self.host = value
                    }
                    if let value = dict["Path"] as? String {
                        self.path = value
                    }
                    if let value = dict["Query"] as? String {
                        self.query = value
                    }
                }
            }
            public class TrafficLimitConfig : Tea.TeaModel {
                public var perIpQps: Int32?

                public var QPS: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.perIpQps != nil {
                        map["PerIpQps"] = self.perIpQps!
                    }
                    if self.QPS != nil {
                        map["QPS"] = self.QPS!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PerIpQps"] as? Int32 {
                        self.perIpQps = value
                    }
                    if let value = dict["QPS"] as? Int32 {
                        self.QPS = value
                    }
                }
            }
            public class TrafficMirrorConfig : Tea.TeaModel {
                public class MirrorGroupConfig : Tea.TeaModel {
                    public class ServerGroupTuples : Tea.TeaModel {
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
                            if self.serverGroupId != nil {
                                map["ServerGroupId"] = self.serverGroupId!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["ServerGroupId"] as? String {
                                self.serverGroupId = value
                            }
                        }
                    }
                    public var serverGroupTuples: [UpdateRulesAttributeRequest.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.serverGroupTuples != nil {
                            var tmp : [Any] = []
                            for k in self.serverGroupTuples! {
                                tmp.append(k.toMap())
                            }
                            map["ServerGroupTuples"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ServerGroupTuples"] as? [Any?] {
                            var tmp : [UpdateRulesAttributeRequest.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples] = []
                            for v in value {
                                if v != nil {
                                    var model = UpdateRulesAttributeRequest.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.serverGroupTuples = tmp
                        }
                    }
                }
                public var mirrorGroupConfig: UpdateRulesAttributeRequest.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig?

                public var targetType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.mirrorGroupConfig?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mirrorGroupConfig != nil {
                        map["MirrorGroupConfig"] = self.mirrorGroupConfig?.toMap()
                    }
                    if self.targetType != nil {
                        map["TargetType"] = self.targetType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MirrorGroupConfig"] as? [String: Any?] {
                        var model = UpdateRulesAttributeRequest.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig()
                        model.fromMap(value)
                        self.mirrorGroupConfig = model
                    }
                    if let value = dict["TargetType"] as? String {
                        self.targetType = value
                    }
                }
            }
            public var corsConfig: UpdateRulesAttributeRequest.Rules.RuleActions.CorsConfig?

            public var fixedResponseConfig: UpdateRulesAttributeRequest.Rules.RuleActions.FixedResponseConfig?

            public var forwardGroupConfig: UpdateRulesAttributeRequest.Rules.RuleActions.ForwardGroupConfig?

            public var insertHeaderConfig: UpdateRulesAttributeRequest.Rules.RuleActions.InsertHeaderConfig?

            public var order: Int32?

            public var redirectConfig: UpdateRulesAttributeRequest.Rules.RuleActions.RedirectConfig?

            public var removeHeaderConfig: UpdateRulesAttributeRequest.Rules.RuleActions.RemoveHeaderConfig?

            public var rewriteConfig: UpdateRulesAttributeRequest.Rules.RuleActions.RewriteConfig?

            public var trafficLimitConfig: UpdateRulesAttributeRequest.Rules.RuleActions.TrafficLimitConfig?

            public var trafficMirrorConfig: UpdateRulesAttributeRequest.Rules.RuleActions.TrafficMirrorConfig?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.corsConfig?.validate()
                try self.fixedResponseConfig?.validate()
                try self.forwardGroupConfig?.validate()
                try self.insertHeaderConfig?.validate()
                try self.redirectConfig?.validate()
                try self.removeHeaderConfig?.validate()
                try self.rewriteConfig?.validate()
                try self.trafficLimitConfig?.validate()
                try self.trafficMirrorConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.corsConfig != nil {
                    map["CorsConfig"] = self.corsConfig?.toMap()
                }
                if self.fixedResponseConfig != nil {
                    map["FixedResponseConfig"] = self.fixedResponseConfig?.toMap()
                }
                if self.forwardGroupConfig != nil {
                    map["ForwardGroupConfig"] = self.forwardGroupConfig?.toMap()
                }
                if self.insertHeaderConfig != nil {
                    map["InsertHeaderConfig"] = self.insertHeaderConfig?.toMap()
                }
                if self.order != nil {
                    map["Order"] = self.order!
                }
                if self.redirectConfig != nil {
                    map["RedirectConfig"] = self.redirectConfig?.toMap()
                }
                if self.removeHeaderConfig != nil {
                    map["RemoveHeaderConfig"] = self.removeHeaderConfig?.toMap()
                }
                if self.rewriteConfig != nil {
                    map["RewriteConfig"] = self.rewriteConfig?.toMap()
                }
                if self.trafficLimitConfig != nil {
                    map["TrafficLimitConfig"] = self.trafficLimitConfig?.toMap()
                }
                if self.trafficMirrorConfig != nil {
                    map["TrafficMirrorConfig"] = self.trafficMirrorConfig?.toMap()
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CorsConfig"] as? [String: Any?] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleActions.CorsConfig()
                    model.fromMap(value)
                    self.corsConfig = model
                }
                if let value = dict["FixedResponseConfig"] as? [String: Any?] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleActions.FixedResponseConfig()
                    model.fromMap(value)
                    self.fixedResponseConfig = model
                }
                if let value = dict["ForwardGroupConfig"] as? [String: Any?] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleActions.ForwardGroupConfig()
                    model.fromMap(value)
                    self.forwardGroupConfig = model
                }
                if let value = dict["InsertHeaderConfig"] as? [String: Any?] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleActions.InsertHeaderConfig()
                    model.fromMap(value)
                    self.insertHeaderConfig = model
                }
                if let value = dict["Order"] as? Int32 {
                    self.order = value
                }
                if let value = dict["RedirectConfig"] as? [String: Any?] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleActions.RedirectConfig()
                    model.fromMap(value)
                    self.redirectConfig = model
                }
                if let value = dict["RemoveHeaderConfig"] as? [String: Any?] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleActions.RemoveHeaderConfig()
                    model.fromMap(value)
                    self.removeHeaderConfig = model
                }
                if let value = dict["RewriteConfig"] as? [String: Any?] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleActions.RewriteConfig()
                    model.fromMap(value)
                    self.rewriteConfig = model
                }
                if let value = dict["TrafficLimitConfig"] as? [String: Any?] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleActions.TrafficLimitConfig()
                    model.fromMap(value)
                    self.trafficLimitConfig = model
                }
                if let value = dict["TrafficMirrorConfig"] as? [String: Any?] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleActions.TrafficMirrorConfig()
                    model.fromMap(value)
                    self.trafficMirrorConfig = model
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class RuleConditions : Tea.TeaModel {
            public class CookieConfig : Tea.TeaModel {
                public class Values : Tea.TeaModel {
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
                public var values: [UpdateRulesAttributeRequest.Rules.RuleConditions.CookieConfig.Values]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        var tmp : [Any] = []
                        for k in self.values! {
                            tmp.append(k.toMap())
                        }
                        map["Values"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [Any?] {
                        var tmp : [UpdateRulesAttributeRequest.Rules.RuleConditions.CookieConfig.Values] = []
                        for v in value {
                            if v != nil {
                                var model = UpdateRulesAttributeRequest.Rules.RuleConditions.CookieConfig.Values()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.values = tmp
                    }
                }
            }
            public class HeaderConfig : Tea.TeaModel {
                public var key: String?

                public var values: [String]?

                public override init() {
                    super.init()
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
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public class HostConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public class MethodConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public class PathConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public class QueryStringConfig : Tea.TeaModel {
                public class Values : Tea.TeaModel {
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
                public var values: [UpdateRulesAttributeRequest.Rules.RuleConditions.QueryStringConfig.Values]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        var tmp : [Any] = []
                        for k in self.values! {
                            tmp.append(k.toMap())
                        }
                        map["Values"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [Any?] {
                        var tmp : [UpdateRulesAttributeRequest.Rules.RuleConditions.QueryStringConfig.Values] = []
                        for v in value {
                            if v != nil {
                                var model = UpdateRulesAttributeRequest.Rules.RuleConditions.QueryStringConfig.Values()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.values = tmp
                    }
                }
            }
            public class ResponseHeaderConfig : Tea.TeaModel {
                public var key: String?

                public var values: [String]?

                public override init() {
                    super.init()
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
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Key"] as? String {
                        self.key = value
                    }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public class ResponseStatusCodeConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public class SourceIpConfig : Tea.TeaModel {
                public var values: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.values != nil {
                        map["Values"] = self.values!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Values"] as? [String] {
                        self.values = value
                    }
                }
            }
            public var cookieConfig: UpdateRulesAttributeRequest.Rules.RuleConditions.CookieConfig?

            public var headerConfig: UpdateRulesAttributeRequest.Rules.RuleConditions.HeaderConfig?

            public var hostConfig: UpdateRulesAttributeRequest.Rules.RuleConditions.HostConfig?

            public var methodConfig: UpdateRulesAttributeRequest.Rules.RuleConditions.MethodConfig?

            public var pathConfig: UpdateRulesAttributeRequest.Rules.RuleConditions.PathConfig?

            public var queryStringConfig: UpdateRulesAttributeRequest.Rules.RuleConditions.QueryStringConfig?

            public var responseHeaderConfig: UpdateRulesAttributeRequest.Rules.RuleConditions.ResponseHeaderConfig?

            public var responseStatusCodeConfig: UpdateRulesAttributeRequest.Rules.RuleConditions.ResponseStatusCodeConfig?

            public var sourceIpConfig: UpdateRulesAttributeRequest.Rules.RuleConditions.SourceIpConfig?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cookieConfig?.validate()
                try self.headerConfig?.validate()
                try self.hostConfig?.validate()
                try self.methodConfig?.validate()
                try self.pathConfig?.validate()
                try self.queryStringConfig?.validate()
                try self.responseHeaderConfig?.validate()
                try self.responseStatusCodeConfig?.validate()
                try self.sourceIpConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cookieConfig != nil {
                    map["CookieConfig"] = self.cookieConfig?.toMap()
                }
                if self.headerConfig != nil {
                    map["HeaderConfig"] = self.headerConfig?.toMap()
                }
                if self.hostConfig != nil {
                    map["HostConfig"] = self.hostConfig?.toMap()
                }
                if self.methodConfig != nil {
                    map["MethodConfig"] = self.methodConfig?.toMap()
                }
                if self.pathConfig != nil {
                    map["PathConfig"] = self.pathConfig?.toMap()
                }
                if self.queryStringConfig != nil {
                    map["QueryStringConfig"] = self.queryStringConfig?.toMap()
                }
                if self.responseHeaderConfig != nil {
                    map["ResponseHeaderConfig"] = self.responseHeaderConfig?.toMap()
                }
                if self.responseStatusCodeConfig != nil {
                    map["ResponseStatusCodeConfig"] = self.responseStatusCodeConfig?.toMap()
                }
                if self.sourceIpConfig != nil {
                    map["SourceIpConfig"] = self.sourceIpConfig?.toMap()
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CookieConfig"] as? [String: Any?] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleConditions.CookieConfig()
                    model.fromMap(value)
                    self.cookieConfig = model
                }
                if let value = dict["HeaderConfig"] as? [String: Any?] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleConditions.HeaderConfig()
                    model.fromMap(value)
                    self.headerConfig = model
                }
                if let value = dict["HostConfig"] as? [String: Any?] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleConditions.HostConfig()
                    model.fromMap(value)
                    self.hostConfig = model
                }
                if let value = dict["MethodConfig"] as? [String: Any?] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleConditions.MethodConfig()
                    model.fromMap(value)
                    self.methodConfig = model
                }
                if let value = dict["PathConfig"] as? [String: Any?] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleConditions.PathConfig()
                    model.fromMap(value)
                    self.pathConfig = model
                }
                if let value = dict["QueryStringConfig"] as? [String: Any?] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleConditions.QueryStringConfig()
                    model.fromMap(value)
                    self.queryStringConfig = model
                }
                if let value = dict["ResponseHeaderConfig"] as? [String: Any?] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleConditions.ResponseHeaderConfig()
                    model.fromMap(value)
                    self.responseHeaderConfig = model
                }
                if let value = dict["ResponseStatusCodeConfig"] as? [String: Any?] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleConditions.ResponseStatusCodeConfig()
                    model.fromMap(value)
                    self.responseStatusCodeConfig = model
                }
                if let value = dict["SourceIpConfig"] as? [String: Any?] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleConditions.SourceIpConfig()
                    model.fromMap(value)
                    self.sourceIpConfig = model
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var priority: Int32?

        public var ruleActions: [UpdateRulesAttributeRequest.Rules.RuleActions]?

        public var ruleConditions: [UpdateRulesAttributeRequest.Rules.RuleConditions]?

        public var ruleId: String?

        public var ruleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.ruleActions != nil {
                var tmp : [Any] = []
                for k in self.ruleActions! {
                    tmp.append(k.toMap())
                }
                map["RuleActions"] = tmp
            }
            if self.ruleConditions != nil {
                var tmp : [Any] = []
                for k in self.ruleConditions! {
                    tmp.append(k.toMap())
                }
                map["RuleConditions"] = tmp
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["RuleActions"] as? [Any?] {
                var tmp : [UpdateRulesAttributeRequest.Rules.RuleActions] = []
                for v in value {
                    if v != nil {
                        var model = UpdateRulesAttributeRequest.Rules.RuleActions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ruleActions = tmp
            }
            if let value = dict["RuleConditions"] as? [Any?] {
                var tmp : [UpdateRulesAttributeRequest.Rules.RuleConditions] = []
                for v in value {
                    if v != nil {
                        var model = UpdateRulesAttributeRequest.Rules.RuleConditions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ruleConditions = tmp
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
        }
    }
    public var clientToken: String?

    public var dryRun: Bool?

    public var rules: [UpdateRulesAttributeRequest.Rules]?

    public override init() {
        super.init()
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
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
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
        if let value = dict["Rules"] as? [Any?] {
            var tmp : [UpdateRulesAttributeRequest.Rules] = []
            for v in value {
                if v != nil {
                    var model = UpdateRulesAttributeRequest.Rules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rules = tmp
        }
    }
}

public class UpdateRulesAttributeResponseBody : Tea.TeaModel {
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

public class UpdateRulesAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRulesAttributeResponseBody?

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
            var model = UpdateRulesAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSecurityPolicyAttributeRequest : Tea.TeaModel {
    public var ciphers: [String]?

    public var clientToken: String?

    public var dryRun: Bool?

    public var securityPolicyId: String?

    public var securityPolicyName: String?

    public var TLSVersions: [String]?

    public override init() {
        super.init()
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
        if self.securityPolicyId != nil {
            map["SecurityPolicyId"] = self.securityPolicyId!
        }
        if self.securityPolicyName != nil {
            map["SecurityPolicyName"] = self.securityPolicyName!
        }
        if self.TLSVersions != nil {
            map["TLSVersions"] = self.TLSVersions!
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
        if let value = dict["SecurityPolicyId"] as? String {
            self.securityPolicyId = value
        }
        if let value = dict["SecurityPolicyName"] as? String {
            self.securityPolicyName = value
        }
        if let value = dict["TLSVersions"] as? [String] {
            self.TLSVersions = value
        }
    }
}

public class UpdateSecurityPolicyAttributeResponseBody : Tea.TeaModel {
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
    public class ConnectionDrainConfig : Tea.TeaModel {
        public var connectionDrainEnabled: Bool?

        public var connectionDrainTimeout: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionDrainEnabled != nil {
                map["ConnectionDrainEnabled"] = self.connectionDrainEnabled!
            }
            if self.connectionDrainTimeout != nil {
                map["ConnectionDrainTimeout"] = self.connectionDrainTimeout!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectionDrainEnabled"] as? Bool {
                self.connectionDrainEnabled = value
            }
            if let value = dict["ConnectionDrainTimeout"] as? Int32 {
                self.connectionDrainTimeout = value
            }
        }
    }
    public class HealthCheckConfig : Tea.TeaModel {
        public var healthCheckCodes: [String]?

        public var healthCheckConnectPort: Int32?

        public var healthCheckEnabled: Bool?

        public var healthCheckHost: String?

        public var healthCheckHttpVersion: String?

        public var healthCheckInterval: Int32?

        public var healthCheckMethod: String?

        public var healthCheckPath: String?

        public var healthCheckProtocol: String?

        public var healthCheckTimeout: Int32?

        public var healthyThreshold: Int32?

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
            if self.healthCheckCodes != nil {
                map["HealthCheckCodes"] = self.healthCheckCodes!
            }
            if self.healthCheckConnectPort != nil {
                map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
            }
            if self.healthCheckEnabled != nil {
                map["HealthCheckEnabled"] = self.healthCheckEnabled!
            }
            if self.healthCheckHost != nil {
                map["HealthCheckHost"] = self.healthCheckHost!
            }
            if self.healthCheckHttpVersion != nil {
                map["HealthCheckHttpVersion"] = self.healthCheckHttpVersion!
            }
            if self.healthCheckInterval != nil {
                map["HealthCheckInterval"] = self.healthCheckInterval!
            }
            if self.healthCheckMethod != nil {
                map["HealthCheckMethod"] = self.healthCheckMethod!
            }
            if self.healthCheckPath != nil {
                map["HealthCheckPath"] = self.healthCheckPath!
            }
            if self.healthCheckProtocol != nil {
                map["HealthCheckProtocol"] = self.healthCheckProtocol!
            }
            if self.healthCheckTimeout != nil {
                map["HealthCheckTimeout"] = self.healthCheckTimeout!
            }
            if self.healthyThreshold != nil {
                map["HealthyThreshold"] = self.healthyThreshold!
            }
            if self.unhealthyThreshold != nil {
                map["UnhealthyThreshold"] = self.unhealthyThreshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HealthCheckCodes"] as? [String] {
                self.healthCheckCodes = value
            }
            if let value = dict["HealthCheckConnectPort"] as? Int32 {
                self.healthCheckConnectPort = value
            }
            if let value = dict["HealthCheckEnabled"] as? Bool {
                self.healthCheckEnabled = value
            }
            if let value = dict["HealthCheckHost"] as? String {
                self.healthCheckHost = value
            }
            if let value = dict["HealthCheckHttpVersion"] as? String {
                self.healthCheckHttpVersion = value
            }
            if let value = dict["HealthCheckInterval"] as? Int32 {
                self.healthCheckInterval = value
            }
            if let value = dict["HealthCheckMethod"] as? String {
                self.healthCheckMethod = value
            }
            if let value = dict["HealthCheckPath"] as? String {
                self.healthCheckPath = value
            }
            if let value = dict["HealthCheckProtocol"] as? String {
                self.healthCheckProtocol = value
            }
            if let value = dict["HealthCheckTimeout"] as? Int32 {
                self.healthCheckTimeout = value
            }
            if let value = dict["HealthyThreshold"] as? Int32 {
                self.healthyThreshold = value
            }
            if let value = dict["UnhealthyThreshold"] as? Int32 {
                self.unhealthyThreshold = value
            }
        }
    }
    public class SlowStartConfig : Tea.TeaModel {
        public var slowStartDuration: Int32?

        public var slowStartEnabled: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.slowStartDuration != nil {
                map["SlowStartDuration"] = self.slowStartDuration!
            }
            if self.slowStartEnabled != nil {
                map["SlowStartEnabled"] = self.slowStartEnabled!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SlowStartDuration"] as? Int32 {
                self.slowStartDuration = value
            }
            if let value = dict["SlowStartEnabled"] as? Bool {
                self.slowStartEnabled = value
            }
        }
    }
    public class StickySessionConfig : Tea.TeaModel {
        public var cookie: String?

        public var cookieTimeout: Int32?

        public var stickySessionEnabled: Bool?

        public var stickySessionType: String?

        public override init() {
            super.init()
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
            if self.stickySessionEnabled != nil {
                map["StickySessionEnabled"] = self.stickySessionEnabled!
            }
            if self.stickySessionType != nil {
                map["StickySessionType"] = self.stickySessionType!
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
            if let value = dict["StickySessionEnabled"] as? Bool {
                self.stickySessionEnabled = value
            }
            if let value = dict["StickySessionType"] as? String {
                self.stickySessionType = value
            }
        }
    }
    public class UchConfig : Tea.TeaModel {
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
                map["Type"] = self.type!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var clientToken: String?

    public var connectionDrainConfig: UpdateServerGroupAttributeRequest.ConnectionDrainConfig?

    public var crossZoneEnabled: Bool?

    public var dryRun: Bool?

    public var healthCheckConfig: UpdateServerGroupAttributeRequest.HealthCheckConfig?

    public var scheduler: String?

    public var serverGroupId: String?

    public var serverGroupName: String?

    public var serviceName: String?

    public var slowStartConfig: UpdateServerGroupAttributeRequest.SlowStartConfig?

    public var stickySessionConfig: UpdateServerGroupAttributeRequest.StickySessionConfig?

    public var uchConfig: UpdateServerGroupAttributeRequest.UchConfig?

    public var upstreamKeepaliveEnabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.connectionDrainConfig?.validate()
        try self.healthCheckConfig?.validate()
        try self.slowStartConfig?.validate()
        try self.stickySessionConfig?.validate()
        try self.uchConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.connectionDrainConfig != nil {
            map["ConnectionDrainConfig"] = self.connectionDrainConfig?.toMap()
        }
        if self.crossZoneEnabled != nil {
            map["CrossZoneEnabled"] = self.crossZoneEnabled!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.healthCheckConfig != nil {
            map["HealthCheckConfig"] = self.healthCheckConfig?.toMap()
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
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.slowStartConfig != nil {
            map["SlowStartConfig"] = self.slowStartConfig?.toMap()
        }
        if self.stickySessionConfig != nil {
            map["StickySessionConfig"] = self.stickySessionConfig?.toMap()
        }
        if self.uchConfig != nil {
            map["UchConfig"] = self.uchConfig?.toMap()
        }
        if self.upstreamKeepaliveEnabled != nil {
            map["UpstreamKeepaliveEnabled"] = self.upstreamKeepaliveEnabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ConnectionDrainConfig"] as? [String: Any?] {
            var model = UpdateServerGroupAttributeRequest.ConnectionDrainConfig()
            model.fromMap(value)
            self.connectionDrainConfig = model
        }
        if let value = dict["CrossZoneEnabled"] as? Bool {
            self.crossZoneEnabled = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["HealthCheckConfig"] as? [String: Any?] {
            var model = UpdateServerGroupAttributeRequest.HealthCheckConfig()
            model.fromMap(value)
            self.healthCheckConfig = model
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
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["SlowStartConfig"] as? [String: Any?] {
            var model = UpdateServerGroupAttributeRequest.SlowStartConfig()
            model.fromMap(value)
            self.slowStartConfig = model
        }
        if let value = dict["StickySessionConfig"] as? [String: Any?] {
            var model = UpdateServerGroupAttributeRequest.StickySessionConfig()
            model.fromMap(value)
            self.stickySessionConfig = model
        }
        if let value = dict["UchConfig"] as? [String: Any?] {
            var model = UpdateServerGroupAttributeRequest.UchConfig()
            model.fromMap(value)
            self.uchConfig = model
        }
        if let value = dict["UpstreamKeepaliveEnabled"] as? Bool {
            self.upstreamKeepaliveEnabled = value
        }
    }
}

public class UpdateServerGroupAttributeResponseBody : Tea.TeaModel {
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

    public override init() {
        super.init()
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
