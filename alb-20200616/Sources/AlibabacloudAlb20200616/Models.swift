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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Entry") {
                self.entry = dict["Entry"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclEntries") {
            var tmp : [AddEntriesToAclRequest.AclEntries] = []
            for v in dict["AclEntries"] as! [Any] {
                var model = AddEntriesToAclRequest.AclEntries()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.aclEntries = tmp
        }
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddEntriesToAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("RemoteIpEnabled") {
                self.remoteIpEnabled = dict["RemoteIpEnabled"] as! Bool
            }
            if dict.keys.contains("ServerId") {
                self.serverId = dict["ServerId"] as! String
            }
            if dict.keys.contains("ServerIp") {
                self.serverIp = dict["ServerIp"] as! String
            }
            if dict.keys.contains("ServerType") {
                self.serverType = dict["ServerType"] as! String
            }
            if dict.keys.contains("Weight") {
                self.weight = dict["Weight"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ServerGroupId") {
            self.serverGroupId = dict["ServerGroupId"] as! String
        }
        if dict.keys.contains("Servers") {
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

    public override init() {
        super.init()
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
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddServersToServerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("HealthCheckTemplateId") {
            self.healthCheckTemplateId = dict["HealthCheckTemplateId"] as! String
        }
        if dict.keys.contains("ServerGroupId") {
            self.serverGroupId = dict["ServerGroupId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ApplyHealthCheckTemplateToServerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclIds") {
            self.aclIds = dict["AclIds"] as! [String]
        }
        if dict.keys.contains("AclType") {
            self.aclType = dict["AclType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AssociateAclsWithListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertificateId") {
                self.certificateId = dict["CertificateId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Certificates") {
            var tmp : [AssociateAdditionalCertificatesWithListenerRequest.Certificates] = []
            for v in dict["Certificates"] as! [Any] {
                var model = AssociateAdditionalCertificatesWithListenerRequest.Certificates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.certificates = tmp
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
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
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("BandwidthPackageId") {
            self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RegionId") {
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
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("ZoneMappings") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelShiftLoadBalancerZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttributeKey") {
                    self.attributeKey = dict["AttributeKey"] as! String
                }
                if dict.keys.contains("AttributeValue") {
                    self.attributeValue = dict["AttributeValue"] as! String
                }
            }
        }
        public var AScriptName: String?

        public var enabled: Bool?

        public var extAttributeEnabled: Bool?

        public var extAttributes: [CreateAScriptsRequest.AScripts.ExtAttributes]?

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
            if self.scriptContent != nil {
                map["ScriptContent"] = self.scriptContent!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AScriptName") {
                self.AScriptName = dict["AScriptName"] as! String
            }
            if dict.keys.contains("Enabled") {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("ExtAttributeEnabled") {
                self.extAttributeEnabled = dict["ExtAttributeEnabled"] as! Bool
            }
            if dict.keys.contains("ExtAttributes") {
                var tmp : [CreateAScriptsRequest.AScripts.ExtAttributes] = []
                for v in dict["ExtAttributes"] as! [Any] {
                    var model = CreateAScriptsRequest.AScripts.ExtAttributes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.extAttributes = tmp
            }
            if dict.keys.contains("ScriptContent") {
                self.scriptContent = dict["ScriptContent"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AScripts") {
            var tmp : [CreateAScriptsRequest.AScripts] = []
            for v in dict["AScripts"] as! [Any] {
                var model = CreateAScriptsRequest.AScripts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.AScripts = tmp
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AScriptId") {
                self.AScriptId = dict["AScriptId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AScriptIds") {
            var tmp : [CreateAScriptsResponseBody.AScriptIds] = []
            for v in dict["AScriptIds"] as! [Any] {
                var model = CreateAScriptsResponseBody.AScriptIds()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.AScriptIds = tmp
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAScriptsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclName") {
            self.aclName = dict["AclName"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateAclRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateAclRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("HealthCheckCodes") {
            self.healthCheckCodes = dict["HealthCheckCodes"] as! [String]
        }
        if dict.keys.contains("HealthCheckConnectPort") {
            self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckHost") {
            self.healthCheckHost = dict["HealthCheckHost"] as! String
        }
        if dict.keys.contains("HealthCheckHttpVersion") {
            self.healthCheckHttpVersion = dict["HealthCheckHttpVersion"] as! String
        }
        if dict.keys.contains("HealthCheckInterval") {
            self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
        }
        if dict.keys.contains("HealthCheckMethod") {
            self.healthCheckMethod = dict["HealthCheckMethod"] as! String
        }
        if dict.keys.contains("HealthCheckPath") {
            self.healthCheckPath = dict["HealthCheckPath"] as! String
        }
        if dict.keys.contains("HealthCheckProtocol") {
            self.healthCheckProtocol = dict["HealthCheckProtocol"] as! String
        }
        if dict.keys.contains("HealthCheckTemplateName") {
            self.healthCheckTemplateName = dict["HealthCheckTemplateName"] as! String
        }
        if dict.keys.contains("HealthCheckTimeout") {
            self.healthCheckTimeout = dict["HealthCheckTimeout"] as! Int32
        }
        if dict.keys.contains("HealthyThreshold") {
            self.healthyThreshold = dict["HealthyThreshold"] as! Int32
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateHealthCheckTemplateRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateHealthCheckTemplateRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("UnhealthyThreshold") {
            self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HealthCheckTemplateId") {
            self.healthCheckTemplateId = dict["HealthCheckTemplateId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateHealthCheckTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertificateId") {
                self.certificateId = dict["CertificateId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertificateId") {
                self.certificateId = dict["CertificateId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ServerGroupId") {
                        self.serverGroupId = dict["ServerGroupId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ServerGroupTuples") {
                    var tmp : [CreateListenerRequest.DefaultActions.ForwardGroupConfig.ServerGroupTuples] = []
                    for v in dict["ServerGroupTuples"] as! [Any] {
                        var model = CreateListenerRequest.DefaultActions.ForwardGroupConfig.ServerGroupTuples()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ForwardGroupConfig") {
                var model = CreateListenerRequest.DefaultActions.ForwardGroupConfig()
                model.fromMap(dict["ForwardGroupConfig"] as! [String: Any])
                self.forwardGroupConfig = model
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("QuicListenerId") {
                self.quicListenerId = dict["QuicListenerId"] as! String
            }
            if dict.keys.contains("QuicUpgradeEnabled") {
                self.quicUpgradeEnabled = dict["QuicUpgradeEnabled"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("XForwardedForClientCertClientVerifyAlias") {
                self.XForwardedForClientCertClientVerifyAlias = dict["XForwardedForClientCertClientVerifyAlias"] as! String
            }
            if dict.keys.contains("XForwardedForClientCertClientVerifyEnabled") {
                self.XForwardedForClientCertClientVerifyEnabled = dict["XForwardedForClientCertClientVerifyEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForClientCertFingerprintAlias") {
                self.XForwardedForClientCertFingerprintAlias = dict["XForwardedForClientCertFingerprintAlias"] as! String
            }
            if dict.keys.contains("XForwardedForClientCertFingerprintEnabled") {
                self.XForwardedForClientCertFingerprintEnabled = dict["XForwardedForClientCertFingerprintEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForClientCertIssuerDNAlias") {
                self.XForwardedForClientCertIssuerDNAlias = dict["XForwardedForClientCertIssuerDNAlias"] as! String
            }
            if dict.keys.contains("XForwardedForClientCertIssuerDNEnabled") {
                self.XForwardedForClientCertIssuerDNEnabled = dict["XForwardedForClientCertIssuerDNEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForClientCertSubjectDNAlias") {
                self.XForwardedForClientCertSubjectDNAlias = dict["XForwardedForClientCertSubjectDNAlias"] as! String
            }
            if dict.keys.contains("XForwardedForClientCertSubjectDNEnabled") {
                self.XForwardedForClientCertSubjectDNEnabled = dict["XForwardedForClientCertSubjectDNEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForClientSourceIpsEnabled") {
                self.XForwardedForClientSourceIpsEnabled = dict["XForwardedForClientSourceIpsEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForClientSourceIpsTrusted") {
                self.XForwardedForClientSourceIpsTrusted = dict["XForwardedForClientSourceIpsTrusted"] as! String
            }
            if dict.keys.contains("XForwardedForClientSrcPortEnabled") {
                self.XForwardedForClientSrcPortEnabled = dict["XForwardedForClientSrcPortEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForEnabled") {
                self.XForwardedForEnabled = dict["XForwardedForEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForProtoEnabled") {
                self.XForwardedForProtoEnabled = dict["XForwardedForProtoEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForSLBIdEnabled") {
                self.XForwardedForSLBIdEnabled = dict["XForwardedForSLBIdEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForSLBPortEnabled") {
                self.XForwardedForSLBPortEnabled = dict["XForwardedForSLBPortEnabled"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CaCertificates") {
            var tmp : [CreateListenerRequest.CaCertificates] = []
            for v in dict["CaCertificates"] as! [Any] {
                var model = CreateListenerRequest.CaCertificates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.caCertificates = tmp
        }
        if dict.keys.contains("CaEnabled") {
            self.caEnabled = dict["CaEnabled"] as! Bool
        }
        if dict.keys.contains("Certificates") {
            var tmp : [CreateListenerRequest.Certificates] = []
            for v in dict["Certificates"] as! [Any] {
                var model = CreateListenerRequest.Certificates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.certificates = tmp
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DefaultActions") {
            var tmp : [CreateListenerRequest.DefaultActions] = []
            for v in dict["DefaultActions"] as! [Any] {
                var model = CreateListenerRequest.DefaultActions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.defaultActions = tmp
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("GzipEnabled") {
            self.gzipEnabled = dict["GzipEnabled"] as! Bool
        }
        if dict.keys.contains("Http2Enabled") {
            self.http2Enabled = dict["Http2Enabled"] as! Bool
        }
        if dict.keys.contains("IdleTimeout") {
            self.idleTimeout = dict["IdleTimeout"] as! Int32
        }
        if dict.keys.contains("ListenerDescription") {
            self.listenerDescription = dict["ListenerDescription"] as! String
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("ListenerProtocol") {
            self.listenerProtocol = dict["ListenerProtocol"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("QuicConfig") {
            var model = CreateListenerRequest.QuicConfig()
            model.fromMap(dict["QuicConfig"] as! [String: Any])
            self.quicConfig = model
        }
        if dict.keys.contains("RequestTimeout") {
            self.requestTimeout = dict["RequestTimeout"] as! Int32
        }
        if dict.keys.contains("SecurityPolicyId") {
            self.securityPolicyId = dict["SecurityPolicyId"] as! String
        }
        if dict.keys.contains("Tag") {
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
        if dict.keys.contains("XForwardedForConfig") {
            var model = CreateListenerRequest.XForwardedForConfig()
            model.fromMap(dict["XForwardedForConfig"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BandwidthPackageId") {
                self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
            }
            if dict.keys.contains("PayType") {
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
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("Status") {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllocationId") {
                self.allocationId = dict["AllocationId"] as! String
            }
            if dict.keys.contains("EipType") {
                self.eipType = dict["EipType"] as! String
            }
            if dict.keys.contains("IntranetAddress") {
                self.intranetAddress = dict["IntranetAddress"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddressAllocatedMode") {
            self.addressAllocatedMode = dict["AddressAllocatedMode"] as! String
        }
        if dict.keys.contains("AddressIpVersion") {
            self.addressIpVersion = dict["AddressIpVersion"] as! String
        }
        if dict.keys.contains("AddressType") {
            self.addressType = dict["AddressType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DeletionProtectionEnabled") {
            self.deletionProtectionEnabled = dict["DeletionProtectionEnabled"] as! Bool
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerBillingConfig") {
            var model = CreateLoadBalancerRequest.LoadBalancerBillingConfig()
            model.fromMap(dict["LoadBalancerBillingConfig"] as! [String: Any])
            self.loadBalancerBillingConfig = model
        }
        if dict.keys.contains("LoadBalancerEdition") {
            self.loadBalancerEdition = dict["LoadBalancerEdition"] as! String
        }
        if dict.keys.contains("LoadBalancerName") {
            self.loadBalancerName = dict["LoadBalancerName"] as! String
        }
        if dict.keys.contains("ModificationProtectionConfig") {
            var model = CreateLoadBalancerRequest.ModificationProtectionConfig()
            model.fromMap(dict["ModificationProtectionConfig"] as! [String: Any])
            self.modificationProtectionConfig = model
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") {
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
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneMappings") {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateLoadBalancerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowCredentials") {
                    self.allowCredentials = dict["AllowCredentials"] as! String
                }
                if dict.keys.contains("AllowHeaders") {
                    self.allowHeaders = dict["AllowHeaders"] as! [String]
                }
                if dict.keys.contains("AllowMethods") {
                    self.allowMethods = dict["AllowMethods"] as! [String]
                }
                if dict.keys.contains("AllowOrigin") {
                    self.allowOrigin = dict["AllowOrigin"] as! [String]
                }
                if dict.keys.contains("ExposeHeaders") {
                    self.exposeHeaders = dict["ExposeHeaders"] as! [String]
                }
                if dict.keys.contains("MaxAge") {
                    self.maxAge = dict["MaxAge"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("ContentType") {
                    self.contentType = dict["ContentType"] as! String
                }
                if dict.keys.contains("HttpCode") {
                    self.httpCode = dict["HttpCode"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Enabled") {
                        self.enabled = dict["Enabled"] as! Bool
                    }
                    if dict.keys.contains("Timeout") {
                        self.timeout = dict["Timeout"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ServerGroupId") {
                        self.serverGroupId = dict["ServerGroupId"] as! String
                    }
                    if dict.keys.contains("Weight") {
                        self.weight = dict["Weight"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ServerGroupStickySession") {
                    var model = CreateRuleRequest.RuleActions.ForwardGroupConfig.ServerGroupStickySession()
                    model.fromMap(dict["ServerGroupStickySession"] as! [String: Any])
                    self.serverGroupStickySession = model
                }
                if dict.keys.contains("ServerGroupTuples") {
                    var tmp : [CreateRuleRequest.RuleActions.ForwardGroupConfig.ServerGroupTuples] = []
                    for v in dict["ServerGroupTuples"] as! [Any] {
                        var model = CreateRuleRequest.RuleActions.ForwardGroupConfig.ServerGroupTuples()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
                if dict.keys.contains("ValueType") {
                    self.valueType = dict["ValueType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Host") {
                    self.host = dict["Host"] as! String
                }
                if dict.keys.contains("HttpCode") {
                    self.httpCode = dict["HttpCode"] as! String
                }
                if dict.keys.contains("Path") {
                    self.path = dict["Path"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! String
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("Query") {
                    self.query = dict["Query"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Host") {
                    self.host = dict["Host"] as! String
                }
                if dict.keys.contains("Path") {
                    self.path = dict["Path"] as! String
                }
                if dict.keys.contains("Query") {
                    self.query = dict["Query"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PerIpQps") {
                    self.perIpQps = dict["PerIpQps"] as! Int32
                }
                if dict.keys.contains("QPS") {
                    self.QPS = dict["QPS"] as! Int32
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ServerGroupId") {
                            self.serverGroupId = dict["ServerGroupId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ServerGroupTuples") {
                        var tmp : [CreateRuleRequest.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples] = []
                        for v in dict["ServerGroupTuples"] as! [Any] {
                            var model = CreateRuleRequest.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MirrorGroupConfig") {
                    var model = CreateRuleRequest.RuleActions.TrafficMirrorConfig.MirrorGroupConfig()
                    model.fromMap(dict["MirrorGroupConfig"] as! [String: Any])
                    self.mirrorGroupConfig = model
                }
                if dict.keys.contains("TargetType") {
                    self.targetType = dict["TargetType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CorsConfig") {
                var model = CreateRuleRequest.RuleActions.CorsConfig()
                model.fromMap(dict["CorsConfig"] as! [String: Any])
                self.corsConfig = model
            }
            if dict.keys.contains("FixedResponseConfig") {
                var model = CreateRuleRequest.RuleActions.FixedResponseConfig()
                model.fromMap(dict["FixedResponseConfig"] as! [String: Any])
                self.fixedResponseConfig = model
            }
            if dict.keys.contains("ForwardGroupConfig") {
                var model = CreateRuleRequest.RuleActions.ForwardGroupConfig()
                model.fromMap(dict["ForwardGroupConfig"] as! [String: Any])
                self.forwardGroupConfig = model
            }
            if dict.keys.contains("InsertHeaderConfig") {
                var model = CreateRuleRequest.RuleActions.InsertHeaderConfig()
                model.fromMap(dict["InsertHeaderConfig"] as! [String: Any])
                self.insertHeaderConfig = model
            }
            if dict.keys.contains("Order") {
                self.order = dict["Order"] as! Int32
            }
            if dict.keys.contains("RedirectConfig") {
                var model = CreateRuleRequest.RuleActions.RedirectConfig()
                model.fromMap(dict["RedirectConfig"] as! [String: Any])
                self.redirectConfig = model
            }
            if dict.keys.contains("RemoveHeaderConfig") {
                var model = CreateRuleRequest.RuleActions.RemoveHeaderConfig()
                model.fromMap(dict["RemoveHeaderConfig"] as! [String: Any])
                self.removeHeaderConfig = model
            }
            if dict.keys.contains("RewriteConfig") {
                var model = CreateRuleRequest.RuleActions.RewriteConfig()
                model.fromMap(dict["RewriteConfig"] as! [String: Any])
                self.rewriteConfig = model
            }
            if dict.keys.contains("TrafficLimitConfig") {
                var model = CreateRuleRequest.RuleActions.TrafficLimitConfig()
                model.fromMap(dict["TrafficLimitConfig"] as! [String: Any])
                self.trafficLimitConfig = model
            }
            if dict.keys.contains("TrafficMirrorConfig") {
                var model = CreateRuleRequest.RuleActions.TrafficMirrorConfig()
                model.fromMap(dict["TrafficMirrorConfig"] as! [String: Any])
                self.trafficMirrorConfig = model
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Values") {
                    var tmp : [CreateRuleRequest.RuleConditions.CookieConfig.Values] = []
                    for v in dict["Values"] as! [Any] {
                        var model = CreateRuleRequest.RuleConditions.CookieConfig.Values()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Values") {
                    var tmp : [CreateRuleRequest.RuleConditions.QueryStringConfig.Values] = []
                    for v in dict["Values"] as! [Any] {
                        var model = CreateRuleRequest.RuleConditions.QueryStringConfig.Values()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CookieConfig") {
                var model = CreateRuleRequest.RuleConditions.CookieConfig()
                model.fromMap(dict["CookieConfig"] as! [String: Any])
                self.cookieConfig = model
            }
            if dict.keys.contains("HeaderConfig") {
                var model = CreateRuleRequest.RuleConditions.HeaderConfig()
                model.fromMap(dict["HeaderConfig"] as! [String: Any])
                self.headerConfig = model
            }
            if dict.keys.contains("HostConfig") {
                var model = CreateRuleRequest.RuleConditions.HostConfig()
                model.fromMap(dict["HostConfig"] as! [String: Any])
                self.hostConfig = model
            }
            if dict.keys.contains("MethodConfig") {
                var model = CreateRuleRequest.RuleConditions.MethodConfig()
                model.fromMap(dict["MethodConfig"] as! [String: Any])
                self.methodConfig = model
            }
            if dict.keys.contains("PathConfig") {
                var model = CreateRuleRequest.RuleConditions.PathConfig()
                model.fromMap(dict["PathConfig"] as! [String: Any])
                self.pathConfig = model
            }
            if dict.keys.contains("QueryStringConfig") {
                var model = CreateRuleRequest.RuleConditions.QueryStringConfig()
                model.fromMap(dict["QueryStringConfig"] as! [String: Any])
                self.queryStringConfig = model
            }
            if dict.keys.contains("ResponseHeaderConfig") {
                var model = CreateRuleRequest.RuleConditions.ResponseHeaderConfig()
                model.fromMap(dict["ResponseHeaderConfig"] as! [String: Any])
                self.responseHeaderConfig = model
            }
            if dict.keys.contains("ResponseStatusCodeConfig") {
                var model = CreateRuleRequest.RuleConditions.ResponseStatusCodeConfig()
                model.fromMap(dict["ResponseStatusCodeConfig"] as! [String: Any])
                self.responseStatusCodeConfig = model
            }
            if dict.keys.contains("SourceIpConfig") {
                var model = CreateRuleRequest.RuleConditions.SourceIpConfig()
                model.fromMap(dict["SourceIpConfig"] as! [String: Any])
                self.sourceIpConfig = model
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("RuleActions") {
            var tmp : [CreateRuleRequest.RuleActions] = []
            for v in dict["RuleActions"] as! [Any] {
                var model = CreateRuleRequest.RuleActions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ruleActions = tmp
        }
        if dict.keys.contains("RuleConditions") {
            var tmp : [CreateRuleRequest.RuleConditions] = []
            for v in dict["RuleConditions"] as! [Any] {
                var model = CreateRuleRequest.RuleConditions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ruleConditions = tmp
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateRuleRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateRuleRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AllowCredentials") {
                        self.allowCredentials = dict["AllowCredentials"] as! String
                    }
                    if dict.keys.contains("AllowHeaders") {
                        self.allowHeaders = dict["AllowHeaders"] as! [String]
                    }
                    if dict.keys.contains("AllowMethods") {
                        self.allowMethods = dict["AllowMethods"] as! [String]
                    }
                    if dict.keys.contains("AllowOrigin") {
                        self.allowOrigin = dict["AllowOrigin"] as! [String]
                    }
                    if dict.keys.contains("ExposeHeaders") {
                        self.exposeHeaders = dict["ExposeHeaders"] as! [String]
                    }
                    if dict.keys.contains("MaxAge") {
                        self.maxAge = dict["MaxAge"] as! Int64
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("ContentType") {
                        self.contentType = dict["ContentType"] as! String
                    }
                    if dict.keys.contains("HttpCode") {
                        self.httpCode = dict["HttpCode"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Enabled") {
                            self.enabled = dict["Enabled"] as! Bool
                        }
                        if dict.keys.contains("Timeout") {
                            self.timeout = dict["Timeout"] as! Int32
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ServerGroupId") {
                            self.serverGroupId = dict["ServerGroupId"] as! String
                        }
                        if dict.keys.contains("Weight") {
                            self.weight = dict["Weight"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ServerGroupStickySession") {
                        var model = CreateRulesRequest.Rules.RuleActions.ForwardGroupConfig.ServerGroupStickySession()
                        model.fromMap(dict["ServerGroupStickySession"] as! [String: Any])
                        self.serverGroupStickySession = model
                    }
                    if dict.keys.contains("ServerGroupTuples") {
                        var tmp : [CreateRulesRequest.Rules.RuleActions.ForwardGroupConfig.ServerGroupTuples] = []
                        for v in dict["ServerGroupTuples"] as! [Any] {
                            var model = CreateRulesRequest.Rules.RuleActions.ForwardGroupConfig.ServerGroupTuples()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                    if dict.keys.contains("ValueType") {
                        self.valueType = dict["ValueType"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Host") {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("HttpCode") {
                        self.httpCode = dict["HttpCode"] as! String
                    }
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! String
                    }
                    if dict.keys.contains("Protocol") {
                        self.protocol_ = dict["Protocol"] as! String
                    }
                    if dict.keys.contains("Query") {
                        self.query = dict["Query"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Host") {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                    if dict.keys.contains("Query") {
                        self.query = dict["Query"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PerIpQps") {
                        self.perIpQps = dict["PerIpQps"] as! Int32
                    }
                    if dict.keys.contains("QPS") {
                        self.QPS = dict["QPS"] as! Int32
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("ServerGroupId") {
                                self.serverGroupId = dict["ServerGroupId"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ServerGroupTuples") {
                            var tmp : [CreateRulesRequest.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples] = []
                            for v in dict["ServerGroupTuples"] as! [Any] {
                                var model = CreateRulesRequest.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MirrorGroupConfig") {
                        var model = CreateRulesRequest.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig()
                        model.fromMap(dict["MirrorGroupConfig"] as! [String: Any])
                        self.mirrorGroupConfig = model
                    }
                    if dict.keys.contains("TargetType") {
                        self.targetType = dict["TargetType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CorsConfig") {
                    var model = CreateRulesRequest.Rules.RuleActions.CorsConfig()
                    model.fromMap(dict["CorsConfig"] as! [String: Any])
                    self.corsConfig = model
                }
                if dict.keys.contains("FixedResponseConfig") {
                    var model = CreateRulesRequest.Rules.RuleActions.FixedResponseConfig()
                    model.fromMap(dict["FixedResponseConfig"] as! [String: Any])
                    self.fixedResponseConfig = model
                }
                if dict.keys.contains("ForwardGroupConfig") {
                    var model = CreateRulesRequest.Rules.RuleActions.ForwardGroupConfig()
                    model.fromMap(dict["ForwardGroupConfig"] as! [String: Any])
                    self.forwardGroupConfig = model
                }
                if dict.keys.contains("InsertHeaderConfig") {
                    var model = CreateRulesRequest.Rules.RuleActions.InsertHeaderConfig()
                    model.fromMap(dict["InsertHeaderConfig"] as! [String: Any])
                    self.insertHeaderConfig = model
                }
                if dict.keys.contains("Order") {
                    self.order = dict["Order"] as! Int32
                }
                if dict.keys.contains("RedirectConfig") {
                    var model = CreateRulesRequest.Rules.RuleActions.RedirectConfig()
                    model.fromMap(dict["RedirectConfig"] as! [String: Any])
                    self.redirectConfig = model
                }
                if dict.keys.contains("RemoveHeaderConfig") {
                    var model = CreateRulesRequest.Rules.RuleActions.RemoveHeaderConfig()
                    model.fromMap(dict["RemoveHeaderConfig"] as! [String: Any])
                    self.removeHeaderConfig = model
                }
                if dict.keys.contains("RewriteConfig") {
                    var model = CreateRulesRequest.Rules.RuleActions.RewriteConfig()
                    model.fromMap(dict["RewriteConfig"] as! [String: Any])
                    self.rewriteConfig = model
                }
                if dict.keys.contains("TrafficLimitConfig") {
                    var model = CreateRulesRequest.Rules.RuleActions.TrafficLimitConfig()
                    model.fromMap(dict["TrafficLimitConfig"] as! [String: Any])
                    self.trafficLimitConfig = model
                }
                if dict.keys.contains("TrafficMirrorConfig") {
                    var model = CreateRulesRequest.Rules.RuleActions.TrafficMirrorConfig()
                    model.fromMap(dict["TrafficMirrorConfig"] as! [String: Any])
                    self.trafficMirrorConfig = model
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        var tmp : [CreateRulesRequest.Rules.RuleConditions.CookieConfig.Values] = []
                        for v in dict["Values"] as! [Any] {
                            var model = CreateRulesRequest.Rules.RuleConditions.CookieConfig.Values()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        var tmp : [CreateRulesRequest.Rules.RuleConditions.QueryStringConfig.Values] = []
                        for v in dict["Values"] as! [Any] {
                            var model = CreateRulesRequest.Rules.RuleConditions.QueryStringConfig.Values()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CookieConfig") {
                    var model = CreateRulesRequest.Rules.RuleConditions.CookieConfig()
                    model.fromMap(dict["CookieConfig"] as! [String: Any])
                    self.cookieConfig = model
                }
                if dict.keys.contains("HeaderConfig") {
                    var model = CreateRulesRequest.Rules.RuleConditions.HeaderConfig()
                    model.fromMap(dict["HeaderConfig"] as! [String: Any])
                    self.headerConfig = model
                }
                if dict.keys.contains("HostConfig") {
                    var model = CreateRulesRequest.Rules.RuleConditions.HostConfig()
                    model.fromMap(dict["HostConfig"] as! [String: Any])
                    self.hostConfig = model
                }
                if dict.keys.contains("MethodConfig") {
                    var model = CreateRulesRequest.Rules.RuleConditions.MethodConfig()
                    model.fromMap(dict["MethodConfig"] as! [String: Any])
                    self.methodConfig = model
                }
                if dict.keys.contains("PathConfig") {
                    var model = CreateRulesRequest.Rules.RuleConditions.PathConfig()
                    model.fromMap(dict["PathConfig"] as! [String: Any])
                    self.pathConfig = model
                }
                if dict.keys.contains("QueryStringConfig") {
                    var model = CreateRulesRequest.Rules.RuleConditions.QueryStringConfig()
                    model.fromMap(dict["QueryStringConfig"] as! [String: Any])
                    self.queryStringConfig = model
                }
                if dict.keys.contains("ResponseHeaderConfig") {
                    var model = CreateRulesRequest.Rules.RuleConditions.ResponseHeaderConfig()
                    model.fromMap(dict["ResponseHeaderConfig"] as! [String: Any])
                    self.responseHeaderConfig = model
                }
                if dict.keys.contains("ResponseStatusCodeConfig") {
                    var model = CreateRulesRequest.Rules.RuleConditions.ResponseStatusCodeConfig()
                    model.fromMap(dict["ResponseStatusCodeConfig"] as! [String: Any])
                    self.responseStatusCodeConfig = model
                }
                if dict.keys.contains("SourceIpConfig") {
                    var model = CreateRulesRequest.Rules.RuleConditions.SourceIpConfig()
                    model.fromMap(dict["SourceIpConfig"] as! [String: Any])
                    self.sourceIpConfig = model
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Direction") {
                self.direction = dict["Direction"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("RuleActions") {
                var tmp : [CreateRulesRequest.Rules.RuleActions] = []
                for v in dict["RuleActions"] as! [Any] {
                    var model = CreateRulesRequest.Rules.RuleActions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ruleActions = tmp
            }
            if dict.keys.contains("RuleConditions") {
                var tmp : [CreateRulesRequest.Rules.RuleConditions] = []
                for v in dict["RuleConditions"] as! [Any] {
                    var model = CreateRulesRequest.Rules.RuleConditions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ruleConditions = tmp
            }
            if dict.keys.contains("RuleName") {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("Tag") {
                var tmp : [CreateRulesRequest.Rules.Tag] = []
                for v in dict["Tag"] as! [Any] {
                    var model = CreateRulesRequest.Rules.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("Rules") {
            var tmp : [CreateRulesRequest.Rules] = []
            for v in dict["Rules"] as! [Any] {
                var model = CreateRulesRequest.Rules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleIds") {
            var tmp : [CreateRulesResponseBody.RuleIds] = []
            for v in dict["RuleIds"] as! [Any] {
                var model = CreateRulesResponseBody.RuleIds()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateRulesResponseBody()
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ciphers") {
            self.ciphers = dict["Ciphers"] as! [String]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityPolicyName") {
            self.securityPolicyName = dict["SecurityPolicyName"] as! String
        }
        if dict.keys.contains("TLSVersions") {
            self.TLSVersions = dict["TLSVersions"] as! [String]
        }
        if dict.keys.contains("Tag") {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityPolicyId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateSecurityPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnectionDrainEnabled") {
                self.connectionDrainEnabled = dict["ConnectionDrainEnabled"] as! Bool
            }
            if dict.keys.contains("ConnectionDrainTimeout") {
                self.connectionDrainTimeout = dict["ConnectionDrainTimeout"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HealthCheckCodes") {
                self.healthCheckCodes = dict["HealthCheckCodes"] as! [String]
            }
            if dict.keys.contains("HealthCheckConnectPort") {
                self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
            }
            if dict.keys.contains("HealthCheckEnabled") {
                self.healthCheckEnabled = dict["HealthCheckEnabled"] as! Bool
            }
            if dict.keys.contains("HealthCheckHost") {
                self.healthCheckHost = dict["HealthCheckHost"] as! String
            }
            if dict.keys.contains("HealthCheckHttpVersion") {
                self.healthCheckHttpVersion = dict["HealthCheckHttpVersion"] as! String
            }
            if dict.keys.contains("HealthCheckInterval") {
                self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
            }
            if dict.keys.contains("HealthCheckMethod") {
                self.healthCheckMethod = dict["HealthCheckMethod"] as! String
            }
            if dict.keys.contains("HealthCheckPath") {
                self.healthCheckPath = dict["HealthCheckPath"] as! String
            }
            if dict.keys.contains("HealthCheckProtocol") {
                self.healthCheckProtocol = dict["HealthCheckProtocol"] as! String
            }
            if dict.keys.contains("HealthCheckTimeout") {
                self.healthCheckTimeout = dict["HealthCheckTimeout"] as! Int32
            }
            if dict.keys.contains("HealthyThreshold") {
                self.healthyThreshold = dict["HealthyThreshold"] as! Int32
            }
            if dict.keys.contains("UnhealthyThreshold") {
                self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SlowStartDuration") {
                self.slowStartDuration = dict["SlowStartDuration"] as! Int32
            }
            if dict.keys.contains("SlowStartEnabled") {
                self.slowStartEnabled = dict["SlowStartEnabled"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cookie") {
                self.cookie = dict["Cookie"] as! String
            }
            if dict.keys.contains("CookieTimeout") {
                self.cookieTimeout = dict["CookieTimeout"] as! Int32
            }
            if dict.keys.contains("StickySessionEnabled") {
                self.stickySessionEnabled = dict["StickySessionEnabled"] as! Bool
            }
            if dict.keys.contains("StickySessionType") {
                self.stickySessionType = dict["StickySessionType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var clientToken: String?

    public var connectionDrainConfig: CreateServerGroupRequest.ConnectionDrainConfig?

    public var dryRun: Bool?

    public var healthCheckConfig: CreateServerGroupRequest.HealthCheckConfig?

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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.healthCheckConfig != nil {
            map["HealthCheckConfig"] = self.healthCheckConfig?.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConnectionDrainConfig") {
            var model = CreateServerGroupRequest.ConnectionDrainConfig()
            model.fromMap(dict["ConnectionDrainConfig"] as! [String: Any])
            self.connectionDrainConfig = model
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("HealthCheckConfig") {
            var model = CreateServerGroupRequest.HealthCheckConfig()
            model.fromMap(dict["HealthCheckConfig"] as! [String: Any])
            self.healthCheckConfig = model
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Scheduler") {
            self.scheduler = dict["Scheduler"] as! String
        }
        if dict.keys.contains("ServerGroupName") {
            self.serverGroupName = dict["ServerGroupName"] as! String
        }
        if dict.keys.contains("ServerGroupType") {
            self.serverGroupType = dict["ServerGroupType"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("SlowStartConfig") {
            var model = CreateServerGroupRequest.SlowStartConfig()
            model.fromMap(dict["SlowStartConfig"] as! [String: Any])
            self.slowStartConfig = model
        }
        if dict.keys.contains("StickySessionConfig") {
            var model = CreateServerGroupRequest.StickySessionConfig()
            model.fromMap(dict["StickySessionConfig"] as! [String: Any])
            self.stickySessionConfig = model
        }
        if dict.keys.contains("Tag") {
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
        if dict.keys.contains("UchConfig") {
            var model = CreateServerGroupRequest.UchConfig()
            model.fromMap(dict["UchConfig"] as! [String: Any])
            self.uchConfig = model
        }
        if dict.keys.contains("UpstreamKeepaliveEnabled") {
            self.upstreamKeepaliveEnabled = dict["UpstreamKeepaliveEnabled"] as! Bool
        }
        if dict.keys.contains("VpcId") {
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
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServerGroupId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateServerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AScriptIds") {
            self.AScriptIds = dict["AScriptIds"] as! [String]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAScriptsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAclResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("HealthCheckTemplateIds") {
            self.healthCheckTemplateIds = dict["HealthCheckTemplateIds"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteHealthCheckTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
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
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteLoadBalancerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RuleIds") {
            self.ruleIds = dict["RuleIds"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("SecurityPolicyId") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteSecurityPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ServerGroupId") {
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
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteServerGroupResponseBody()
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
        if dict.keys.contains("BandwidthPackageId") {
            self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RegionId") {
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
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DetachCommonBandwidthPackageFromLoadBalancerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DisableDeletionProtectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DisableLoadBalancerAccessLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DisableLoadBalancerIpv6InternetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclIds") {
            self.aclIds = dict["AclIds"] as! [String]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DissociateAclsFromListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertificateId") {
                self.certificateId = dict["CertificateId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Certificates") {
            var tmp : [DissociateAdditionalCertificatesFromListenerRequest.Certificates] = []
            for v in dict["Certificates"] as! [Any] {
                var model = DissociateAdditionalCertificatesFromListenerRequest.Certificates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.certificates = tmp
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DissociateAdditionalCertificatesFromListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EnableDeletionProtectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("LogProject") {
            self.logProject = dict["LogProject"] as! String
        }
        if dict.keys.contains("LogStore") {
            self.logStore = dict["LogStore"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EnableLoadBalancerAccessLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EnableLoadBalancerIpv6InternetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HealthCheckTemplateId") {
            self.healthCheckTemplateId = dict["HealthCheckTemplateId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HealthCheckCodes") {
            self.healthCheckCodes = dict["HealthCheckCodes"] as! [String]
        }
        if dict.keys.contains("HealthCheckConnectPort") {
            self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckHost") {
            self.healthCheckHost = dict["HealthCheckHost"] as! String
        }
        if dict.keys.contains("HealthCheckHttpVersion") {
            self.healthCheckHttpVersion = dict["HealthCheckHttpVersion"] as! String
        }
        if dict.keys.contains("HealthCheckInterval") {
            self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
        }
        if dict.keys.contains("HealthCheckMethod") {
            self.healthCheckMethod = dict["HealthCheckMethod"] as! String
        }
        if dict.keys.contains("HealthCheckPath") {
            self.healthCheckPath = dict["HealthCheckPath"] as! String
        }
        if dict.keys.contains("HealthCheckProtocol") {
            self.healthCheckProtocol = dict["HealthCheckProtocol"] as! String
        }
        if dict.keys.contains("HealthCheckTemplateId") {
            self.healthCheckTemplateId = dict["HealthCheckTemplateId"] as! String
        }
        if dict.keys.contains("HealthCheckTemplateName") {
            self.healthCheckTemplateName = dict["HealthCheckTemplateName"] as! String
        }
        if dict.keys.contains("HealthCheckTimeout") {
            self.healthCheckTimeout = dict["HealthCheckTimeout"] as! Int32
        }
        if dict.keys.contains("HealthyThreshold") {
            self.healthyThreshold = dict["HealthyThreshold"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tags") {
            var tmp : [GetHealthCheckTemplateAttributeResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = GetHealthCheckTemplateAttributeResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("UnhealthyThreshold") {
            self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetHealthCheckTemplateAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AclId") {
                    self.aclId = dict["AclId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclRelations") {
                var tmp : [GetListenerAttributeResponseBody.AclConfig.AclRelations] = []
                for v in dict["AclRelations"] as! [Any] {
                    var model = GetListenerAttributeResponseBody.AclConfig.AclRelations()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.aclRelations = tmp
            }
            if dict.keys.contains("AclType") {
                self.aclType = dict["AclType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertificateId") {
                self.certificateId = dict["CertificateId"] as! String
            }
            if dict.keys.contains("IsDefault") {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertificateId") {
                self.certificateId = dict["CertificateId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ServerGroupId") {
                        self.serverGroupId = dict["ServerGroupId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ServerGroupTuples") {
                    var tmp : [GetListenerAttributeResponseBody.DefaultActions.ForwardGroupConfig.ServerGroupTuples] = []
                    for v in dict["ServerGroupTuples"] as! [Any] {
                        var model = GetListenerAttributeResponseBody.DefaultActions.ForwardGroupConfig.ServerGroupTuples()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ForwardGroupConfig") {
                var model = GetListenerAttributeResponseBody.DefaultActions.ForwardGroupConfig()
                model.fromMap(dict["ForwardGroupConfig"] as! [String: Any])
                self.forwardGroupConfig = model
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TracingEnabled") {
                    self.tracingEnabled = dict["TracingEnabled"] as! Bool
                }
                if dict.keys.contains("TracingSample") {
                    self.tracingSample = dict["TracingSample"] as! Int32
                }
                if dict.keys.contains("TracingType") {
                    self.tracingType = dict["TracingType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessLogRecordCustomizedHeadersEnabled") {
                self.accessLogRecordCustomizedHeadersEnabled = dict["AccessLogRecordCustomizedHeadersEnabled"] as! Bool
            }
            if dict.keys.contains("AccessLogTracingConfig") {
                var model = GetListenerAttributeResponseBody.LogConfig.AccessLogTracingConfig()
                model.fromMap(dict["AccessLogTracingConfig"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("QuicListenerId") {
                self.quicListenerId = dict["QuicListenerId"] as! String
            }
            if dict.keys.contains("QuicUpgradeEnabled") {
                self.quicUpgradeEnabled = dict["QuicUpgradeEnabled"] as! Bool
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("XForwardedForClientCertClientVerifyAlias") {
                self.XForwardedForClientCertClientVerifyAlias = dict["XForwardedForClientCertClientVerifyAlias"] as! String
            }
            if dict.keys.contains("XForwardedForClientCertClientVerifyEnabled") {
                self.XForwardedForClientCertClientVerifyEnabled = dict["XForwardedForClientCertClientVerifyEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForClientCertFingerprintAlias") {
                self.XForwardedForClientCertFingerprintAlias = dict["XForwardedForClientCertFingerprintAlias"] as! String
            }
            if dict.keys.contains("XForwardedForClientCertFingerprintEnabled") {
                self.XForwardedForClientCertFingerprintEnabled = dict["XForwardedForClientCertFingerprintEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForClientCertIssuerDNAlias") {
                self.XForwardedForClientCertIssuerDNAlias = dict["XForwardedForClientCertIssuerDNAlias"] as! String
            }
            if dict.keys.contains("XForwardedForClientCertIssuerDNEnabled") {
                self.XForwardedForClientCertIssuerDNEnabled = dict["XForwardedForClientCertIssuerDNEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForClientCertSubjectDNAlias") {
                self.XForwardedForClientCertSubjectDNAlias = dict["XForwardedForClientCertSubjectDNAlias"] as! String
            }
            if dict.keys.contains("XForwardedForClientCertSubjectDNEnabled") {
                self.XForwardedForClientCertSubjectDNEnabled = dict["XForwardedForClientCertSubjectDNEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForClientSourceIpsEnabled") {
                self.XForwardedForClientSourceIpsEnabled = dict["XForwardedForClientSourceIpsEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForClientSourceIpsTrusted") {
                self.XForwardedForClientSourceIpsTrusted = dict["XForwardedForClientSourceIpsTrusted"] as! String
            }
            if dict.keys.contains("XForwardedForClientSrcPortEnabled") {
                self.XForwardedForClientSrcPortEnabled = dict["XForwardedForClientSrcPortEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForEnabled") {
                self.XForwardedForEnabled = dict["XForwardedForEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForProtoEnabled") {
                self.XForwardedForProtoEnabled = dict["XForwardedForProtoEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForSLBIdEnabled") {
                self.XForwardedForSLBIdEnabled = dict["XForwardedForSLBIdEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForSLBPortEnabled") {
                self.XForwardedForSLBPortEnabled = dict["XForwardedForSLBPortEnabled"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclConfig") {
            var model = GetListenerAttributeResponseBody.AclConfig()
            model.fromMap(dict["AclConfig"] as! [String: Any])
            self.aclConfig = model
        }
        if dict.keys.contains("CaCertificates") {
            var tmp : [GetListenerAttributeResponseBody.CaCertificates] = []
            for v in dict["CaCertificates"] as! [Any] {
                var model = GetListenerAttributeResponseBody.CaCertificates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.caCertificates = tmp
        }
        if dict.keys.contains("CaEnabled") {
            self.caEnabled = dict["CaEnabled"] as! Bool
        }
        if dict.keys.contains("Certificates") {
            var tmp : [GetListenerAttributeResponseBody.Certificates] = []
            for v in dict["Certificates"] as! [Any] {
                var model = GetListenerAttributeResponseBody.Certificates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.certificates = tmp
        }
        if dict.keys.contains("DefaultActions") {
            var tmp : [GetListenerAttributeResponseBody.DefaultActions] = []
            for v in dict["DefaultActions"] as! [Any] {
                var model = GetListenerAttributeResponseBody.DefaultActions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.defaultActions = tmp
        }
        if dict.keys.contains("GzipEnabled") {
            self.gzipEnabled = dict["GzipEnabled"] as! Bool
        }
        if dict.keys.contains("Http2Enabled") {
            self.http2Enabled = dict["Http2Enabled"] as! Bool
        }
        if dict.keys.contains("IdleTimeout") {
            self.idleTimeout = dict["IdleTimeout"] as! Int32
        }
        if dict.keys.contains("ListenerDescription") {
            self.listenerDescription = dict["ListenerDescription"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("ListenerProtocol") {
            self.listenerProtocol = dict["ListenerProtocol"] as! String
        }
        if dict.keys.contains("ListenerStatus") {
            self.listenerStatus = dict["ListenerStatus"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("LogConfig") {
            var model = GetListenerAttributeResponseBody.LogConfig()
            model.fromMap(dict["LogConfig"] as! [String: Any])
            self.logConfig = model
        }
        if dict.keys.contains("QuicConfig") {
            var model = GetListenerAttributeResponseBody.QuicConfig()
            model.fromMap(dict["QuicConfig"] as! [String: Any])
            self.quicConfig = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RequestTimeout") {
            self.requestTimeout = dict["RequestTimeout"] as! Int32
        }
        if dict.keys.contains("SecurityPolicyId") {
            self.securityPolicyId = dict["SecurityPolicyId"] as! String
        }
        if dict.keys.contains("Tags") {
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
        if dict.keys.contains("XForwardedForConfig") {
            var model = GetListenerAttributeResponseBody.XForwardedForConfig()
            model.fromMap(dict["XForwardedForConfig"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetListenerAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IncludeRule") {
            self.includeRule = dict["IncludeRule"] as! Bool
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ActualResponse") {
                            self.actualResponse = dict["ActualResponse"] as! String
                        }
                        if dict.keys.contains("ExpectedResponse") {
                            self.expectedResponse = dict["ExpectedResponse"] as! String
                        }
                        if dict.keys.contains("ReasonCode") {
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
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Int32
                    }
                    if dict.keys.contains("Reason") {
                        var model = GetListenerHealthStatusResponseBody.ListenerHealthStatus.ServerGroupInfos.NonNormalServers.Reason()
                        model.fromMap(dict["Reason"] as! [String: Any])
                        self.reason = model
                    }
                    if dict.keys.contains("ServerId") {
                        self.serverId = dict["ServerId"] as! String
                    }
                    if dict.keys.contains("ServerIp") {
                        self.serverIp = dict["ServerIp"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActionType") {
                    self.actionType = dict["ActionType"] as! String
                }
                if dict.keys.contains("HealthCheckEnabled") {
                    self.healthCheckEnabled = dict["HealthCheckEnabled"] as! String
                }
                if dict.keys.contains("NonNormalServers") {
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
                if dict.keys.contains("ServerGroupId") {
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
            if dict.keys.contains("ListenerId") {
                self.listenerId = dict["ListenerId"] as! String
            }
            if dict.keys.contains("ListenerPort") {
                self.listenerPort = dict["ListenerPort"] as! Int32
            }
            if dict.keys.contains("ListenerProtocol") {
                self.listenerProtocol = dict["ListenerProtocol"] as! String
            }
            if dict.keys.contains("ServerGroupInfos") {
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ActualResponse") {
                            self.actualResponse = dict["ActualResponse"] as! String
                        }
                        if dict.keys.contains("ExpectedResponse") {
                            self.expectedResponse = dict["ExpectedResponse"] as! String
                        }
                        if dict.keys.contains("ReasonCode") {
                            self.reasonCode = dict["ReasonCode"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Int32
                    }
                    if dict.keys.contains("Reason") {
                        var model = GetListenerHealthStatusResponseBody.RuleHealthStatus.ServerGroupInfos.NonNormalServers.Reason()
                        model.fromMap(dict["Reason"] as! [String: Any])
                        self.reason = model
                    }
                    if dict.keys.contains("ServerId") {
                        self.serverId = dict["ServerId"] as! String
                    }
                    if dict.keys.contains("ServerIp") {
                        self.serverIp = dict["ServerIp"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActionType") {
                    self.actionType = dict["ActionType"] as! String
                }
                if dict.keys.contains("HealthCheckEnabled") {
                    self.healthCheckEnabled = dict["HealthCheckEnabled"] as! String
                }
                if dict.keys.contains("NonNormalServers") {
                    var tmp : [GetListenerHealthStatusResponseBody.RuleHealthStatus.ServerGroupInfos.NonNormalServers] = []
                    for v in dict["NonNormalServers"] as! [Any] {
                        var model = GetListenerHealthStatusResponseBody.RuleHealthStatus.ServerGroupInfos.NonNormalServers()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.nonNormalServers = tmp
                }
                if dict.keys.contains("ServerGroupId") {
                    self.serverGroupId = dict["ServerGroupId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! String
            }
            if dict.keys.contains("ServerGroupInfos") {
                var tmp : [GetListenerHealthStatusResponseBody.RuleHealthStatus.ServerGroupInfos] = []
                for v in dict["ServerGroupInfos"] as! [Any] {
                    var model = GetListenerHealthStatusResponseBody.RuleHealthStatus.ServerGroupInfos()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListenerHealthStatus") {
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
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleHealthStatus") {
            var tmp : [GetListenerHealthStatusResponseBody.RuleHealthStatus] = []
            for v in dict["RuleHealthStatus"] as! [Any] {
                var model = GetListenerHealthStatusResponseBody.RuleHealthStatus()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetListenerHealthStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogProject") {
                self.logProject = dict["LogProject"] as! String
            }
            if dict.keys.contains("LogStore") {
                self.logStore = dict["LogStore"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Enabled") {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("EnabledTime") {
                self.enabledTime = dict["EnabledTime"] as! String
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
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LockReason") {
                self.lockReason = dict["LockReason"] as! String
            }
            if dict.keys.contains("LockType") {
                self.lockType = dict["LockType"] as! String
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
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

            public var ipv6Address: String?

            public var ipv6AddressHcStatus: String?

            public override init() {
                super.init()
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
                if self.ipv6Address != nil {
                    map["Ipv6Address"] = self.ipv6Address!
                }
                if self.ipv6AddressHcStatus != nil {
                    map["Ipv6AddressHcStatus"] = self.ipv6AddressHcStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Address") {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("AllocationId") {
                    self.allocationId = dict["AllocationId"] as! String
                }
                if dict.keys.contains("EipType") {
                    self.eipType = dict["EipType"] as! String
                }
                if dict.keys.contains("IntranetAddress") {
                    self.intranetAddress = dict["IntranetAddress"] as! String
                }
                if dict.keys.contains("IntranetAddressHcStatus") {
                    self.intranetAddressHcStatus = dict["IntranetAddressHcStatus"] as! String
                }
                if dict.keys.contains("Ipv6Address") {
                    self.ipv6Address = dict["Ipv6Address"] as! String
                }
                if dict.keys.contains("Ipv6AddressHcStatus") {
                    self.ipv6AddressHcStatus = dict["Ipv6AddressHcStatus"] as! String
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
            if dict.keys.contains("LoadBalancerAddresses") {
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
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessLogConfig") {
            var model = GetLoadBalancerAttributeResponseBody.AccessLogConfig()
            model.fromMap(dict["AccessLogConfig"] as! [String: Any])
            self.accessLogConfig = model
        }
        if dict.keys.contains("AddressAllocatedMode") {
            self.addressAllocatedMode = dict["AddressAllocatedMode"] as! String
        }
        if dict.keys.contains("AddressIpVersion") {
            self.addressIpVersion = dict["AddressIpVersion"] as! String
        }
        if dict.keys.contains("AddressType") {
            self.addressType = dict["AddressType"] as! String
        }
        if dict.keys.contains("BandwidthPackageId") {
            self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("DNSName") {
            self.DNSName = dict["DNSName"] as! String
        }
        if dict.keys.contains("DeletionProtectionConfig") {
            var model = GetLoadBalancerAttributeResponseBody.DeletionProtectionConfig()
            model.fromMap(dict["DeletionProtectionConfig"] as! [String: Any])
            self.deletionProtectionConfig = model
        }
        if dict.keys.contains("Ipv6AddressType") {
            self.ipv6AddressType = dict["Ipv6AddressType"] as! String
        }
        if dict.keys.contains("LoadBalancerBillingConfig") {
            var model = GetLoadBalancerAttributeResponseBody.LoadBalancerBillingConfig()
            model.fromMap(dict["LoadBalancerBillingConfig"] as! [String: Any])
            self.loadBalancerBillingConfig = model
        }
        if dict.keys.contains("LoadBalancerBussinessStatus") {
            self.loadBalancerBussinessStatus = dict["LoadBalancerBussinessStatus"] as! String
        }
        if dict.keys.contains("LoadBalancerEdition") {
            self.loadBalancerEdition = dict["LoadBalancerEdition"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("LoadBalancerName") {
            self.loadBalancerName = dict["LoadBalancerName"] as! String
        }
        if dict.keys.contains("LoadBalancerOperationLocks") {
            var tmp : [GetLoadBalancerAttributeResponseBody.LoadBalancerOperationLocks] = []
            for v in dict["LoadBalancerOperationLocks"] as! [Any] {
                var model = GetLoadBalancerAttributeResponseBody.LoadBalancerOperationLocks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.loadBalancerOperationLocks = tmp
        }
        if dict.keys.contains("LoadBalancerStatus") {
            self.loadBalancerStatus = dict["LoadBalancerStatus"] as! String
        }
        if dict.keys.contains("ModificationProtectionConfig") {
            var model = GetLoadBalancerAttributeResponseBody.ModificationProtectionConfig()
            model.fromMap(dict["ModificationProtectionConfig"] as! [String: Any])
            self.modificationProtectionConfig = model
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityGroupIds") {
            self.securityGroupIds = dict["SecurityGroupIds"] as! [String]
        }
        if dict.keys.contains("Tags") {
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
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneMappings") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetLoadBalancerAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AScriptIds") {
            self.AScriptIds = dict["AScriptIds"] as! [String]
        }
        if dict.keys.contains("AScriptNames") {
            self.AScriptNames = dict["AScriptNames"] as! [String]
        }
        if dict.keys.contains("ListenerIds") {
            self.listenerIds = dict["ListenerIds"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AScriptId") {
                self.AScriptId = dict["AScriptId"] as! String
            }
            if dict.keys.contains("AScriptName") {
                self.AScriptName = dict["AScriptName"] as! String
            }
            if dict.keys.contains("AScriptStatus") {
                self.AScriptStatus = dict["AScriptStatus"] as! String
            }
            if dict.keys.contains("Enabled") {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("ListenerId") {
                self.listenerId = dict["ListenerId"] as! String
            }
            if dict.keys.contains("LoadBalancerId") {
                self.loadBalancerId = dict["LoadBalancerId"] as! String
            }
            if dict.keys.contains("ScriptContent") {
                self.scriptContent = dict["ScriptContent"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AScripts") {
            var tmp : [ListAScriptsResponseBody.AScripts] = []
            for v in dict["AScripts"] as! [Any] {
                var model = ListAScriptsResponseBody.AScripts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.AScripts = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAScriptsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Entry") {
                self.entry = dict["Entry"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclEntries") {
            var tmp : [ListAclEntriesResponseBody.AclEntries] = []
            for v in dict["AclEntries"] as! [Any] {
                var model = ListAclEntriesResponseBody.AclEntries()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.aclEntries = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAclEntriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclIds") {
            self.aclIds = dict["AclIds"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ListenerId") {
                    self.listenerId = dict["ListenerId"] as! String
                }
                if dict.keys.contains("ListenerPort") {
                    self.listenerPort = dict["ListenerPort"] as! Int32
                }
                if dict.keys.contains("ListenerProtocol") {
                    self.listenerProtocol = dict["ListenerProtocol"] as! String
                }
                if dict.keys.contains("LoadBalancerId") {
                    self.loadBalancerId = dict["LoadBalancerId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclId") {
                self.aclId = dict["AclId"] as! String
            }
            if dict.keys.contains("RelatedListeners") {
                var tmp : [ListAclRelationsResponseBody.AclRelations.RelatedListeners] = []
                for v in dict["RelatedListeners"] as! [Any] {
                    var model = ListAclRelationsResponseBody.AclRelations.RelatedListeners()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclRelations") {
            var tmp : [ListAclRelationsResponseBody.AclRelations] = []
            for v in dict["AclRelations"] as! [Any] {
                var model = ListAclRelationsResponseBody.AclRelations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.aclRelations = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAclRelationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclIds") {
            self.aclIds = dict["AclIds"] as! [String]
        }
        if dict.keys.contains("AclNames") {
            self.aclNames = dict["AclNames"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListAclsRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListAclsRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclId") {
                self.aclId = dict["AclId"] as! String
            }
            if dict.keys.contains("AclName") {
                self.aclName = dict["AclName"] as! String
            }
            if dict.keys.contains("AclStatus") {
                self.aclStatus = dict["AclStatus"] as! String
            }
            if dict.keys.contains("AddressIPVersion") {
                self.addressIPVersion = dict["AddressIPVersion"] as! String
            }
            if dict.keys.contains("ConfigManagedEnabled") {
                self.configManagedEnabled = dict["ConfigManagedEnabled"] as! Bool
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListAclsResponseBody.Acls.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListAclsResponseBody.Acls.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Acls") {
            var tmp : [ListAclsResponseBody.Acls] = []
            for v in dict["Acls"] as! [Any] {
                var model = ListAclsResponseBody.Acls()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.acls = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAclsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiName") {
            self.apiName = dict["ApiName"] as! String
        }
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("JobIds") {
            self.jobIds = dict["JobIds"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIds = dict["ResourceIds"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiName") {
                self.apiName = dict["ApiName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! Int64
            }
            if dict.keys.contains("OperateType") {
                self.operateType = dict["OperateType"] as! String
            }
            if dict.keys.contains("ResourceId") {
                self.resourceId = dict["ResourceId"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Jobs") {
            var tmp : [ListAsynJobsResponseBody.Jobs] = []
            for v in dict["Jobs"] as! [Any] {
                var model = ListAsynJobsResponseBody.Jobs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.jobs = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAsynJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var healthCheckTemplateIds: [String]?

    public var healthCheckTemplateNames: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if dict.keys.contains("HealthCheckTemplateIds") {
            self.healthCheckTemplateIds = dict["HealthCheckTemplateIds"] as! [String]
        }
        if dict.keys.contains("HealthCheckTemplateNames") {
            self.healthCheckTemplateNames = dict["HealthCheckTemplateNames"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListHealthCheckTemplatesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListHealthCheckTemplatesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HealthCheckCodes") {
                self.healthCheckCodes = dict["HealthCheckCodes"] as! [String]
            }
            if dict.keys.contains("HealthCheckConnectPort") {
                self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
            }
            if dict.keys.contains("HealthCheckHost") {
                self.healthCheckHost = dict["HealthCheckHost"] as! String
            }
            if dict.keys.contains("HealthCheckHttpVersion") {
                self.healthCheckHttpVersion = dict["HealthCheckHttpVersion"] as! String
            }
            if dict.keys.contains("HealthCheckInterval") {
                self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
            }
            if dict.keys.contains("HealthCheckMethod") {
                self.healthCheckMethod = dict["HealthCheckMethod"] as! String
            }
            if dict.keys.contains("HealthCheckPath") {
                self.healthCheckPath = dict["HealthCheckPath"] as! String
            }
            if dict.keys.contains("HealthCheckProtocol") {
                self.healthCheckProtocol = dict["HealthCheckProtocol"] as! String
            }
            if dict.keys.contains("HealthCheckTemplateId") {
                self.healthCheckTemplateId = dict["HealthCheckTemplateId"] as! String
            }
            if dict.keys.contains("HealthCheckTemplateName") {
                self.healthCheckTemplateName = dict["HealthCheckTemplateName"] as! String
            }
            if dict.keys.contains("HealthCheckTimeout") {
                self.healthCheckTimeout = dict["HealthCheckTimeout"] as! Int32
            }
            if dict.keys.contains("HealthyThreshold") {
                self.healthyThreshold = dict["HealthyThreshold"] as! Int32
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListHealthCheckTemplatesResponseBody.HealthCheckTemplates.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListHealthCheckTemplatesResponseBody.HealthCheckTemplates.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("UnhealthyThreshold") {
                self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HealthCheckTemplates") {
            var tmp : [ListHealthCheckTemplatesResponseBody.HealthCheckTemplates] = []
            for v in dict["HealthCheckTemplates"] as! [Any] {
                var model = ListHealthCheckTemplatesResponseBody.HealthCheckTemplates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.healthCheckTemplates = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListHealthCheckTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateIds") {
            self.certificateIds = dict["CertificateIds"] as! [String]
        }
        if dict.keys.contains("CertificateType") {
            self.certificateType = dict["CertificateType"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
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
            if dict.keys.contains("CertificateId") {
                self.certificateId = dict["CertificateId"] as! String
            }
            if dict.keys.contains("CertificateType") {
                self.certificateType = dict["CertificateType"] as! String
            }
            if dict.keys.contains("IsDefault") {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Certificates") {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListenerIds") {
            self.listenerIds = dict["ListenerIds"] as! [String]
        }
        if dict.keys.contains("ListenerProtocol") {
            self.listenerProtocol = dict["ListenerProtocol"] as! String
        }
        if dict.keys.contains("LoadBalancerIds") {
            self.loadBalancerIds = dict["LoadBalancerIds"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Tag") {
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ServerGroupId") {
                            self.serverGroupId = dict["ServerGroupId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ServerGroupTuples") {
                        var tmp : [ListListenersResponseBody.Listeners.DefaultActions.ForwardGroupConfig.ServerGroupTuples] = []
                        for v in dict["ServerGroupTuples"] as! [Any] {
                            var model = ListListenersResponseBody.Listeners.DefaultActions.ForwardGroupConfig.ServerGroupTuples()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ForwardGroupConfig") {
                    var model = ListListenersResponseBody.Listeners.DefaultActions.ForwardGroupConfig()
                    model.fromMap(dict["ForwardGroupConfig"] as! [String: Any])
                    self.forwardGroupConfig = model
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TracingEnabled") {
                        self.tracingEnabled = dict["TracingEnabled"] as! Bool
                    }
                    if dict.keys.contains("TracingSample") {
                        self.tracingSample = dict["TracingSample"] as! Int32
                    }
                    if dict.keys.contains("TracingType") {
                        self.tracingType = dict["TracingType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessLogRecordCustomizedHeadersEnabled") {
                    self.accessLogRecordCustomizedHeadersEnabled = dict["AccessLogRecordCustomizedHeadersEnabled"] as! Bool
                }
                if dict.keys.contains("AccessLogTracingConfig") {
                    var model = ListListenersResponseBody.Listeners.LogConfig.AccessLogTracingConfig()
                    model.fromMap(dict["AccessLogTracingConfig"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("QuicListenerId") {
                    self.quicListenerId = dict["QuicListenerId"] as! String
                }
                if dict.keys.contains("QuicUpgradeEnabled") {
                    self.quicUpgradeEnabled = dict["QuicUpgradeEnabled"] as! Bool
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
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("XForwardedForClientCertClientVerifyAlias") {
                    self.XForwardedForClientCertClientVerifyAlias = dict["XForwardedForClientCertClientVerifyAlias"] as! String
                }
                if dict.keys.contains("XForwardedForClientCertClientVerifyEnabled") {
                    self.XForwardedForClientCertClientVerifyEnabled = dict["XForwardedForClientCertClientVerifyEnabled"] as! Bool
                }
                if dict.keys.contains("XForwardedForClientCertFingerprintAlias") {
                    self.XForwardedForClientCertFingerprintAlias = dict["XForwardedForClientCertFingerprintAlias"] as! String
                }
                if dict.keys.contains("XForwardedForClientCertFingerprintEnabled") {
                    self.XForwardedForClientCertFingerprintEnabled = dict["XForwardedForClientCertFingerprintEnabled"] as! Bool
                }
                if dict.keys.contains("XForwardedForClientCertIssuerDNAlias") {
                    self.XForwardedForClientCertIssuerDNAlias = dict["XForwardedForClientCertIssuerDNAlias"] as! String
                }
                if dict.keys.contains("XForwardedForClientCertIssuerDNEnabled") {
                    self.XForwardedForClientCertIssuerDNEnabled = dict["XForwardedForClientCertIssuerDNEnabled"] as! Bool
                }
                if dict.keys.contains("XForwardedForClientCertSubjectDNAlias") {
                    self.XForwardedForClientCertSubjectDNAlias = dict["XForwardedForClientCertSubjectDNAlias"] as! String
                }
                if dict.keys.contains("XForwardedForClientCertSubjectDNEnabled") {
                    self.XForwardedForClientCertSubjectDNEnabled = dict["XForwardedForClientCertSubjectDNEnabled"] as! Bool
                }
                if dict.keys.contains("XForwardedForClientSourceIpsEnabled") {
                    self.XForwardedForClientSourceIpsEnabled = dict["XForwardedForClientSourceIpsEnabled"] as! Bool
                }
                if dict.keys.contains("XForwardedForClientSourceIpsTrusted") {
                    self.XForwardedForClientSourceIpsTrusted = dict["XForwardedForClientSourceIpsTrusted"] as! String
                }
                if dict.keys.contains("XForwardedForClientSrcPortEnabled") {
                    self.XForwardedForClientSrcPortEnabled = dict["XForwardedForClientSrcPortEnabled"] as! Bool
                }
                if dict.keys.contains("XForwardedForEnabled") {
                    self.XForwardedForEnabled = dict["XForwardedForEnabled"] as! Bool
                }
                if dict.keys.contains("XForwardedForProtoEnabled") {
                    self.XForwardedForProtoEnabled = dict["XForwardedForProtoEnabled"] as! Bool
                }
                if dict.keys.contains("XForwardedForSLBIdEnabled") {
                    self.XForwardedForSLBIdEnabled = dict["XForwardedForSLBIdEnabled"] as! Bool
                }
                if dict.keys.contains("XForwardedForSLBPortEnabled") {
                    self.XForwardedForSLBPortEnabled = dict["XForwardedForSLBPortEnabled"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefaultActions") {
                var tmp : [ListListenersResponseBody.Listeners.DefaultActions] = []
                for v in dict["DefaultActions"] as! [Any] {
                    var model = ListListenersResponseBody.Listeners.DefaultActions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.defaultActions = tmp
            }
            if dict.keys.contains("GzipEnabled") {
                self.gzipEnabled = dict["GzipEnabled"] as! Bool
            }
            if dict.keys.contains("Http2Enabled") {
                self.http2Enabled = dict["Http2Enabled"] as! Bool
            }
            if dict.keys.contains("IdleTimeout") {
                self.idleTimeout = dict["IdleTimeout"] as! Int32
            }
            if dict.keys.contains("ListenerDescription") {
                self.listenerDescription = dict["ListenerDescription"] as! String
            }
            if dict.keys.contains("ListenerId") {
                self.listenerId = dict["ListenerId"] as! String
            }
            if dict.keys.contains("ListenerPort") {
                self.listenerPort = dict["ListenerPort"] as! Int32
            }
            if dict.keys.contains("ListenerProtocol") {
                self.listenerProtocol = dict["ListenerProtocol"] as! String
            }
            if dict.keys.contains("ListenerStatus") {
                self.listenerStatus = dict["ListenerStatus"] as! String
            }
            if dict.keys.contains("LoadBalancerId") {
                self.loadBalancerId = dict["LoadBalancerId"] as! String
            }
            if dict.keys.contains("LogConfig") {
                var model = ListListenersResponseBody.Listeners.LogConfig()
                model.fromMap(dict["LogConfig"] as! [String: Any])
                self.logConfig = model
            }
            if dict.keys.contains("QuicConfig") {
                var model = ListListenersResponseBody.Listeners.QuicConfig()
                model.fromMap(dict["QuicConfig"] as! [String: Any])
                self.quicConfig = model
            }
            if dict.keys.contains("RequestTimeout") {
                self.requestTimeout = dict["RequestTimeout"] as! Int32
            }
            if dict.keys.contains("SecurityPolicyId") {
                self.securityPolicyId = dict["SecurityPolicyId"] as! String
            }
            if dict.keys.contains("Tags") {
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
            if dict.keys.contains("XForwardedForConfig") {
                var model = ListListenersResponseBody.Listeners.XForwardedForConfig()
                model.fromMap(dict["XForwardedForConfig"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Listeners") {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddressIpVersion") {
            self.addressIpVersion = dict["AddressIpVersion"] as! String
        }
        if dict.keys.contains("AddressType") {
            self.addressType = dict["AddressType"] as! String
        }
        if dict.keys.contains("DNSName") {
            self.DNSName = dict["DNSName"] as! String
        }
        if dict.keys.contains("Ipv6AddressType") {
            self.ipv6AddressType = dict["Ipv6AddressType"] as! String
        }
        if dict.keys.contains("LoadBalancerBussinessStatus") {
            self.loadBalancerBussinessStatus = dict["LoadBalancerBussinessStatus"] as! String
        }
        if dict.keys.contains("LoadBalancerIds") {
            self.loadBalancerIds = dict["LoadBalancerIds"] as! [String]
        }
        if dict.keys.contains("LoadBalancerNames") {
            self.loadBalancerNames = dict["LoadBalancerNames"] as! [String]
        }
        if dict.keys.contains("LoadBalancerStatus") {
            self.loadBalancerStatus = dict["LoadBalancerStatus"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") {
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
        if dict.keys.contains("VpcIds") {
            self.vpcIds = dict["VpcIds"] as! [String]
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LogProject") {
                    self.logProject = dict["LogProject"] as! String
                }
                if dict.keys.contains("LogStore") {
                    self.logStore = dict["LogStore"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Enabled") {
                    self.enabled = dict["Enabled"] as! Bool
                }
                if dict.keys.contains("EnabledTime") {
                    self.enabledTime = dict["EnabledTime"] as! String
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
                if dict.keys.contains("PayType") {
                    self.payType = dict["PayType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LockReason") {
                    self.lockReason = dict["LockReason"] as! String
                }
                if dict.keys.contains("LockType") {
                    self.lockType = dict["LockType"] as! String
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
                if dict.keys.contains("Reason") {
                    self.reason = dict["Reason"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
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
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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
            if dict.keys.contains("AccessLogConfig") {
                var model = ListLoadBalancersResponseBody.LoadBalancers.AccessLogConfig()
                model.fromMap(dict["AccessLogConfig"] as! [String: Any])
                self.accessLogConfig = model
            }
            if dict.keys.contains("AddressAllocatedMode") {
                self.addressAllocatedMode = dict["AddressAllocatedMode"] as! String
            }
            if dict.keys.contains("AddressIpVersion") {
                self.addressIpVersion = dict["AddressIpVersion"] as! String
            }
            if dict.keys.contains("AddressType") {
                self.addressType = dict["AddressType"] as! String
            }
            if dict.keys.contains("BandwidthPackageId") {
                self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DNSName") {
                self.DNSName = dict["DNSName"] as! String
            }
            if dict.keys.contains("DeletionProtectionConfig") {
                var model = ListLoadBalancersResponseBody.LoadBalancers.DeletionProtectionConfig()
                model.fromMap(dict["DeletionProtectionConfig"] as! [String: Any])
                self.deletionProtectionConfig = model
            }
            if dict.keys.contains("Ipv6AddressType") {
                self.ipv6AddressType = dict["Ipv6AddressType"] as! String
            }
            if dict.keys.contains("LoadBalancerBillingConfig") {
                var model = ListLoadBalancersResponseBody.LoadBalancers.LoadBalancerBillingConfig()
                model.fromMap(dict["LoadBalancerBillingConfig"] as! [String: Any])
                self.loadBalancerBillingConfig = model
            }
            if dict.keys.contains("LoadBalancerBussinessStatus") {
                self.loadBalancerBussinessStatus = dict["LoadBalancerBussinessStatus"] as! String
            }
            if dict.keys.contains("LoadBalancerEdition") {
                self.loadBalancerEdition = dict["LoadBalancerEdition"] as! String
            }
            if dict.keys.contains("LoadBalancerId") {
                self.loadBalancerId = dict["LoadBalancerId"] as! String
            }
            if dict.keys.contains("LoadBalancerName") {
                self.loadBalancerName = dict["LoadBalancerName"] as! String
            }
            if dict.keys.contains("LoadBalancerOperationLocks") {
                var tmp : [ListLoadBalancersResponseBody.LoadBalancers.LoadBalancerOperationLocks] = []
                for v in dict["LoadBalancerOperationLocks"] as! [Any] {
                    var model = ListLoadBalancersResponseBody.LoadBalancers.LoadBalancerOperationLocks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.loadBalancerOperationLocks = tmp
            }
            if dict.keys.contains("LoadBalancerStatus") {
                self.loadBalancerStatus = dict["LoadBalancerStatus"] as! String
            }
            if dict.keys.contains("ModificationProtectionConfig") {
                var model = ListLoadBalancersResponseBody.LoadBalancers.ModificationProtectionConfig()
                model.fromMap(dict["ModificationProtectionConfig"] as! [String: Any])
                self.modificationProtectionConfig = model
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Tags") {
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
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
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
        if dict.keys.contains("LoadBalancers") {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListLoadBalancersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("ListenerIds") {
            self.listenerIds = dict["ListenerIds"] as! [String]
        }
        if dict.keys.contains("LoadBalancerIds") {
            self.loadBalancerIds = dict["LoadBalancerIds"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RuleIds") {
            self.ruleIds = dict["RuleIds"] as! [String]
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListRulesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListRulesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AllowCredentials") {
                        self.allowCredentials = dict["AllowCredentials"] as! String
                    }
                    if dict.keys.contains("AllowHeaders") {
                        self.allowHeaders = dict["AllowHeaders"] as! [String]
                    }
                    if dict.keys.contains("AllowMethods") {
                        self.allowMethods = dict["AllowMethods"] as! [String]
                    }
                    if dict.keys.contains("AllowOrigin") {
                        self.allowOrigin = dict["AllowOrigin"] as! [String]
                    }
                    if dict.keys.contains("ExposeHeaders") {
                        self.exposeHeaders = dict["ExposeHeaders"] as! [String]
                    }
                    if dict.keys.contains("MaxAge") {
                        self.maxAge = dict["MaxAge"] as! Int64
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("ContentType") {
                        self.contentType = dict["ContentType"] as! String
                    }
                    if dict.keys.contains("HttpCode") {
                        self.httpCode = dict["HttpCode"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Enabled") {
                            self.enabled = dict["Enabled"] as! Bool
                        }
                        if dict.keys.contains("Timeout") {
                            self.timeout = dict["Timeout"] as! Int32
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ServerGroupId") {
                            self.serverGroupId = dict["ServerGroupId"] as! String
                        }
                        if dict.keys.contains("Weight") {
                            self.weight = dict["Weight"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ServerGroupStickySession") {
                        var model = ListRulesResponseBody.Rules.RuleActions.ForwardGroupConfig.ServerGroupStickySession()
                        model.fromMap(dict["ServerGroupStickySession"] as! [String: Any])
                        self.serverGroupStickySession = model
                    }
                    if dict.keys.contains("ServerGroupTuples") {
                        var tmp : [ListRulesResponseBody.Rules.RuleActions.ForwardGroupConfig.ServerGroupTuples] = []
                        for v in dict["ServerGroupTuples"] as! [Any] {
                            var model = ListRulesResponseBody.Rules.RuleActions.ForwardGroupConfig.ServerGroupTuples()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                    if dict.keys.contains("ValueType") {
                        self.valueType = dict["ValueType"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Host") {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("HttpCode") {
                        self.httpCode = dict["HttpCode"] as! String
                    }
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! String
                    }
                    if dict.keys.contains("Protocol") {
                        self.protocol_ = dict["Protocol"] as! String
                    }
                    if dict.keys.contains("Query") {
                        self.query = dict["Query"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Host") {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                    if dict.keys.contains("Query") {
                        self.query = dict["Query"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PerIpQps") {
                        self.perIpQps = dict["PerIpQps"] as! Int32
                    }
                    if dict.keys.contains("QPS") {
                        self.QPS = dict["QPS"] as! Int32
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("ServerGroupId") {
                                self.serverGroupId = dict["ServerGroupId"] as! String
                            }
                            if dict.keys.contains("Weight") {
                                self.weight = dict["Weight"] as! Int32
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ServerGroupTuples") {
                            var tmp : [ListRulesResponseBody.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples] = []
                            for v in dict["ServerGroupTuples"] as! [Any] {
                                var model = ListRulesResponseBody.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MirrorGroupConfig") {
                        var model = ListRulesResponseBody.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig()
                        model.fromMap(dict["MirrorGroupConfig"] as! [String: Any])
                        self.mirrorGroupConfig = model
                    }
                    if dict.keys.contains("TargetType") {
                        self.targetType = dict["TargetType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CorsConfig") {
                    var model = ListRulesResponseBody.Rules.RuleActions.CorsConfig()
                    model.fromMap(dict["CorsConfig"] as! [String: Any])
                    self.corsConfig = model
                }
                if dict.keys.contains("FixedResponseConfig") {
                    var model = ListRulesResponseBody.Rules.RuleActions.FixedResponseConfig()
                    model.fromMap(dict["FixedResponseConfig"] as! [String: Any])
                    self.fixedResponseConfig = model
                }
                if dict.keys.contains("ForwardGroupConfig") {
                    var model = ListRulesResponseBody.Rules.RuleActions.ForwardGroupConfig()
                    model.fromMap(dict["ForwardGroupConfig"] as! [String: Any])
                    self.forwardGroupConfig = model
                }
                if dict.keys.contains("InsertHeaderConfig") {
                    var model = ListRulesResponseBody.Rules.RuleActions.InsertHeaderConfig()
                    model.fromMap(dict["InsertHeaderConfig"] as! [String: Any])
                    self.insertHeaderConfig = model
                }
                if dict.keys.contains("Order") {
                    self.order = dict["Order"] as! Int32
                }
                if dict.keys.contains("RedirectConfig") {
                    var model = ListRulesResponseBody.Rules.RuleActions.RedirectConfig()
                    model.fromMap(dict["RedirectConfig"] as! [String: Any])
                    self.redirectConfig = model
                }
                if dict.keys.contains("RemoveHeaderConfig") {
                    var model = ListRulesResponseBody.Rules.RuleActions.RemoveHeaderConfig()
                    model.fromMap(dict["RemoveHeaderConfig"] as! [String: Any])
                    self.removeHeaderConfig = model
                }
                if dict.keys.contains("RewriteConfig") {
                    var model = ListRulesResponseBody.Rules.RuleActions.RewriteConfig()
                    model.fromMap(dict["RewriteConfig"] as! [String: Any])
                    self.rewriteConfig = model
                }
                if dict.keys.contains("TrafficLimitConfig") {
                    var model = ListRulesResponseBody.Rules.RuleActions.TrafficLimitConfig()
                    model.fromMap(dict["TrafficLimitConfig"] as! [String: Any])
                    self.trafficLimitConfig = model
                }
                if dict.keys.contains("TrafficMirrorConfig") {
                    var model = ListRulesResponseBody.Rules.RuleActions.TrafficMirrorConfig()
                    model.fromMap(dict["TrafficMirrorConfig"] as! [String: Any])
                    self.trafficMirrorConfig = model
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        var tmp : [ListRulesResponseBody.Rules.RuleConditions.CookieConfig.Values] = []
                        for v in dict["Values"] as! [Any] {
                            var model = ListRulesResponseBody.Rules.RuleConditions.CookieConfig.Values()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        var tmp : [ListRulesResponseBody.Rules.RuleConditions.QueryStringConfig.Values] = []
                        for v in dict["Values"] as! [Any] {
                            var model = ListRulesResponseBody.Rules.RuleConditions.QueryStringConfig.Values()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CookieConfig") {
                    var model = ListRulesResponseBody.Rules.RuleConditions.CookieConfig()
                    model.fromMap(dict["CookieConfig"] as! [String: Any])
                    self.cookieConfig = model
                }
                if dict.keys.contains("HeaderConfig") {
                    var model = ListRulesResponseBody.Rules.RuleConditions.HeaderConfig()
                    model.fromMap(dict["HeaderConfig"] as! [String: Any])
                    self.headerConfig = model
                }
                if dict.keys.contains("HostConfig") {
                    var model = ListRulesResponseBody.Rules.RuleConditions.HostConfig()
                    model.fromMap(dict["HostConfig"] as! [String: Any])
                    self.hostConfig = model
                }
                if dict.keys.contains("MethodConfig") {
                    var model = ListRulesResponseBody.Rules.RuleConditions.MethodConfig()
                    model.fromMap(dict["MethodConfig"] as! [String: Any])
                    self.methodConfig = model
                }
                if dict.keys.contains("PathConfig") {
                    var model = ListRulesResponseBody.Rules.RuleConditions.PathConfig()
                    model.fromMap(dict["PathConfig"] as! [String: Any])
                    self.pathConfig = model
                }
                if dict.keys.contains("QueryStringConfig") {
                    var model = ListRulesResponseBody.Rules.RuleConditions.QueryStringConfig()
                    model.fromMap(dict["QueryStringConfig"] as! [String: Any])
                    self.queryStringConfig = model
                }
                if dict.keys.contains("ResponseHeaderConfig") {
                    var model = ListRulesResponseBody.Rules.RuleConditions.ResponseHeaderConfig()
                    model.fromMap(dict["ResponseHeaderConfig"] as! [String: Any])
                    self.responseHeaderConfig = model
                }
                if dict.keys.contains("ResponseStatusCodeConfig") {
                    var model = ListRulesResponseBody.Rules.RuleConditions.ResponseStatusCodeConfig()
                    model.fromMap(dict["ResponseStatusCodeConfig"] as! [String: Any])
                    self.responseStatusCodeConfig = model
                }
                if dict.keys.contains("SourceIpConfig") {
                    var model = ListRulesResponseBody.Rules.RuleConditions.SourceIpConfig()
                    model.fromMap(dict["SourceIpConfig"] as! [String: Any])
                    self.sourceIpConfig = model
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
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
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Direction") {
                self.direction = dict["Direction"] as! String
            }
            if dict.keys.contains("ListenerId") {
                self.listenerId = dict["ListenerId"] as! String
            }
            if dict.keys.contains("LoadBalancerId") {
                self.loadBalancerId = dict["LoadBalancerId"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("RuleActions") {
                var tmp : [ListRulesResponseBody.Rules.RuleActions] = []
                for v in dict["RuleActions"] as! [Any] {
                    var model = ListRulesResponseBody.Rules.RuleActions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ruleActions = tmp
            }
            if dict.keys.contains("RuleConditions") {
                var tmp : [ListRulesResponseBody.Rules.RuleConditions] = []
                for v in dict["RuleConditions"] as! [Any] {
                    var model = ListRulesResponseBody.Rules.RuleConditions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ruleConditions = tmp
            }
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! String
            }
            if dict.keys.contains("RuleName") {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("RuleStatus") {
                self.ruleStatus = dict["RuleStatus"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListRulesResponseBody.Rules.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListRulesResponseBody.Rules.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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
        if dict.keys.contains("Rules") {
            var tmp : [ListRulesResponseBody.Rules] = []
            for v in dict["Rules"] as! [Any] {
                var model = ListRulesResponseBody.Rules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rules = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityPolicyIds") {
            self.securityPolicyIds = dict["SecurityPolicyIds"] as! [String]
        }
        if dict.keys.contains("SecurityPolicyNames") {
            self.securityPolicyNames = dict["SecurityPolicyNames"] as! [String]
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListSecurityPoliciesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListSecurityPoliciesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ciphers") {
                self.ciphers = dict["Ciphers"] as! [String]
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SecurityPolicyId") {
                self.securityPolicyId = dict["SecurityPolicyId"] as! String
            }
            if dict.keys.contains("SecurityPolicyName") {
                self.securityPolicyName = dict["SecurityPolicyName"] as! String
            }
            if dict.keys.contains("SecurityPolicyStatus") {
                self.securityPolicyStatus = dict["SecurityPolicyStatus"] as! String
            }
            if dict.keys.contains("TLSVersions") {
                self.TLSVersions = dict["TLSVersions"] as! [String]
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListSecurityPoliciesResponseBody.SecurityPolicies.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListSecurityPoliciesResponseBody.SecurityPolicies.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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
        if dict.keys.contains("SecurityPolicies") {
            var tmp : [ListSecurityPoliciesResponseBody.SecurityPolicies] = []
            for v in dict["SecurityPolicies"] as! [Any] {
                var model = ListSecurityPoliciesResponseBody.SecurityPolicies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.securityPolicies = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSecurityPoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecurityPolicyIds") {
            self.securityPolicyIds = dict["SecurityPolicyIds"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ListenerId") {
                    self.listenerId = dict["ListenerId"] as! String
                }
                if dict.keys.contains("ListenerPort") {
                    self.listenerPort = dict["ListenerPort"] as! Int64
                }
                if dict.keys.contains("ListenerProtocol") {
                    self.listenerProtocol = dict["ListenerProtocol"] as! String
                }
                if dict.keys.contains("LoadBalancerId") {
                    self.loadBalancerId = dict["LoadBalancerId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RelatedListeners") {
                var tmp : [ListSecurityPolicyRelationsResponseBody.SecrityPolicyRelations.RelatedListeners] = []
                for v in dict["RelatedListeners"] as! [Any] {
                    var model = ListSecurityPolicyRelationsResponseBody.SecrityPolicyRelations.RelatedListeners()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.relatedListeners = tmp
            }
            if dict.keys.contains("SecurityPolicyId") {
                self.securityPolicyId = dict["SecurityPolicyId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecrityPolicyRelations") {
            var tmp : [ListSecurityPolicyRelationsResponseBody.SecrityPolicyRelations] = []
            for v in dict["SecrityPolicyRelations"] as! [Any] {
                var model = ListSecurityPolicyRelationsResponseBody.SecrityPolicyRelations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSecurityPolicyRelationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ServerGroupId") {
            self.serverGroupId = dict["ServerGroupId"] as! String
        }
        if dict.keys.contains("ServerIds") {
            self.serverIds = dict["ServerIds"] as! [String]
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListServerGroupServersRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListServerGroupServersRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("RemoteIpEnabled") {
                self.remoteIpEnabled = dict["RemoteIpEnabled"] as! Bool
            }
            if dict.keys.contains("ServerGroupId") {
                self.serverGroupId = dict["ServerGroupId"] as! String
            }
            if dict.keys.contains("ServerId") {
                self.serverId = dict["ServerId"] as! String
            }
            if dict.keys.contains("ServerIp") {
                self.serverIp = dict["ServerIp"] as! String
            }
            if dict.keys.contains("ServerType") {
                self.serverType = dict["ServerType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Weight") {
                self.weight = dict["Weight"] as! Int32
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
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Servers") {
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
        if dict.keys.contains("TotalCount") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServerGroupIds") {
            self.serverGroupIds = dict["ServerGroupIds"] as! [String]
        }
        if dict.keys.contains("ServerGroupNames") {
            self.serverGroupNames = dict["ServerGroupNames"] as! [String]
        }
        if dict.keys.contains("ServerGroupType") {
            self.serverGroupType = dict["ServerGroupType"] as! String
        }
        if dict.keys.contains("Tag") {
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
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionDrainEnabled") {
                    self.connectionDrainEnabled = dict["ConnectionDrainEnabled"] as! Bool
                }
                if dict.keys.contains("ConnectionDrainTimeout") {
                    self.connectionDrainTimeout = dict["ConnectionDrainTimeout"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HealthCheckCodes") {
                    self.healthCheckCodes = dict["HealthCheckCodes"] as! [String]
                }
                if dict.keys.contains("HealthCheckConnectPort") {
                    self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
                }
                if dict.keys.contains("HealthCheckEnabled") {
                    self.healthCheckEnabled = dict["HealthCheckEnabled"] as! Bool
                }
                if dict.keys.contains("HealthCheckHost") {
                    self.healthCheckHost = dict["HealthCheckHost"] as! String
                }
                if dict.keys.contains("HealthCheckHttpVersion") {
                    self.healthCheckHttpVersion = dict["HealthCheckHttpVersion"] as! String
                }
                if dict.keys.contains("HealthCheckInterval") {
                    self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
                }
                if dict.keys.contains("HealthCheckMethod") {
                    self.healthCheckMethod = dict["HealthCheckMethod"] as! String
                }
                if dict.keys.contains("HealthCheckPath") {
                    self.healthCheckPath = dict["HealthCheckPath"] as! String
                }
                if dict.keys.contains("HealthCheckProtocol") {
                    self.healthCheckProtocol = dict["HealthCheckProtocol"] as! String
                }
                if dict.keys.contains("HealthCheckTimeout") {
                    self.healthCheckTimeout = dict["HealthCheckTimeout"] as! Int32
                }
                if dict.keys.contains("HealthyThreshold") {
                    self.healthyThreshold = dict["HealthyThreshold"] as! Int32
                }
                if dict.keys.contains("UnhealthyThreshold") {
                    self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SlowStartDuration") {
                    self.slowStartDuration = dict["SlowStartDuration"] as! Int32
                }
                if dict.keys.contains("SlowStartEnabled") {
                    self.slowStartEnabled = dict["SlowStartEnabled"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cookie") {
                    self.cookie = dict["Cookie"] as! String
                }
                if dict.keys.contains("CookieTimeout") {
                    self.cookieTimeout = dict["CookieTimeout"] as! Int32
                }
                if dict.keys.contains("StickySessionEnabled") {
                    self.stickySessionEnabled = dict["StickySessionEnabled"] as! Bool
                }
                if dict.keys.contains("StickySessionType") {
                    self.stickySessionType = dict["StickySessionType"] as! String
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
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var configManagedEnabled: Bool?

        public var connectionDrainConfig: ListServerGroupsResponseBody.ServerGroups.ConnectionDrainConfig?

        public var createTime: String?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigManagedEnabled") {
                self.configManagedEnabled = dict["ConfigManagedEnabled"] as! Bool
            }
            if dict.keys.contains("ConnectionDrainConfig") {
                var model = ListServerGroupsResponseBody.ServerGroups.ConnectionDrainConfig()
                model.fromMap(dict["ConnectionDrainConfig"] as! [String: Any])
                self.connectionDrainConfig = model
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("HealthCheckConfig") {
                var model = ListServerGroupsResponseBody.ServerGroups.HealthCheckConfig()
                model.fromMap(dict["HealthCheckConfig"] as! [String: Any])
                self.healthCheckConfig = model
            }
            if dict.keys.contains("Ipv6Enabled") {
                self.ipv6Enabled = dict["Ipv6Enabled"] as! Bool
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("RelatedLoadBalancerIds") {
                self.relatedLoadBalancerIds = dict["RelatedLoadBalancerIds"] as! [String]
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Scheduler") {
                self.scheduler = dict["Scheduler"] as! String
            }
            if dict.keys.contains("ServerCount") {
                self.serverCount = dict["ServerCount"] as! Int32
            }
            if dict.keys.contains("ServerGroupId") {
                self.serverGroupId = dict["ServerGroupId"] as! String
            }
            if dict.keys.contains("ServerGroupName") {
                self.serverGroupName = dict["ServerGroupName"] as! String
            }
            if dict.keys.contains("ServerGroupStatus") {
                self.serverGroupStatus = dict["ServerGroupStatus"] as! String
            }
            if dict.keys.contains("ServerGroupType") {
                self.serverGroupType = dict["ServerGroupType"] as! String
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("SlowStartConfig") {
                var model = ListServerGroupsResponseBody.ServerGroups.SlowStartConfig()
                model.fromMap(dict["SlowStartConfig"] as! [String: Any])
                self.slowStartConfig = model
            }
            if dict.keys.contains("StickySessionConfig") {
                var model = ListServerGroupsResponseBody.ServerGroups.StickySessionConfig()
                model.fromMap(dict["StickySessionConfig"] as! [String: Any])
                self.stickySessionConfig = model
            }
            if dict.keys.contains("Tags") {
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
            if dict.keys.contains("UchConfig") {
                var model = ListServerGroupsResponseBody.ServerGroups.UchConfig()
                model.fromMap(dict["UchConfig"] as! [String: Any])
                self.uchConfig = model
            }
            if dict.keys.contains("UpstreamKeepaliveEnabled") {
                self.upstreamKeepaliveEnabled = dict["UpstreamKeepaliveEnabled"] as! Bool
            }
            if dict.keys.contains("VpcId") {
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
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServerGroups") {
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
        if dict.keys.contains("TotalCount") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListServerGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ciphers") {
                self.ciphers = dict["Ciphers"] as! [String]
            }
            if dict.keys.contains("SecurityPolicyId") {
                self.securityPolicyId = dict["SecurityPolicyId"] as! String
            }
            if dict.keys.contains("TLSVersions") {
                self.TLSVersions = dict["TLSVersions"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityPolicies") {
            var tmp : [ListSystemSecurityPoliciesResponseBody.SecurityPolicies] = []
            for v in dict["SecurityPolicies"] as! [Any] {
                var model = ListSystemSecurityPoliciesResponseBody.SecurityPolicies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSystemSecurityPoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("TagKey") {
                self.tagKey = dict["TagKey"] as! String
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
        if dict.keys.contains("TagKeys") {
            var tmp : [ListTagKeysResponseBody.TagKeys] = []
            for v in dict["TagKeys"] as! [Any] {
                var model = ListTagKeysResponseBody.TagKeys()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagKeys = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagKeysResponseBody()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
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
        if dict.keys.contains("TagResources") {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! String
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
        if dict.keys.contains("TagValues") {
            self.tagValues = dict["TagValues"] as! [String]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagValuesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("SecurityGroupIds") {
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
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("SecurityGroupIds") {
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
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = LoadBalancerLeaveSecurityGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewResourceGroupId") {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Entries") {
            self.entries = dict["Entries"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RemoveEntriesFromAclResponseBody()
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
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("ServerId") {
                self.serverId = dict["ServerId"] as! String
            }
            if dict.keys.contains("ServerIp") {
                self.serverIp = dict["ServerIp"] as! String
            }
            if dict.keys.contains("ServerType") {
                self.serverType = dict["ServerType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ServerGroupId") {
            self.serverGroupId = dict["ServerGroupId"] as! String
        }
        if dict.keys.contains("Servers") {
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

    public override init() {
        super.init()
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
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RemoveServersFromServerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("ServerId") {
                self.serverId = dict["ServerId"] as! String
            }
            if dict.keys.contains("ServerIp") {
                self.serverIp = dict["ServerIp"] as! String
            }
            if dict.keys.contains("ServerType") {
                self.serverType = dict["ServerType"] as! String
            }
            if dict.keys.contains("Weight") {
                self.weight = dict["Weight"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("ServerId") {
                self.serverId = dict["ServerId"] as! String
            }
            if dict.keys.contains("ServerIp") {
                self.serverIp = dict["ServerIp"] as! String
            }
            if dict.keys.contains("ServerType") {
                self.serverType = dict["ServerType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddedServers") {
            var tmp : [ReplaceServersInServerGroupRequest.AddedServers] = []
            for v in dict["AddedServers"] as! [Any] {
                var model = ReplaceServersInServerGroupRequest.AddedServers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.addedServers = tmp
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("RemovedServers") {
            var tmp : [ReplaceServersInServerGroupRequest.RemovedServers] = []
            for v in dict["RemovedServers"] as! [Any] {
                var model = ReplaceServersInServerGroupRequest.RemovedServers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.removedServers = tmp
        }
        if dict.keys.contains("ServerGroupId") {
            self.serverGroupId = dict["ServerGroupId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ReplaceServersInServerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
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
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("ZoneMappings") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
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
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [UnTagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = UnTagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UnTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttributeKey") {
                    self.attributeKey = dict["AttributeKey"] as! String
                }
                if dict.keys.contains("AttributeValue") {
                    self.attributeValue = dict["AttributeValue"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AScriptId") {
                self.AScriptId = dict["AScriptId"] as! String
            }
            if dict.keys.contains("AScriptName") {
                self.AScriptName = dict["AScriptName"] as! String
            }
            if dict.keys.contains("Enabled") {
                self.enabled = dict["Enabled"] as! Bool
            }
            if dict.keys.contains("ExtAttributeEnabled") {
                self.extAttributeEnabled = dict["ExtAttributeEnabled"] as! Bool
            }
            if dict.keys.contains("ExtAttributes") {
                var tmp : [UpdateAScriptsRequest.AScripts.ExtAttributes] = []
                for v in dict["ExtAttributes"] as! [Any] {
                    var model = UpdateAScriptsRequest.AScripts.ExtAttributes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.extAttributes = tmp
            }
            if dict.keys.contains("ScriptContent") {
                self.scriptContent = dict["ScriptContent"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AScripts") {
            var tmp : [UpdateAScriptsRequest.AScripts] = []
            for v in dict["AScripts"] as! [Any] {
                var model = UpdateAScriptsRequest.AScripts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.AScripts = tmp
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAScriptsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("AclName") {
            self.aclName = dict["AclName"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAclAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("HealthCheckCodes") {
            self.healthCheckCodes = dict["HealthCheckCodes"] as! [String]
        }
        if dict.keys.contains("HealthCheckConnectPort") {
            self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckHost") {
            self.healthCheckHost = dict["HealthCheckHost"] as! String
        }
        if dict.keys.contains("HealthCheckHttpVersion") {
            self.healthCheckHttpVersion = dict["HealthCheckHttpVersion"] as! String
        }
        if dict.keys.contains("HealthCheckInterval") {
            self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
        }
        if dict.keys.contains("HealthCheckMethod") {
            self.healthCheckMethod = dict["HealthCheckMethod"] as! String
        }
        if dict.keys.contains("HealthCheckPath") {
            self.healthCheckPath = dict["HealthCheckPath"] as! String
        }
        if dict.keys.contains("HealthCheckProtocol") {
            self.healthCheckProtocol = dict["HealthCheckProtocol"] as! String
        }
        if dict.keys.contains("HealthCheckTemplateId") {
            self.healthCheckTemplateId = dict["HealthCheckTemplateId"] as! String
        }
        if dict.keys.contains("HealthCheckTemplateName") {
            self.healthCheckTemplateName = dict["HealthCheckTemplateName"] as! String
        }
        if dict.keys.contains("HealthCheckTimeout") {
            self.healthCheckTimeout = dict["HealthCheckTimeout"] as! Int32
        }
        if dict.keys.contains("HealthyThreshold") {
            self.healthyThreshold = dict["HealthyThreshold"] as! Int32
        }
        if dict.keys.contains("UnhealthyThreshold") {
            self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateHealthCheckTemplateAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertificateId") {
                self.certificateId = dict["CertificateId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertificateId") {
                self.certificateId = dict["CertificateId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ServerGroupId") {
                        self.serverGroupId = dict["ServerGroupId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ServerGroupTuples") {
                    var tmp : [UpdateListenerAttributeRequest.DefaultActions.ForwardGroupConfig.ServerGroupTuples] = []
                    for v in dict["ServerGroupTuples"] as! [Any] {
                        var model = UpdateListenerAttributeRequest.DefaultActions.ForwardGroupConfig.ServerGroupTuples()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ForwardGroupConfig") {
                var model = UpdateListenerAttributeRequest.DefaultActions.ForwardGroupConfig()
                model.fromMap(dict["ForwardGroupConfig"] as! [String: Any])
                self.forwardGroupConfig = model
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("QuicListenerId") {
                self.quicListenerId = dict["QuicListenerId"] as! String
            }
            if dict.keys.contains("QuicUpgradeEnabled") {
                self.quicUpgradeEnabled = dict["QuicUpgradeEnabled"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("XForwardedForClientCertClientVerifyAlias") {
                self.XForwardedForClientCertClientVerifyAlias = dict["XForwardedForClientCertClientVerifyAlias"] as! String
            }
            if dict.keys.contains("XForwardedForClientCertClientVerifyEnabled") {
                self.XForwardedForClientCertClientVerifyEnabled = dict["XForwardedForClientCertClientVerifyEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForClientCertFingerprintAlias") {
                self.XForwardedForClientCertFingerprintAlias = dict["XForwardedForClientCertFingerprintAlias"] as! String
            }
            if dict.keys.contains("XForwardedForClientCertFingerprintEnabled") {
                self.XForwardedForClientCertFingerprintEnabled = dict["XForwardedForClientCertFingerprintEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForClientCertIssuerDNAlias") {
                self.XForwardedForClientCertIssuerDNAlias = dict["XForwardedForClientCertIssuerDNAlias"] as! String
            }
            if dict.keys.contains("XForwardedForClientCertIssuerDNEnabled") {
                self.XForwardedForClientCertIssuerDNEnabled = dict["XForwardedForClientCertIssuerDNEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForClientCertSubjectDNAlias") {
                self.XForwardedForClientCertSubjectDNAlias = dict["XForwardedForClientCertSubjectDNAlias"] as! String
            }
            if dict.keys.contains("XForwardedForClientCertSubjectDNEnabled") {
                self.XForwardedForClientCertSubjectDNEnabled = dict["XForwardedForClientCertSubjectDNEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForClientSourceIpsEnabled") {
                self.XForwardedForClientSourceIpsEnabled = dict["XForwardedForClientSourceIpsEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForClientSourceIpsTrusted") {
                self.XForwardedForClientSourceIpsTrusted = dict["XForwardedForClientSourceIpsTrusted"] as! String
            }
            if dict.keys.contains("XForwardedForClientSrcPortEnabled") {
                self.XForwardedForClientSrcPortEnabled = dict["XForwardedForClientSrcPortEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForEnabled") {
                self.XForwardedForEnabled = dict["XForwardedForEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForProtoEnabled") {
                self.XForwardedForProtoEnabled = dict["XForwardedForProtoEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForSLBIdEnabled") {
                self.XForwardedForSLBIdEnabled = dict["XForwardedForSLBIdEnabled"] as! Bool
            }
            if dict.keys.contains("XForwardedForSLBPortEnabled") {
                self.XForwardedForSLBPortEnabled = dict["XForwardedForSLBPortEnabled"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CaCertificates") {
            var tmp : [UpdateListenerAttributeRequest.CaCertificates] = []
            for v in dict["CaCertificates"] as! [Any] {
                var model = UpdateListenerAttributeRequest.CaCertificates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.caCertificates = tmp
        }
        if dict.keys.contains("CaEnabled") {
            self.caEnabled = dict["CaEnabled"] as! Bool
        }
        if dict.keys.contains("Certificates") {
            var tmp : [UpdateListenerAttributeRequest.Certificates] = []
            for v in dict["Certificates"] as! [Any] {
                var model = UpdateListenerAttributeRequest.Certificates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.certificates = tmp
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DefaultActions") {
            var tmp : [UpdateListenerAttributeRequest.DefaultActions] = []
            for v in dict["DefaultActions"] as! [Any] {
                var model = UpdateListenerAttributeRequest.DefaultActions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.defaultActions = tmp
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("GzipEnabled") {
            self.gzipEnabled = dict["GzipEnabled"] as! Bool
        }
        if dict.keys.contains("Http2Enabled") {
            self.http2Enabled = dict["Http2Enabled"] as! Bool
        }
        if dict.keys.contains("IdleTimeout") {
            self.idleTimeout = dict["IdleTimeout"] as! Int32
        }
        if dict.keys.contains("ListenerDescription") {
            self.listenerDescription = dict["ListenerDescription"] as! String
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
        }
        if dict.keys.contains("QuicConfig") {
            var model = UpdateListenerAttributeRequest.QuicConfig()
            model.fromMap(dict["QuicConfig"] as! [String: Any])
            self.quicConfig = model
        }
        if dict.keys.contains("RequestTimeout") {
            self.requestTimeout = dict["RequestTimeout"] as! Int32
        }
        if dict.keys.contains("SecurityPolicyId") {
            self.securityPolicyId = dict["SecurityPolicyId"] as! String
        }
        if dict.keys.contains("XForwardedForConfig") {
            var model = UpdateListenerAttributeRequest.XForwardedForConfig()
            model.fromMap(dict["XForwardedForConfig"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateListenerAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TracingEnabled") {
                self.tracingEnabled = dict["TracingEnabled"] as! Bool
            }
            if dict.keys.contains("TracingSample") {
                self.tracingSample = dict["TracingSample"] as! Int32
            }
            if dict.keys.contains("TracingType") {
                self.tracingType = dict["TracingType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessLogRecordCustomizedHeadersEnabled") {
            self.accessLogRecordCustomizedHeadersEnabled = dict["AccessLogRecordCustomizedHeadersEnabled"] as! Bool
        }
        if dict.keys.contains("AccessLogTracingConfig") {
            var model = UpdateListenerLogConfigRequest.AccessLogTracingConfig()
            model.fromMap(dict["AccessLogTracingConfig"] as! [String: Any])
            self.accessLogTracingConfig = model
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ListenerId") {
            self.listenerId = dict["ListenerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateListenerLogConfigResponseBody()
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
            if dict.keys.contains("AllocationId") {
                self.allocationId = dict["AllocationId"] as! String
            }
            if dict.keys.contains("EipType") {
                self.eipType = dict["EipType"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddressType") {
            self.addressType = dict["AddressType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("ZoneMappings") {
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
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateLoadBalancerAddressTypeConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("LoadBalancerName") {
            self.loadBalancerName = dict["LoadBalancerName"] as! String
        }
        if dict.keys.contains("ModificationProtectionConfig") {
            var model = UpdateLoadBalancerAttributeRequest.ModificationProtectionConfig()
            model.fromMap(dict["ModificationProtectionConfig"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateLoadBalancerAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerEdition") {
            self.loadBalancerEdition = dict["LoadBalancerEdition"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateLoadBalancerEditionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EipType") {
                self.eipType = dict["EipType"] as! String
            }
            if dict.keys.contains("IntranetAddress") {
                self.intranetAddress = dict["IntranetAddress"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("ZoneMappings") {
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
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateLoadBalancerZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowCredentials") {
                    self.allowCredentials = dict["AllowCredentials"] as! String
                }
                if dict.keys.contains("AllowHeaders") {
                    self.allowHeaders = dict["AllowHeaders"] as! [String]
                }
                if dict.keys.contains("AllowMethods") {
                    self.allowMethods = dict["AllowMethods"] as! [String]
                }
                if dict.keys.contains("AllowOrigin") {
                    self.allowOrigin = dict["AllowOrigin"] as! [String]
                }
                if dict.keys.contains("ExposeHeaders") {
                    self.exposeHeaders = dict["ExposeHeaders"] as! [String]
                }
                if dict.keys.contains("MaxAge") {
                    self.maxAge = dict["MaxAge"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("ContentType") {
                    self.contentType = dict["ContentType"] as! String
                }
                if dict.keys.contains("HttpCode") {
                    self.httpCode = dict["HttpCode"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Enabled") {
                        self.enabled = dict["Enabled"] as! Bool
                    }
                    if dict.keys.contains("Timeout") {
                        self.timeout = dict["Timeout"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ServerGroupId") {
                        self.serverGroupId = dict["ServerGroupId"] as! String
                    }
                    if dict.keys.contains("Weight") {
                        self.weight = dict["Weight"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ServerGroupStickySession") {
                    var model = UpdateRuleAttributeRequest.RuleActions.ForwardGroupConfig.ServerGroupStickySession()
                    model.fromMap(dict["ServerGroupStickySession"] as! [String: Any])
                    self.serverGroupStickySession = model
                }
                if dict.keys.contains("ServerGroupTuples") {
                    var tmp : [UpdateRuleAttributeRequest.RuleActions.ForwardGroupConfig.ServerGroupTuples] = []
                    for v in dict["ServerGroupTuples"] as! [Any] {
                        var model = UpdateRuleAttributeRequest.RuleActions.ForwardGroupConfig.ServerGroupTuples()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CoverEnabled") {
                    self.coverEnabled = dict["CoverEnabled"] as! Bool
                }
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
                if dict.keys.contains("ValueType") {
                    self.valueType = dict["ValueType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Host") {
                    self.host = dict["Host"] as! String
                }
                if dict.keys.contains("HttpCode") {
                    self.httpCode = dict["HttpCode"] as! String
                }
                if dict.keys.contains("Path") {
                    self.path = dict["Path"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! String
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("Query") {
                    self.query = dict["Query"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Host") {
                    self.host = dict["Host"] as! String
                }
                if dict.keys.contains("Path") {
                    self.path = dict["Path"] as! String
                }
                if dict.keys.contains("Query") {
                    self.query = dict["Query"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PerIpQps") {
                    self.perIpQps = dict["PerIpQps"] as! Int32
                }
                if dict.keys.contains("QPS") {
                    self.QPS = dict["QPS"] as! Int32
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ServerGroupId") {
                            self.serverGroupId = dict["ServerGroupId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ServerGroupTuples") {
                        var tmp : [UpdateRuleAttributeRequest.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples] = []
                        for v in dict["ServerGroupTuples"] as! [Any] {
                            var model = UpdateRuleAttributeRequest.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MirrorGroupConfig") {
                    var model = UpdateRuleAttributeRequest.RuleActions.TrafficMirrorConfig.MirrorGroupConfig()
                    model.fromMap(dict["MirrorGroupConfig"] as! [String: Any])
                    self.mirrorGroupConfig = model
                }
                if dict.keys.contains("TargetType") {
                    self.targetType = dict["TargetType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CorsConfig") {
                var model = UpdateRuleAttributeRequest.RuleActions.CorsConfig()
                model.fromMap(dict["CorsConfig"] as! [String: Any])
                self.corsConfig = model
            }
            if dict.keys.contains("FixedResponseConfig") {
                var model = UpdateRuleAttributeRequest.RuleActions.FixedResponseConfig()
                model.fromMap(dict["FixedResponseConfig"] as! [String: Any])
                self.fixedResponseConfig = model
            }
            if dict.keys.contains("ForwardGroupConfig") {
                var model = UpdateRuleAttributeRequest.RuleActions.ForwardGroupConfig()
                model.fromMap(dict["ForwardGroupConfig"] as! [String: Any])
                self.forwardGroupConfig = model
            }
            if dict.keys.contains("InsertHeaderConfig") {
                var model = UpdateRuleAttributeRequest.RuleActions.InsertHeaderConfig()
                model.fromMap(dict["InsertHeaderConfig"] as! [String: Any])
                self.insertHeaderConfig = model
            }
            if dict.keys.contains("Order") {
                self.order = dict["Order"] as! Int32
            }
            if dict.keys.contains("RedirectConfig") {
                var model = UpdateRuleAttributeRequest.RuleActions.RedirectConfig()
                model.fromMap(dict["RedirectConfig"] as! [String: Any])
                self.redirectConfig = model
            }
            if dict.keys.contains("RemoveHeaderConfig") {
                var model = UpdateRuleAttributeRequest.RuleActions.RemoveHeaderConfig()
                model.fromMap(dict["RemoveHeaderConfig"] as! [String: Any])
                self.removeHeaderConfig = model
            }
            if dict.keys.contains("RewriteConfig") {
                var model = UpdateRuleAttributeRequest.RuleActions.RewriteConfig()
                model.fromMap(dict["RewriteConfig"] as! [String: Any])
                self.rewriteConfig = model
            }
            if dict.keys.contains("TrafficLimitConfig") {
                var model = UpdateRuleAttributeRequest.RuleActions.TrafficLimitConfig()
                model.fromMap(dict["TrafficLimitConfig"] as! [String: Any])
                self.trafficLimitConfig = model
            }
            if dict.keys.contains("TrafficMirrorConfig") {
                var model = UpdateRuleAttributeRequest.RuleActions.TrafficMirrorConfig()
                model.fromMap(dict["TrafficMirrorConfig"] as! [String: Any])
                self.trafficMirrorConfig = model
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Values") {
                    var tmp : [UpdateRuleAttributeRequest.RuleConditions.CookieConfig.Values] = []
                    for v in dict["Values"] as! [Any] {
                        var model = UpdateRuleAttributeRequest.RuleConditions.CookieConfig.Values()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Values") {
                    var tmp : [UpdateRuleAttributeRequest.RuleConditions.QueryStringConfig.Values] = []
                    for v in dict["Values"] as! [Any] {
                        var model = UpdateRuleAttributeRequest.RuleConditions.QueryStringConfig.Values()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Values") {
                    self.values = dict["Values"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CookieConfig") {
                var model = UpdateRuleAttributeRequest.RuleConditions.CookieConfig()
                model.fromMap(dict["CookieConfig"] as! [String: Any])
                self.cookieConfig = model
            }
            if dict.keys.contains("HeaderConfig") {
                var model = UpdateRuleAttributeRequest.RuleConditions.HeaderConfig()
                model.fromMap(dict["HeaderConfig"] as! [String: Any])
                self.headerConfig = model
            }
            if dict.keys.contains("HostConfig") {
                var model = UpdateRuleAttributeRequest.RuleConditions.HostConfig()
                model.fromMap(dict["HostConfig"] as! [String: Any])
                self.hostConfig = model
            }
            if dict.keys.contains("MethodConfig") {
                var model = UpdateRuleAttributeRequest.RuleConditions.MethodConfig()
                model.fromMap(dict["MethodConfig"] as! [String: Any])
                self.methodConfig = model
            }
            if dict.keys.contains("PathConfig") {
                var model = UpdateRuleAttributeRequest.RuleConditions.PathConfig()
                model.fromMap(dict["PathConfig"] as! [String: Any])
                self.pathConfig = model
            }
            if dict.keys.contains("QueryStringConfig") {
                var model = UpdateRuleAttributeRequest.RuleConditions.QueryStringConfig()
                model.fromMap(dict["QueryStringConfig"] as! [String: Any])
                self.queryStringConfig = model
            }
            if dict.keys.contains("ResponseHeaderConfig") {
                var model = UpdateRuleAttributeRequest.RuleConditions.ResponseHeaderConfig()
                model.fromMap(dict["ResponseHeaderConfig"] as! [String: Any])
                self.responseHeaderConfig = model
            }
            if dict.keys.contains("ResponseStatusCodeConfig") {
                var model = UpdateRuleAttributeRequest.RuleConditions.ResponseStatusCodeConfig()
                model.fromMap(dict["ResponseStatusCodeConfig"] as! [String: Any])
                self.responseStatusCodeConfig = model
            }
            if dict.keys.contains("SourceIpConfig") {
                var model = UpdateRuleAttributeRequest.RuleConditions.SourceIpConfig()
                model.fromMap(dict["SourceIpConfig"] as! [String: Any])
                self.sourceIpConfig = model
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("RuleActions") {
            var tmp : [UpdateRuleAttributeRequest.RuleActions] = []
            for v in dict["RuleActions"] as! [Any] {
                var model = UpdateRuleAttributeRequest.RuleActions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ruleActions = tmp
        }
        if dict.keys.contains("RuleConditions") {
            var tmp : [UpdateRuleAttributeRequest.RuleConditions] = []
            for v in dict["RuleConditions"] as! [Any] {
                var model = UpdateRuleAttributeRequest.RuleConditions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ruleConditions = tmp
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! String
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateRuleAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AllowCredentials") {
                        self.allowCredentials = dict["AllowCredentials"] as! String
                    }
                    if dict.keys.contains("AllowHeaders") {
                        self.allowHeaders = dict["AllowHeaders"] as! [String]
                    }
                    if dict.keys.contains("AllowMethods") {
                        self.allowMethods = dict["AllowMethods"] as! [String]
                    }
                    if dict.keys.contains("AllowOrigin") {
                        self.allowOrigin = dict["AllowOrigin"] as! [String]
                    }
                    if dict.keys.contains("ExposeHeaders") {
                        self.exposeHeaders = dict["ExposeHeaders"] as! [String]
                    }
                    if dict.keys.contains("MaxAge") {
                        self.maxAge = dict["MaxAge"] as! Int64
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("ContentType") {
                        self.contentType = dict["ContentType"] as! String
                    }
                    if dict.keys.contains("HttpCode") {
                        self.httpCode = dict["HttpCode"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Enabled") {
                            self.enabled = dict["Enabled"] as! Bool
                        }
                        if dict.keys.contains("Timeout") {
                            self.timeout = dict["Timeout"] as! Int32
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ServerGroupId") {
                            self.serverGroupId = dict["ServerGroupId"] as! String
                        }
                        if dict.keys.contains("Weight") {
                            self.weight = dict["Weight"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ServerGroupStickySession") {
                        var model = UpdateRulesAttributeRequest.Rules.RuleActions.ForwardGroupConfig.ServerGroupStickySession()
                        model.fromMap(dict["ServerGroupStickySession"] as! [String: Any])
                        self.serverGroupStickySession = model
                    }
                    if dict.keys.contains("ServerGroupTuples") {
                        var tmp : [UpdateRulesAttributeRequest.Rules.RuleActions.ForwardGroupConfig.ServerGroupTuples] = []
                        for v in dict["ServerGroupTuples"] as! [Any] {
                            var model = UpdateRulesAttributeRequest.Rules.RuleActions.ForwardGroupConfig.ServerGroupTuples()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CoverEnabled") {
                        self.coverEnabled = dict["CoverEnabled"] as! Bool
                    }
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                    if dict.keys.contains("ValueType") {
                        self.valueType = dict["ValueType"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Host") {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("HttpCode") {
                        self.httpCode = dict["HttpCode"] as! String
                    }
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! String
                    }
                    if dict.keys.contains("Protocol") {
                        self.protocol_ = dict["Protocol"] as! String
                    }
                    if dict.keys.contains("Query") {
                        self.query = dict["Query"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Host") {
                        self.host = dict["Host"] as! String
                    }
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                    if dict.keys.contains("Query") {
                        self.query = dict["Query"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PerIpQps") {
                        self.perIpQps = dict["PerIpQps"] as! Int32
                    }
                    if dict.keys.contains("QPS") {
                        self.QPS = dict["QPS"] as! Int32
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("ServerGroupId") {
                                self.serverGroupId = dict["ServerGroupId"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ServerGroupTuples") {
                            var tmp : [UpdateRulesAttributeRequest.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples] = []
                            for v in dict["ServerGroupTuples"] as! [Any] {
                                var model = UpdateRulesAttributeRequest.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig.ServerGroupTuples()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MirrorGroupConfig") {
                        var model = UpdateRulesAttributeRequest.Rules.RuleActions.TrafficMirrorConfig.MirrorGroupConfig()
                        model.fromMap(dict["MirrorGroupConfig"] as! [String: Any])
                        self.mirrorGroupConfig = model
                    }
                    if dict.keys.contains("TargetType") {
                        self.targetType = dict["TargetType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CorsConfig") {
                    var model = UpdateRulesAttributeRequest.Rules.RuleActions.CorsConfig()
                    model.fromMap(dict["CorsConfig"] as! [String: Any])
                    self.corsConfig = model
                }
                if dict.keys.contains("FixedResponseConfig") {
                    var model = UpdateRulesAttributeRequest.Rules.RuleActions.FixedResponseConfig()
                    model.fromMap(dict["FixedResponseConfig"] as! [String: Any])
                    self.fixedResponseConfig = model
                }
                if dict.keys.contains("ForwardGroupConfig") {
                    var model = UpdateRulesAttributeRequest.Rules.RuleActions.ForwardGroupConfig()
                    model.fromMap(dict["ForwardGroupConfig"] as! [String: Any])
                    self.forwardGroupConfig = model
                }
                if dict.keys.contains("InsertHeaderConfig") {
                    var model = UpdateRulesAttributeRequest.Rules.RuleActions.InsertHeaderConfig()
                    model.fromMap(dict["InsertHeaderConfig"] as! [String: Any])
                    self.insertHeaderConfig = model
                }
                if dict.keys.contains("Order") {
                    self.order = dict["Order"] as! Int32
                }
                if dict.keys.contains("RedirectConfig") {
                    var model = UpdateRulesAttributeRequest.Rules.RuleActions.RedirectConfig()
                    model.fromMap(dict["RedirectConfig"] as! [String: Any])
                    self.redirectConfig = model
                }
                if dict.keys.contains("RemoveHeaderConfig") {
                    var model = UpdateRulesAttributeRequest.Rules.RuleActions.RemoveHeaderConfig()
                    model.fromMap(dict["RemoveHeaderConfig"] as! [String: Any])
                    self.removeHeaderConfig = model
                }
                if dict.keys.contains("RewriteConfig") {
                    var model = UpdateRulesAttributeRequest.Rules.RuleActions.RewriteConfig()
                    model.fromMap(dict["RewriteConfig"] as! [String: Any])
                    self.rewriteConfig = model
                }
                if dict.keys.contains("TrafficLimitConfig") {
                    var model = UpdateRulesAttributeRequest.Rules.RuleActions.TrafficLimitConfig()
                    model.fromMap(dict["TrafficLimitConfig"] as! [String: Any])
                    self.trafficLimitConfig = model
                }
                if dict.keys.contains("TrafficMirrorConfig") {
                    var model = UpdateRulesAttributeRequest.Rules.RuleActions.TrafficMirrorConfig()
                    model.fromMap(dict["TrafficMirrorConfig"] as! [String: Any])
                    self.trafficMirrorConfig = model
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        var tmp : [UpdateRulesAttributeRequest.Rules.RuleConditions.CookieConfig.Values] = []
                        for v in dict["Values"] as! [Any] {
                            var model = UpdateRulesAttributeRequest.Rules.RuleConditions.CookieConfig.Values()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        var tmp : [UpdateRulesAttributeRequest.Rules.RuleConditions.QueryStringConfig.Values] = []
                        for v in dict["Values"] as! [Any] {
                            var model = UpdateRulesAttributeRequest.Rules.RuleConditions.QueryStringConfig.Values()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Values") {
                        self.values = dict["Values"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CookieConfig") {
                    var model = UpdateRulesAttributeRequest.Rules.RuleConditions.CookieConfig()
                    model.fromMap(dict["CookieConfig"] as! [String: Any])
                    self.cookieConfig = model
                }
                if dict.keys.contains("HeaderConfig") {
                    var model = UpdateRulesAttributeRequest.Rules.RuleConditions.HeaderConfig()
                    model.fromMap(dict["HeaderConfig"] as! [String: Any])
                    self.headerConfig = model
                }
                if dict.keys.contains("HostConfig") {
                    var model = UpdateRulesAttributeRequest.Rules.RuleConditions.HostConfig()
                    model.fromMap(dict["HostConfig"] as! [String: Any])
                    self.hostConfig = model
                }
                if dict.keys.contains("MethodConfig") {
                    var model = UpdateRulesAttributeRequest.Rules.RuleConditions.MethodConfig()
                    model.fromMap(dict["MethodConfig"] as! [String: Any])
                    self.methodConfig = model
                }
                if dict.keys.contains("PathConfig") {
                    var model = UpdateRulesAttributeRequest.Rules.RuleConditions.PathConfig()
                    model.fromMap(dict["PathConfig"] as! [String: Any])
                    self.pathConfig = model
                }
                if dict.keys.contains("QueryStringConfig") {
                    var model = UpdateRulesAttributeRequest.Rules.RuleConditions.QueryStringConfig()
                    model.fromMap(dict["QueryStringConfig"] as! [String: Any])
                    self.queryStringConfig = model
                }
                if dict.keys.contains("ResponseHeaderConfig") {
                    var model = UpdateRulesAttributeRequest.Rules.RuleConditions.ResponseHeaderConfig()
                    model.fromMap(dict["ResponseHeaderConfig"] as! [String: Any])
                    self.responseHeaderConfig = model
                }
                if dict.keys.contains("ResponseStatusCodeConfig") {
                    var model = UpdateRulesAttributeRequest.Rules.RuleConditions.ResponseStatusCodeConfig()
                    model.fromMap(dict["ResponseStatusCodeConfig"] as! [String: Any])
                    self.responseStatusCodeConfig = model
                }
                if dict.keys.contains("SourceIpConfig") {
                    var model = UpdateRulesAttributeRequest.Rules.RuleConditions.SourceIpConfig()
                    model.fromMap(dict["SourceIpConfig"] as! [String: Any])
                    self.sourceIpConfig = model
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("RuleActions") {
                var tmp : [UpdateRulesAttributeRequest.Rules.RuleActions] = []
                for v in dict["RuleActions"] as! [Any] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleActions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ruleActions = tmp
            }
            if dict.keys.contains("RuleConditions") {
                var tmp : [UpdateRulesAttributeRequest.Rules.RuleConditions] = []
                for v in dict["RuleConditions"] as! [Any] {
                    var model = UpdateRulesAttributeRequest.Rules.RuleConditions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ruleConditions = tmp
            }
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! String
            }
            if dict.keys.contains("RuleName") {
                self.ruleName = dict["RuleName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Rules") {
            var tmp : [UpdateRulesAttributeRequest.Rules] = []
            for v in dict["Rules"] as! [Any] {
                var model = UpdateRulesAttributeRequest.Rules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateRulesAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ciphers") {
            self.ciphers = dict["Ciphers"] as! [String]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("SecurityPolicyId") {
            self.securityPolicyId = dict["SecurityPolicyId"] as! String
        }
        if dict.keys.contains("SecurityPolicyName") {
            self.securityPolicyName = dict["SecurityPolicyName"] as! String
        }
        if dict.keys.contains("TLSVersions") {
            self.TLSVersions = dict["TLSVersions"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateSecurityPolicyAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnectionDrainEnabled") {
                self.connectionDrainEnabled = dict["ConnectionDrainEnabled"] as! Bool
            }
            if dict.keys.contains("ConnectionDrainTimeout") {
                self.connectionDrainTimeout = dict["ConnectionDrainTimeout"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HealthCheckCodes") {
                self.healthCheckCodes = dict["HealthCheckCodes"] as! [String]
            }
            if dict.keys.contains("HealthCheckConnectPort") {
                self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
            }
            if dict.keys.contains("HealthCheckEnabled") {
                self.healthCheckEnabled = dict["HealthCheckEnabled"] as! Bool
            }
            if dict.keys.contains("HealthCheckHost") {
                self.healthCheckHost = dict["HealthCheckHost"] as! String
            }
            if dict.keys.contains("HealthCheckHttpVersion") {
                self.healthCheckHttpVersion = dict["HealthCheckHttpVersion"] as! String
            }
            if dict.keys.contains("HealthCheckInterval") {
                self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
            }
            if dict.keys.contains("HealthCheckMethod") {
                self.healthCheckMethod = dict["HealthCheckMethod"] as! String
            }
            if dict.keys.contains("HealthCheckPath") {
                self.healthCheckPath = dict["HealthCheckPath"] as! String
            }
            if dict.keys.contains("HealthCheckProtocol") {
                self.healthCheckProtocol = dict["HealthCheckProtocol"] as! String
            }
            if dict.keys.contains("HealthCheckTimeout") {
                self.healthCheckTimeout = dict["HealthCheckTimeout"] as! Int32
            }
            if dict.keys.contains("HealthyThreshold") {
                self.healthyThreshold = dict["HealthyThreshold"] as! Int32
            }
            if dict.keys.contains("UnhealthyThreshold") {
                self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SlowStartDuration") {
                self.slowStartDuration = dict["SlowStartDuration"] as! Int32
            }
            if dict.keys.contains("SlowStartEnabled") {
                self.slowStartEnabled = dict["SlowStartEnabled"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cookie") {
                self.cookie = dict["Cookie"] as! String
            }
            if dict.keys.contains("CookieTimeout") {
                self.cookieTimeout = dict["CookieTimeout"] as! Int32
            }
            if dict.keys.contains("StickySessionEnabled") {
                self.stickySessionEnabled = dict["StickySessionEnabled"] as! Bool
            }
            if dict.keys.contains("StickySessionType") {
                self.stickySessionType = dict["StickySessionType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var clientToken: String?

    public var connectionDrainConfig: UpdateServerGroupAttributeRequest.ConnectionDrainConfig?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ConnectionDrainConfig") {
            var model = UpdateServerGroupAttributeRequest.ConnectionDrainConfig()
            model.fromMap(dict["ConnectionDrainConfig"] as! [String: Any])
            self.connectionDrainConfig = model
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("HealthCheckConfig") {
            var model = UpdateServerGroupAttributeRequest.HealthCheckConfig()
            model.fromMap(dict["HealthCheckConfig"] as! [String: Any])
            self.healthCheckConfig = model
        }
        if dict.keys.contains("Scheduler") {
            self.scheduler = dict["Scheduler"] as! String
        }
        if dict.keys.contains("ServerGroupId") {
            self.serverGroupId = dict["ServerGroupId"] as! String
        }
        if dict.keys.contains("ServerGroupName") {
            self.serverGroupName = dict["ServerGroupName"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("SlowStartConfig") {
            var model = UpdateServerGroupAttributeRequest.SlowStartConfig()
            model.fromMap(dict["SlowStartConfig"] as! [String: Any])
            self.slowStartConfig = model
        }
        if dict.keys.contains("StickySessionConfig") {
            var model = UpdateServerGroupAttributeRequest.StickySessionConfig()
            model.fromMap(dict["StickySessionConfig"] as! [String: Any])
            self.stickySessionConfig = model
        }
        if dict.keys.contains("UchConfig") {
            var model = UpdateServerGroupAttributeRequest.UchConfig()
            model.fromMap(dict["UchConfig"] as! [String: Any])
            self.uchConfig = model
        }
        if dict.keys.contains("UpstreamKeepaliveEnabled") {
            self.upstreamKeepaliveEnabled = dict["UpstreamKeepaliveEnabled"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("ServerId") {
                self.serverId = dict["ServerId"] as! String
            }
            if dict.keys.contains("ServerIp") {
                self.serverIp = dict["ServerIp"] as! String
            }
            if dict.keys.contains("ServerType") {
                self.serverType = dict["ServerType"] as! String
            }
            if dict.keys.contains("Weight") {
                self.weight = dict["Weight"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("ServerGroupId") {
            self.serverGroupId = dict["ServerGroupId"] as! String
        }
        if dict.keys.contains("Servers") {
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

    public override init() {
        super.init()
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
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateServerGroupServersAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
