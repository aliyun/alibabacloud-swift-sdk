import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateCertificateRequest : Tea.TeaModel {
    public var certificate: String?

    public var certificateName: String?

    public var domain: String?

    public var instanceId: String?

    public var privateKey: String?

    public var regionId: String?

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
        if self.certificate != nil {
            map["Certificate"] = self.certificate!
        }
        if self.certificateName != nil {
            map["CertificateName"] = self.certificateName!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Certificate") {
            self.certificate = dict["Certificate"] as! String
        }
        if dict.keys.contains("CertificateName") {
            self.certificateName = dict["CertificateName"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PrivateKey") {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class CreateCertificateResponseBody : Tea.TeaModel {
    public var certificateId: Int64?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateId") {
            self.certificateId = dict["CertificateId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCertificateByCertificateIdRequest : Tea.TeaModel {
    public var certificateId: Int64?

    public var domain: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateId") {
            self.certificateId = dict["CertificateId"] as! Int64
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class CreateCertificateByCertificateIdResponseBody : Tea.TeaModel {
    public var certificateId: Int64?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateId") {
            self.certificateId = dict["CertificateId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCertificateByCertificateIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCertificateByCertificateIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateCertificateByCertificateIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDomainRequest : Tea.TeaModel {
    public var accessHeaderMode: Int32?

    public var accessHeaders: String?

    public var accessType: String?

    public var cloudNativeInstances: String?

    public var clusterType: Int32?

    public var connectionTime: Int32?

    public var domain: String?

    public var http2Port: String?

    public var httpPort: String?

    public var httpToUserIp: Int32?

    public var httpsPort: String?

    public var httpsRedirect: Int32?

    public var instanceId: String?

    public var ipFollowStatus: Int32?

    public var isAccessProduct: Int32?

    public var keepalive: Bool?

    public var keepaliveRequests: Int32?

    public var keepaliveTimeout: Int32?

    public var loadBalancing: Int32?

    public var logHeaders: String?

    public var readTime: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var retry: Bool?

    public var sniHost: String?

    public var sniStatus: Int32?

    public var sourceIps: String?

    public var writeTime: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessHeaderMode != nil {
            map["AccessHeaderMode"] = self.accessHeaderMode!
        }
        if self.accessHeaders != nil {
            map["AccessHeaders"] = self.accessHeaders!
        }
        if self.accessType != nil {
            map["AccessType"] = self.accessType!
        }
        if self.cloudNativeInstances != nil {
            map["CloudNativeInstances"] = self.cloudNativeInstances!
        }
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.connectionTime != nil {
            map["ConnectionTime"] = self.connectionTime!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.http2Port != nil {
            map["Http2Port"] = self.http2Port!
        }
        if self.httpPort != nil {
            map["HttpPort"] = self.httpPort!
        }
        if self.httpToUserIp != nil {
            map["HttpToUserIp"] = self.httpToUserIp!
        }
        if self.httpsPort != nil {
            map["HttpsPort"] = self.httpsPort!
        }
        if self.httpsRedirect != nil {
            map["HttpsRedirect"] = self.httpsRedirect!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ipFollowStatus != nil {
            map["IpFollowStatus"] = self.ipFollowStatus!
        }
        if self.isAccessProduct != nil {
            map["IsAccessProduct"] = self.isAccessProduct!
        }
        if self.keepalive != nil {
            map["Keepalive"] = self.keepalive!
        }
        if self.keepaliveRequests != nil {
            map["KeepaliveRequests"] = self.keepaliveRequests!
        }
        if self.keepaliveTimeout != nil {
            map["KeepaliveTimeout"] = self.keepaliveTimeout!
        }
        if self.loadBalancing != nil {
            map["LoadBalancing"] = self.loadBalancing!
        }
        if self.logHeaders != nil {
            map["LogHeaders"] = self.logHeaders!
        }
        if self.readTime != nil {
            map["ReadTime"] = self.readTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.retry != nil {
            map["Retry"] = self.retry!
        }
        if self.sniHost != nil {
            map["SniHost"] = self.sniHost!
        }
        if self.sniStatus != nil {
            map["SniStatus"] = self.sniStatus!
        }
        if self.sourceIps != nil {
            map["SourceIps"] = self.sourceIps!
        }
        if self.writeTime != nil {
            map["WriteTime"] = self.writeTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessHeaderMode") {
            self.accessHeaderMode = dict["AccessHeaderMode"] as! Int32
        }
        if dict.keys.contains("AccessHeaders") {
            self.accessHeaders = dict["AccessHeaders"] as! String
        }
        if dict.keys.contains("AccessType") {
            self.accessType = dict["AccessType"] as! String
        }
        if dict.keys.contains("CloudNativeInstances") {
            self.cloudNativeInstances = dict["CloudNativeInstances"] as! String
        }
        if dict.keys.contains("ClusterType") {
            self.clusterType = dict["ClusterType"] as! Int32
        }
        if dict.keys.contains("ConnectionTime") {
            self.connectionTime = dict["ConnectionTime"] as! Int32
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Http2Port") {
            self.http2Port = dict["Http2Port"] as! String
        }
        if dict.keys.contains("HttpPort") {
            self.httpPort = dict["HttpPort"] as! String
        }
        if dict.keys.contains("HttpToUserIp") {
            self.httpToUserIp = dict["HttpToUserIp"] as! Int32
        }
        if dict.keys.contains("HttpsPort") {
            self.httpsPort = dict["HttpsPort"] as! String
        }
        if dict.keys.contains("HttpsRedirect") {
            self.httpsRedirect = dict["HttpsRedirect"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IpFollowStatus") {
            self.ipFollowStatus = dict["IpFollowStatus"] as! Int32
        }
        if dict.keys.contains("IsAccessProduct") {
            self.isAccessProduct = dict["IsAccessProduct"] as! Int32
        }
        if dict.keys.contains("Keepalive") {
            self.keepalive = dict["Keepalive"] as! Bool
        }
        if dict.keys.contains("KeepaliveRequests") {
            self.keepaliveRequests = dict["KeepaliveRequests"] as! Int32
        }
        if dict.keys.contains("KeepaliveTimeout") {
            self.keepaliveTimeout = dict["KeepaliveTimeout"] as! Int32
        }
        if dict.keys.contains("LoadBalancing") {
            self.loadBalancing = dict["LoadBalancing"] as! Int32
        }
        if dict.keys.contains("LogHeaders") {
            self.logHeaders = dict["LogHeaders"] as! String
        }
        if dict.keys.contains("ReadTime") {
            self.readTime = dict["ReadTime"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Retry") {
            self.retry = dict["Retry"] as! Bool
        }
        if dict.keys.contains("SniHost") {
            self.sniHost = dict["SniHost"] as! String
        }
        if dict.keys.contains("SniStatus") {
            self.sniStatus = dict["SniStatus"] as! Int32
        }
        if dict.keys.contains("SourceIps") {
            self.sourceIps = dict["SourceIps"] as! String
        }
        if dict.keys.contains("WriteTime") {
            self.writeTime = dict["WriteTime"] as! Int32
        }
    }
}

public class CreateDomainResponseBody : Tea.TeaModel {
    public var cname: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cname != nil {
            map["Cname"] = self.cname!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cname") {
            self.cname = dict["Cname"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class CreateProtectionModuleRuleRequest : Tea.TeaModel {
    public var defenseType: String?

    public var domain: String?

    public var instanceId: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var rule: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defenseType != nil {
            map["DefenseType"] = self.defenseType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.rule != nil {
            map["Rule"] = self.rule!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefenseType") {
            self.defenseType = dict["DefenseType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Rule") {
            self.rule = dict["Rule"] as! String
        }
    }
}

public class CreateProtectionModuleRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class CreateProtectionModuleRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProtectionModuleRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateProtectionModuleRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDomainRequest : Tea.TeaModel {
    public var domain: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DeleteDomainResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DeleteInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteProtectionModuleRuleRequest : Tea.TeaModel {
    public var defenseType: String?

    public var domain: String?

    public var instanceId: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var ruleId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defenseType != nil {
            map["DefenseType"] = self.defenseType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefenseType") {
            self.defenseType = dict["DefenseType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
    }
}

public class DeleteProtectionModuleRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteProtectionModuleRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProtectionModuleRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteProtectionModuleRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCertMatchStatusRequest : Tea.TeaModel {
    public var certificate: String?

    public var domain: String?

    public var instanceId: String?

    public var privateKey: String?

    public var regionId: String?

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
        if self.certificate != nil {
            map["Certificate"] = self.certificate!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Certificate") {
            self.certificate = dict["Certificate"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PrivateKey") {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeCertMatchStatusResponseBody : Tea.TeaModel {
    public var matchStatus: Bool?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.matchStatus != nil {
            map["MatchStatus"] = self.matchStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MatchStatus") {
            self.matchStatus = dict["MatchStatus"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCertMatchStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCertMatchStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCertMatchStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCertificatesRequest : Tea.TeaModel {
    public var domain: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeCertificatesResponseBody : Tea.TeaModel {
    public class Certificates : Tea.TeaModel {
        public var certificateId: Int64?

        public var certificateName: String?

        public var commonName: String?

        public var endTime: Int64?

        public var isUsing: Bool?

        public var sans: [String]?

        public override init() {
            super.init()
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
            if self.certificateName != nil {
                map["CertificateName"] = self.certificateName!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.isUsing != nil {
                map["IsUsing"] = self.isUsing!
            }
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertificateId") {
                self.certificateId = dict["CertificateId"] as! Int64
            }
            if dict.keys.contains("CertificateName") {
                self.certificateName = dict["CertificateName"] as! String
            }
            if dict.keys.contains("CommonName") {
                self.commonName = dict["CommonName"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("IsUsing") {
                self.isUsing = dict["IsUsing"] as! Bool
            }
            if dict.keys.contains("Sans") {
                self.sans = dict["Sans"] as! [String]
            }
        }
    }
    public var certificates: [DescribeCertificatesResponseBody.Certificates]?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Certificates") {
            var tmp : [DescribeCertificatesResponseBody.Certificates] = []
            for v in dict["Certificates"] as! [Any] {
                var model = DescribeCertificatesResponseBody.Certificates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.certificates = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCertificatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCertificatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCertificatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainRequest : Tea.TeaModel {
    public var domain: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeDomainResponseBody : Tea.TeaModel {
    public class Domain : Tea.TeaModel {
        public class CloudNativeInstances : Tea.TeaModel {
            public class ProtocolPortConfigs : Tea.TeaModel {
                public var ports: [Int32]?

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
                    if self.ports != nil {
                        map["Ports"] = self.ports!
                    }
                    if self.protocol_ != nil {
                        map["Protocol"] = self.protocol_!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Ports") {
                        self.ports = dict["Ports"] as! [Int32]
                    }
                    if dict.keys.contains("Protocol") {
                        self.protocol_ = dict["Protocol"] as! String
                    }
                }
            }
            public var cloudNativeProductName: String?

            public var IPAddressList: [String]?

            public var instanceId: String?

            public var protocolPortConfigs: [DescribeDomainResponseBody.Domain.CloudNativeInstances.ProtocolPortConfigs]?

            public var redirectionTypeName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cloudNativeProductName != nil {
                    map["CloudNativeProductName"] = self.cloudNativeProductName!
                }
                if self.IPAddressList != nil {
                    map["IPAddressList"] = self.IPAddressList!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.protocolPortConfigs != nil {
                    var tmp : [Any] = []
                    for k in self.protocolPortConfigs! {
                        tmp.append(k.toMap())
                    }
                    map["ProtocolPortConfigs"] = tmp
                }
                if self.redirectionTypeName != nil {
                    map["RedirectionTypeName"] = self.redirectionTypeName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CloudNativeProductName") {
                    self.cloudNativeProductName = dict["CloudNativeProductName"] as! String
                }
                if dict.keys.contains("IPAddressList") {
                    self.IPAddressList = dict["IPAddressList"] as! [String]
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("ProtocolPortConfigs") {
                    var tmp : [DescribeDomainResponseBody.Domain.CloudNativeInstances.ProtocolPortConfigs] = []
                    for v in dict["ProtocolPortConfigs"] as! [Any] {
                        var model = DescribeDomainResponseBody.Domain.CloudNativeInstances.ProtocolPortConfigs()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.protocolPortConfigs = tmp
                }
                if dict.keys.contains("RedirectionTypeName") {
                    self.redirectionTypeName = dict["RedirectionTypeName"] as! String
                }
            }
        }
        public class LogHeaders : Tea.TeaModel {
            public var k: String?

            public var v: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.k != nil {
                    map["k"] = self.k!
                }
                if self.v != nil {
                    map["v"] = self.v!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("k") {
                    self.k = dict["k"] as! String
                }
                if dict.keys.contains("v") {
                    self.v = dict["v"] as! String
                }
            }
        }
        public var accessHeaderMode: Int32?

        public var accessHeaders: [String]?

        public var accessType: String?

        public var cloudNativeInstances: [DescribeDomainResponseBody.Domain.CloudNativeInstances]?

        public var clusterType: Int32?

        public var cname: String?

        public var connectionTime: Int32?

        public var http2Port: [Int32]?

        public var httpPort: [Int32]?

        public var httpToUserIp: Int32?

        public var httpsPort: [Int32]?

        public var httpsRedirect: Int32?

        public var ipFollowStatus: Int32?

        public var isAccessProduct: Int32?

        public var keepalive: Bool?

        public var keepaliveRequests: Int32?

        public var keepaliveTimeout: Int32?

        public var loadBalancing: Int32?

        public var logHeaders: [DescribeDomainResponseBody.Domain.LogHeaders]?

        public var readTime: Int32?

        public var resourceGroupId: String?

        public var retry: Bool?

        public var sniHost: String?

        public var sniStatus: Int32?

        public var sourceIps: [String]?

        public var version: Int64?

        public var writeTime: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessHeaderMode != nil {
                map["AccessHeaderMode"] = self.accessHeaderMode!
            }
            if self.accessHeaders != nil {
                map["AccessHeaders"] = self.accessHeaders!
            }
            if self.accessType != nil {
                map["AccessType"] = self.accessType!
            }
            if self.cloudNativeInstances != nil {
                var tmp : [Any] = []
                for k in self.cloudNativeInstances! {
                    tmp.append(k.toMap())
                }
                map["CloudNativeInstances"] = tmp
            }
            if self.clusterType != nil {
                map["ClusterType"] = self.clusterType!
            }
            if self.cname != nil {
                map["Cname"] = self.cname!
            }
            if self.connectionTime != nil {
                map["ConnectionTime"] = self.connectionTime!
            }
            if self.http2Port != nil {
                map["Http2Port"] = self.http2Port!
            }
            if self.httpPort != nil {
                map["HttpPort"] = self.httpPort!
            }
            if self.httpToUserIp != nil {
                map["HttpToUserIp"] = self.httpToUserIp!
            }
            if self.httpsPort != nil {
                map["HttpsPort"] = self.httpsPort!
            }
            if self.httpsRedirect != nil {
                map["HttpsRedirect"] = self.httpsRedirect!
            }
            if self.ipFollowStatus != nil {
                map["IpFollowStatus"] = self.ipFollowStatus!
            }
            if self.isAccessProduct != nil {
                map["IsAccessProduct"] = self.isAccessProduct!
            }
            if self.keepalive != nil {
                map["Keepalive"] = self.keepalive!
            }
            if self.keepaliveRequests != nil {
                map["KeepaliveRequests"] = self.keepaliveRequests!
            }
            if self.keepaliveTimeout != nil {
                map["KeepaliveTimeout"] = self.keepaliveTimeout!
            }
            if self.loadBalancing != nil {
                map["LoadBalancing"] = self.loadBalancing!
            }
            if self.logHeaders != nil {
                var tmp : [Any] = []
                for k in self.logHeaders! {
                    tmp.append(k.toMap())
                }
                map["LogHeaders"] = tmp
            }
            if self.readTime != nil {
                map["ReadTime"] = self.readTime!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.retry != nil {
                map["Retry"] = self.retry!
            }
            if self.sniHost != nil {
                map["SniHost"] = self.sniHost!
            }
            if self.sniStatus != nil {
                map["SniStatus"] = self.sniStatus!
            }
            if self.sourceIps != nil {
                map["SourceIps"] = self.sourceIps!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.writeTime != nil {
                map["WriteTime"] = self.writeTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessHeaderMode") {
                self.accessHeaderMode = dict["AccessHeaderMode"] as! Int32
            }
            if dict.keys.contains("AccessHeaders") {
                self.accessHeaders = dict["AccessHeaders"] as! [String]
            }
            if dict.keys.contains("AccessType") {
                self.accessType = dict["AccessType"] as! String
            }
            if dict.keys.contains("CloudNativeInstances") {
                var tmp : [DescribeDomainResponseBody.Domain.CloudNativeInstances] = []
                for v in dict["CloudNativeInstances"] as! [Any] {
                    var model = DescribeDomainResponseBody.Domain.CloudNativeInstances()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.cloudNativeInstances = tmp
            }
            if dict.keys.contains("ClusterType") {
                self.clusterType = dict["ClusterType"] as! Int32
            }
            if dict.keys.contains("Cname") {
                self.cname = dict["Cname"] as! String
            }
            if dict.keys.contains("ConnectionTime") {
                self.connectionTime = dict["ConnectionTime"] as! Int32
            }
            if dict.keys.contains("Http2Port") {
                self.http2Port = dict["Http2Port"] as! [Int32]
            }
            if dict.keys.contains("HttpPort") {
                self.httpPort = dict["HttpPort"] as! [Int32]
            }
            if dict.keys.contains("HttpToUserIp") {
                self.httpToUserIp = dict["HttpToUserIp"] as! Int32
            }
            if dict.keys.contains("HttpsPort") {
                self.httpsPort = dict["HttpsPort"] as! [Int32]
            }
            if dict.keys.contains("HttpsRedirect") {
                self.httpsRedirect = dict["HttpsRedirect"] as! Int32
            }
            if dict.keys.contains("IpFollowStatus") {
                self.ipFollowStatus = dict["IpFollowStatus"] as! Int32
            }
            if dict.keys.contains("IsAccessProduct") {
                self.isAccessProduct = dict["IsAccessProduct"] as! Int32
            }
            if dict.keys.contains("Keepalive") {
                self.keepalive = dict["Keepalive"] as! Bool
            }
            if dict.keys.contains("KeepaliveRequests") {
                self.keepaliveRequests = dict["KeepaliveRequests"] as! Int32
            }
            if dict.keys.contains("KeepaliveTimeout") {
                self.keepaliveTimeout = dict["KeepaliveTimeout"] as! Int32
            }
            if dict.keys.contains("LoadBalancing") {
                self.loadBalancing = dict["LoadBalancing"] as! Int32
            }
            if dict.keys.contains("LogHeaders") {
                var tmp : [DescribeDomainResponseBody.Domain.LogHeaders] = []
                for v in dict["LogHeaders"] as! [Any] {
                    var model = DescribeDomainResponseBody.Domain.LogHeaders()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.logHeaders = tmp
            }
            if dict.keys.contains("ReadTime") {
                self.readTime = dict["ReadTime"] as! Int32
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Retry") {
                self.retry = dict["Retry"] as! Bool
            }
            if dict.keys.contains("SniHost") {
                self.sniHost = dict["SniHost"] as! String
            }
            if dict.keys.contains("SniStatus") {
                self.sniStatus = dict["SniStatus"] as! Int32
            }
            if dict.keys.contains("SourceIps") {
                self.sourceIps = dict["SourceIps"] as! [String]
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! Int64
            }
            if dict.keys.contains("WriteTime") {
                self.writeTime = dict["WriteTime"] as! Int32
            }
        }
    }
    public var domain: DescribeDomainResponseBody.Domain?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domain?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domain != nil {
            map["Domain"] = self.domain?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            var model = DescribeDomainResponseBody.Domain()
            model.fromMap(dict["Domain"] as! [String: Any])
            self.domain = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainAdvanceConfigsRequest : Tea.TeaModel {
    public var domainList: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.domainList != nil {
            map["DomainList"] = self.domainList!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainList") {
            self.domainList = dict["DomainList"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeDomainAdvanceConfigsResponseBody : Tea.TeaModel {
    public class DomainConfigs : Tea.TeaModel {
        public class Profile : Tea.TeaModel {
            public var certStatus: Int32?

            public var clusterType: Int32?

            public var cname: String?

            public var exclusiveVipStatus: Int32?

            public var GSLBStatus: String?

            public var http2Port: [Int32]?

            public var httpPort: [Int32]?

            public var httpsPort: [Int32]?

            public var ipv6Status: Int32?

            public var resolvedType: Int32?

            public var rs: [String]?

            public var vipServiceStatus: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.certStatus != nil {
                    map["CertStatus"] = self.certStatus!
                }
                if self.clusterType != nil {
                    map["ClusterType"] = self.clusterType!
                }
                if self.cname != nil {
                    map["Cname"] = self.cname!
                }
                if self.exclusiveVipStatus != nil {
                    map["ExclusiveVipStatus"] = self.exclusiveVipStatus!
                }
                if self.GSLBStatus != nil {
                    map["GSLBStatus"] = self.GSLBStatus!
                }
                if self.http2Port != nil {
                    map["Http2Port"] = self.http2Port!
                }
                if self.httpPort != nil {
                    map["HttpPort"] = self.httpPort!
                }
                if self.httpsPort != nil {
                    map["HttpsPort"] = self.httpsPort!
                }
                if self.ipv6Status != nil {
                    map["Ipv6Status"] = self.ipv6Status!
                }
                if self.resolvedType != nil {
                    map["ResolvedType"] = self.resolvedType!
                }
                if self.rs != nil {
                    map["Rs"] = self.rs!
                }
                if self.vipServiceStatus != nil {
                    map["VipServiceStatus"] = self.vipServiceStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CertStatus") {
                    self.certStatus = dict["CertStatus"] as! Int32
                }
                if dict.keys.contains("ClusterType") {
                    self.clusterType = dict["ClusterType"] as! Int32
                }
                if dict.keys.contains("Cname") {
                    self.cname = dict["Cname"] as! String
                }
                if dict.keys.contains("ExclusiveVipStatus") {
                    self.exclusiveVipStatus = dict["ExclusiveVipStatus"] as! Int32
                }
                if dict.keys.contains("GSLBStatus") {
                    self.GSLBStatus = dict["GSLBStatus"] as! String
                }
                if dict.keys.contains("Http2Port") {
                    self.http2Port = dict["Http2Port"] as! [Int32]
                }
                if dict.keys.contains("HttpPort") {
                    self.httpPort = dict["HttpPort"] as! [Int32]
                }
                if dict.keys.contains("HttpsPort") {
                    self.httpsPort = dict["HttpsPort"] as! [Int32]
                }
                if dict.keys.contains("Ipv6Status") {
                    self.ipv6Status = dict["Ipv6Status"] as! Int32
                }
                if dict.keys.contains("ResolvedType") {
                    self.resolvedType = dict["ResolvedType"] as! Int32
                }
                if dict.keys.contains("Rs") {
                    self.rs = dict["Rs"] as! [String]
                }
                if dict.keys.contains("VipServiceStatus") {
                    self.vipServiceStatus = dict["VipServiceStatus"] as! Int32
                }
            }
        }
        public var domain: String?

        public var profile: DescribeDomainAdvanceConfigsResponseBody.DomainConfigs.Profile?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.profile?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.profile != nil {
                map["Profile"] = self.profile?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("Profile") {
                var model = DescribeDomainAdvanceConfigsResponseBody.DomainConfigs.Profile()
                model.fromMap(dict["Profile"] as! [String: Any])
                self.profile = model
            }
        }
    }
    public var domainConfigs: [DescribeDomainAdvanceConfigsResponseBody.DomainConfigs]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainConfigs != nil {
            var tmp : [Any] = []
            for k in self.domainConfigs! {
                tmp.append(k.toMap())
            }
            map["DomainConfigs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainConfigs") {
            var tmp : [DescribeDomainAdvanceConfigsResponseBody.DomainConfigs] = []
            for v in dict["DomainConfigs"] as! [Any] {
                var model = DescribeDomainAdvanceConfigsResponseBody.DomainConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.domainConfigs = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDomainAdvanceConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainAdvanceConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDomainAdvanceConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainBasicConfigsRequest : Tea.TeaModel {
    public var accessType: String?

    public var cloudNativeProductId: Int32?

    public var domainKey: String?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

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
        if self.accessType != nil {
            map["AccessType"] = self.accessType!
        }
        if self.cloudNativeProductId != nil {
            map["CloudNativeProductId"] = self.cloudNativeProductId!
        }
        if self.domainKey != nil {
            map["DomainKey"] = self.domainKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessType") {
            self.accessType = dict["AccessType"] as! String
        }
        if dict.keys.contains("CloudNativeProductId") {
            self.cloudNativeProductId = dict["CloudNativeProductId"] as! Int32
        }
        if dict.keys.contains("DomainKey") {
            self.domainKey = dict["DomainKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeDomainBasicConfigsResponseBody : Tea.TeaModel {
    public class DomainConfigs : Tea.TeaModel {
        public var accessType: String?

        public var aclStatus: Int32?

        public var ccMode: Int32?

        public var ccStatus: Int32?

        public var domain: String?

        public var owner: String?

        public var status: Int32?

        public var version: Int64?

        public var wafMode: Int32?

        public var wafStatus: Int32?

        public override init() {
            super.init()
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
            if self.aclStatus != nil {
                map["AclStatus"] = self.aclStatus!
            }
            if self.ccMode != nil {
                map["CcMode"] = self.ccMode!
            }
            if self.ccStatus != nil {
                map["CcStatus"] = self.ccStatus!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.wafMode != nil {
                map["WafMode"] = self.wafMode!
            }
            if self.wafStatus != nil {
                map["WafStatus"] = self.wafStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessType") {
                self.accessType = dict["AccessType"] as! String
            }
            if dict.keys.contains("AclStatus") {
                self.aclStatus = dict["AclStatus"] as! Int32
            }
            if dict.keys.contains("CcMode") {
                self.ccMode = dict["CcMode"] as! Int32
            }
            if dict.keys.contains("CcStatus") {
                self.ccStatus = dict["CcStatus"] as! Int32
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("Owner") {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! Int64
            }
            if dict.keys.contains("WafMode") {
                self.wafMode = dict["WafMode"] as! Int32
            }
            if dict.keys.contains("WafStatus") {
                self.wafStatus = dict["WafStatus"] as! Int32
            }
        }
    }
    public var domainConfigs: [DescribeDomainBasicConfigsResponseBody.DomainConfigs]?

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
        if self.domainConfigs != nil {
            var tmp : [Any] = []
            for k in self.domainConfigs! {
                tmp.append(k.toMap())
            }
            map["DomainConfigs"] = tmp
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
        if dict.keys.contains("DomainConfigs") {
            var tmp : [DescribeDomainBasicConfigsResponseBody.DomainConfigs] = []
            for v in dict["DomainConfigs"] as! [Any] {
                var model = DescribeDomainBasicConfigsResponseBody.DomainConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.domainConfigs = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDomainBasicConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainBasicConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDomainBasicConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainListRequest : Tea.TeaModel {
    public var domainName: String?

    public var domainNames: [String]?

    public var instanceId: String?

    public var isSub: Int32?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainNames != nil {
            map["DomainNames"] = self.domainNames!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.isSub != nil {
            map["IsSub"] = self.isSub!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainNames") {
            self.domainNames = dict["DomainNames"] as! [String]
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsSub") {
            self.isSub = dict["IsSub"] as! Int32
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
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeDomainListResponseBody : Tea.TeaModel {
    public var domainNames: [String]?

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
        if self.domainNames != nil {
            map["DomainNames"] = self.domainNames!
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
        if dict.keys.contains("DomainNames") {
            self.domainNames = dict["DomainNames"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDomainListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDomainListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainNamesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeDomainNamesResponseBody : Tea.TeaModel {
    public var domainNames: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainNames != nil {
            map["DomainNames"] = self.domainNames!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainNames") {
            self.domainNames = dict["DomainNames"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDomainNamesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainNamesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDomainNamesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainRuleGroupRequest : Tea.TeaModel {
    public var domain: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeDomainRuleGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var ruleGroupId: Int64?

    public var wafAiStatus: Int32?

    public override init() {
        super.init()
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
        if self.ruleGroupId != nil {
            map["RuleGroupId"] = self.ruleGroupId!
        }
        if self.wafAiStatus != nil {
            map["WafAiStatus"] = self.wafAiStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleGroupId") {
            self.ruleGroupId = dict["RuleGroupId"] as! Int64
        }
        if dict.keys.contains("WafAiStatus") {
            self.wafAiStatus = dict["WafAiStatus"] as! Int32
        }
    }
}

public class DescribeDomainRuleGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainRuleGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDomainRuleGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceInfoRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeInstanceInfoResponseBody : Tea.TeaModel {
    public class InstanceInfo : Tea.TeaModel {
        public var endDate: Int64?

        public var inDebt: Int32?

        public var instanceId: String?

        public var payType: Int32?

        public var region: String?

        public var remainDay: Int32?

        public var status: Int32?

        public var subscriptionType: String?

        public var trial: Int32?

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
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.inDebt != nil {
                map["InDebt"] = self.inDebt!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.remainDay != nil {
                map["RemainDay"] = self.remainDay!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subscriptionType != nil {
                map["SubscriptionType"] = self.subscriptionType!
            }
            if self.trial != nil {
                map["Trial"] = self.trial!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndDate") {
                self.endDate = dict["EndDate"] as! Int64
            }
            if dict.keys.contains("InDebt") {
                self.inDebt = dict["InDebt"] as! Int32
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! Int32
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("RemainDay") {
                self.remainDay = dict["RemainDay"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("SubscriptionType") {
                self.subscriptionType = dict["SubscriptionType"] as! String
            }
            if dict.keys.contains("Trial") {
                self.trial = dict["Trial"] as! Int32
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var instanceInfo: DescribeInstanceInfoResponseBody.InstanceInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceInfo != nil {
            map["InstanceInfo"] = self.instanceInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceInfo") {
            var model = DescribeInstanceInfoResponseBody.InstanceInfo()
            model.fromMap(dict["InstanceInfo"] as! [String: Any])
            self.instanceInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeInstanceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeInstanceInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceSpecInfoRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeInstanceSpecInfoResponseBody : Tea.TeaModel {
    public class InstanceSpecInfos : Tea.TeaModel {
        public var code: String?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var expireTime: Int64?

    public var instanceId: String?

    public var instanceSpecInfos: [DescribeInstanceSpecInfoResponseBody.InstanceSpecInfos]?

    public var requestId: String?

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
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceSpecInfos != nil {
            var tmp : [Any] = []
            for k in self.instanceSpecInfos! {
                tmp.append(k.toMap())
            }
            map["InstanceSpecInfos"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceSpecInfos") {
            var tmp : [DescribeInstanceSpecInfoResponseBody.InstanceSpecInfos] = []
            for v in dict["InstanceSpecInfos"] as! [Any] {
                var model = DescribeInstanceSpecInfoResponseBody.InstanceSpecInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceSpecInfos = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
    }
}

public class DescribeInstanceSpecInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceSpecInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeInstanceSpecInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLogServiceStatusRequest : Tea.TeaModel {
    public var domainNames: [String]?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var region: String?

    public var regionId: String?

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
        if self.domainNames != nil {
            map["DomainNames"] = self.domainNames!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainNames") {
            self.domainNames = dict["DomainNames"] as! [String]
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeLogServiceStatusResponseBody : Tea.TeaModel {
    public class DomainStatus : Tea.TeaModel {
        public var domain: String?

        public var slsLogActive: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.slsLogActive != nil {
                map["SlsLogActive"] = self.slsLogActive!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("SlsLogActive") {
                self.slsLogActive = dict["SlsLogActive"] as! Int32
            }
        }
    }
    public var domainStatus: [DescribeLogServiceStatusResponseBody.DomainStatus]?

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
        if self.domainStatus != nil {
            var tmp : [Any] = []
            for k in self.domainStatus! {
                tmp.append(k.toMap())
            }
            map["DomainStatus"] = tmp
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
        if dict.keys.contains("DomainStatus") {
            var tmp : [DescribeLogServiceStatusResponseBody.DomainStatus] = []
            for v in dict["DomainStatus"] as! [Any] {
                var model = DescribeLogServiceStatusResponseBody.DomainStatus()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.domainStatus = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeLogServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLogServiceStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeLogServiceStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeProtectionModuleCodeConfigRequest : Tea.TeaModel {
    public var codeType: Int32?

    public var codeValue: Int32?

    public var instanceId: String?

    public var regionId: String?

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
        if self.codeType != nil {
            map["CodeType"] = self.codeType!
        }
        if self.codeValue != nil {
            map["CodeValue"] = self.codeValue!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CodeType") {
            self.codeType = dict["CodeType"] as! Int32
        }
        if dict.keys.contains("CodeValue") {
            self.codeValue = dict["CodeValue"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeProtectionModuleCodeConfigResponseBody : Tea.TeaModel {
    public var codeConfigs: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.codeConfigs != nil {
            map["CodeConfigs"] = self.codeConfigs!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CodeConfigs") {
            self.codeConfigs = dict["CodeConfigs"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeProtectionModuleCodeConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProtectionModuleCodeConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeProtectionModuleCodeConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeProtectionModuleModeRequest : Tea.TeaModel {
    public var defenseType: String?

    public var domain: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.defenseType != nil {
            map["DefenseType"] = self.defenseType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefenseType") {
            self.defenseType = dict["DefenseType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeProtectionModuleModeResponseBody : Tea.TeaModel {
    public var mode: Int32?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeProtectionModuleModeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProtectionModuleModeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeProtectionModuleModeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeProtectionModuleRulesRequest : Tea.TeaModel {
    public var defenseType: String?

    public var domain: String?

    public var instanceId: String?

    public var lang: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var regionId: String?

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
        if self.defenseType != nil {
            map["DefenseType"] = self.defenseType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefenseType") {
            self.defenseType = dict["DefenseType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeProtectionModuleRulesResponseBody : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public var content: [String: Any]?

        public var ruleId: Int64?

        public var status: Int64?

        public var time: Int64?

        public var version: Int64?

        public override init() {
            super.init()
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
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! [String: Any]
            }
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int64
            }
            if dict.keys.contains("Time") {
                self.time = dict["Time"] as! Int64
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var rules: [DescribeProtectionModuleRulesResponseBody.Rules]?

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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Rules") {
            var tmp : [DescribeProtectionModuleRulesResponseBody.Rules] = []
            for v in dict["Rules"] as! [Any] {
                var model = DescribeProtectionModuleRulesResponseBody.Rules()
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

public class DescribeProtectionModuleRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProtectionModuleRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeProtectionModuleRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeProtectionModuleStatusRequest : Tea.TeaModel {
    public var defenseType: String?

    public var domain: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.defenseType != nil {
            map["DefenseType"] = self.defenseType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefenseType") {
            self.defenseType = dict["DefenseType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeProtectionModuleStatusResponseBody : Tea.TeaModel {
    public var moduleStatus: Int32?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.moduleStatus != nil {
            map["ModuleStatus"] = self.moduleStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModuleStatus") {
            self.moduleStatus = dict["ModuleStatus"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeProtectionModuleStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProtectionModuleStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeProtectionModuleStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRuleGroupsRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var instanceId: String?

    public var lang: String?

    public var pageSize: Int32?

    public var policyId: Int64?

    public var region: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var sourceIp: String?

    public var type: Int32?

    public var wafLang: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.wafLang != nil {
            map["WafLang"] = self.wafLang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PolicyId") {
            self.policyId = dict["PolicyId"] as! Int64
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceIp") {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! Int32
        }
        if dict.keys.contains("WafLang") {
            self.wafLang = dict["WafLang"] as! String
        }
    }
}

public class DescribeRuleGroupsResponseBody : Tea.TeaModel {
    public class RuleGroups : Tea.TeaModel {
        public var desc: String?

        public var domainList: [String]?

        public var name: String?

        public var policyId: Int64?

        public var ruleCnt: Int32?

        public var ruleGroupTemplateName: String?

        public var ruleGroupUpdateTime: Int64?

        public var templatePolicyId: Int64?

        public var type: Int32?

        public var wafVersion: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.domainList != nil {
                map["DomainList"] = self.domainList!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.ruleCnt != nil {
                map["RuleCnt"] = self.ruleCnt!
            }
            if self.ruleGroupTemplateName != nil {
                map["RuleGroupTemplateName"] = self.ruleGroupTemplateName!
            }
            if self.ruleGroupUpdateTime != nil {
                map["RuleGroupUpdateTime"] = self.ruleGroupUpdateTime!
            }
            if self.templatePolicyId != nil {
                map["TemplatePolicyId"] = self.templatePolicyId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.wafVersion != nil {
                map["WafVersion"] = self.wafVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Desc") {
                self.desc = dict["Desc"] as! String
            }
            if dict.keys.contains("DomainList") {
                self.domainList = dict["DomainList"] as! [String]
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PolicyId") {
                self.policyId = dict["PolicyId"] as! Int64
            }
            if dict.keys.contains("RuleCnt") {
                self.ruleCnt = dict["RuleCnt"] as! Int32
            }
            if dict.keys.contains("RuleGroupTemplateName") {
                self.ruleGroupTemplateName = dict["RuleGroupTemplateName"] as! String
            }
            if dict.keys.contains("RuleGroupUpdateTime") {
                self.ruleGroupUpdateTime = dict["RuleGroupUpdateTime"] as! Int64
            }
            if dict.keys.contains("TemplatePolicyId") {
                self.templatePolicyId = dict["TemplatePolicyId"] as! Int64
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! Int32
            }
            if dict.keys.contains("WafVersion") {
                self.wafVersion = dict["WafVersion"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var ruleGroups: [DescribeRuleGroupsResponseBody.RuleGroups]?

    public var taskStatus: Int32?

    public var total: Int32?

    public var wafTaskId: String?

    public override init() {
        super.init()
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
        if self.ruleGroups != nil {
            var tmp : [Any] = []
            for k in self.ruleGroups! {
                tmp.append(k.toMap())
            }
            map["RuleGroups"] = tmp
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        if self.wafTaskId != nil {
            map["WafTaskId"] = self.wafTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleGroups") {
            var tmp : [DescribeRuleGroupsResponseBody.RuleGroups] = []
            for v in dict["RuleGroups"] as! [Any] {
                var model = DescribeRuleGroupsResponseBody.RuleGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ruleGroups = tmp
        }
        if dict.keys.contains("TaskStatus") {
            self.taskStatus = dict["TaskStatus"] as! Int32
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
        if dict.keys.contains("WafTaskId") {
            self.wafTaskId = dict["WafTaskId"] as! String
        }
    }
}

public class DescribeRuleGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRuleGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeRuleGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRulesRequest : Tea.TeaModel {
    public var applicationType: Int32?

    public var cveIdKey: String?

    public var instanceId: String?

    public var lang: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var protectionType: Int32?

    public var region: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var riskLevel: Int32?

    public var ruleGroupId: Int64?

    public var ruleIdKey: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.cveIdKey != nil {
            map["CveIdKey"] = self.cveIdKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.protectionType != nil {
            map["ProtectionType"] = self.protectionType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        if self.ruleGroupId != nil {
            map["RuleGroupId"] = self.ruleGroupId!
        }
        if self.ruleIdKey != nil {
            map["RuleIdKey"] = self.ruleIdKey!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationType") {
            self.applicationType = dict["ApplicationType"] as! Int32
        }
        if dict.keys.contains("CveIdKey") {
            self.cveIdKey = dict["CveIdKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProtectionType") {
            self.protectionType = dict["ProtectionType"] as! Int32
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("RiskLevel") {
            self.riskLevel = dict["RiskLevel"] as! Int32
        }
        if dict.keys.contains("RuleGroupId") {
            self.ruleGroupId = dict["RuleGroupId"] as! Int64
        }
        if dict.keys.contains("RuleIdKey") {
            self.ruleIdKey = dict["RuleIdKey"] as! String
        }
        if dict.keys.contains("SourceIp") {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeRulesResponseBody : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public var applicationType: Int32?

        public var cveId: String?

        public var cveUrl: String?

        public var description_: String?

        public var protectionType: Int32?

        public var riskLevel: Int32?

        public var ruleId: Int64?

        public var ruleName: String?

        public var updateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationType != nil {
                map["ApplicationType"] = self.applicationType!
            }
            if self.cveId != nil {
                map["CveId"] = self.cveId!
            }
            if self.cveUrl != nil {
                map["CveUrl"] = self.cveUrl!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.protectionType != nil {
                map["ProtectionType"] = self.protectionType!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationType") {
                self.applicationType = dict["ApplicationType"] as! Int32
            }
            if dict.keys.contains("CveId") {
                self.cveId = dict["CveId"] as! String
            }
            if dict.keys.contains("CveUrl") {
                self.cveUrl = dict["CveUrl"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ProtectionType") {
                self.protectionType = dict["ProtectionType"] as! Int32
            }
            if dict.keys.contains("RiskLevel") {
                self.riskLevel = dict["RiskLevel"] as! Int32
            }
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! Int64
            }
            if dict.keys.contains("RuleName") {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var isSubscribe: Int64?

    public var requestId: String?

    public var ruleGroupName: String?

    public var ruleGroupTemplateId: String?

    public var ruleGroupTemplateName: String?

    public var rules: [DescribeRulesResponseBody.Rules]?

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
        if self.isSubscribe != nil {
            map["IsSubscribe"] = self.isSubscribe!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.ruleGroupName != nil {
            map["RuleGroupName"] = self.ruleGroupName!
        }
        if self.ruleGroupTemplateId != nil {
            map["RuleGroupTemplateId"] = self.ruleGroupTemplateId!
        }
        if self.ruleGroupTemplateName != nil {
            map["RuleGroupTemplateName"] = self.ruleGroupTemplateName!
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
        if dict.keys.contains("IsSubscribe") {
            self.isSubscribe = dict["IsSubscribe"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleGroupName") {
            self.ruleGroupName = dict["RuleGroupName"] as! String
        }
        if dict.keys.contains("RuleGroupTemplateId") {
            self.ruleGroupTemplateId = dict["RuleGroupTemplateId"] as! String
        }
        if dict.keys.contains("RuleGroupTemplateName") {
            self.ruleGroupTemplateName = dict["RuleGroupTemplateName"] as! String
        }
        if dict.keys.contains("Rules") {
            var tmp : [DescribeRulesResponseBody.Rules] = []
            for v in dict["Rules"] as! [Any] {
                var model = DescribeRulesResponseBody.Rules()
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

public class DescribeRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeWafSourceIpSegmentRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeWafSourceIpSegmentResponseBody : Tea.TeaModel {
    public var ipV6s: String?

    public var ips: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipV6s != nil {
            map["IpV6s"] = self.ipV6s!
        }
        if self.ips != nil {
            map["Ips"] = self.ips!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpV6s") {
            self.ipV6s = dict["IpV6s"] as! String
        }
        if dict.keys.contains("Ips") {
            self.ips = dict["Ips"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeWafSourceIpSegmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWafSourceIpSegmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeWafSourceIpSegmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDomainRequest : Tea.TeaModel {
    public var accessHeaderMode: Int32?

    public var accessHeaders: String?

    public var accessType: String?

    public var cloudNativeInstances: String?

    public var clusterType: Int32?

    public var connectionTime: Int32?

    public var domain: String?

    public var http2Port: String?

    public var httpPort: String?

    public var httpToUserIp: Int32?

    public var httpsPort: String?

    public var httpsRedirect: Int32?

    public var instanceId: String?

    public var ipFollowStatus: Int32?

    public var isAccessProduct: Int32?

    public var keepalive: Bool?

    public var keepaliveRequests: Int32?

    public var keepaliveTimeout: Int32?

    public var loadBalancing: Int32?

    public var logHeaders: String?

    public var readTime: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var retry: Bool?

    public var sniHost: String?

    public var sniStatus: Int32?

    public var sourceIps: String?

    public var writeTime: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessHeaderMode != nil {
            map["AccessHeaderMode"] = self.accessHeaderMode!
        }
        if self.accessHeaders != nil {
            map["AccessHeaders"] = self.accessHeaders!
        }
        if self.accessType != nil {
            map["AccessType"] = self.accessType!
        }
        if self.cloudNativeInstances != nil {
            map["CloudNativeInstances"] = self.cloudNativeInstances!
        }
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.connectionTime != nil {
            map["ConnectionTime"] = self.connectionTime!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.http2Port != nil {
            map["Http2Port"] = self.http2Port!
        }
        if self.httpPort != nil {
            map["HttpPort"] = self.httpPort!
        }
        if self.httpToUserIp != nil {
            map["HttpToUserIp"] = self.httpToUserIp!
        }
        if self.httpsPort != nil {
            map["HttpsPort"] = self.httpsPort!
        }
        if self.httpsRedirect != nil {
            map["HttpsRedirect"] = self.httpsRedirect!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ipFollowStatus != nil {
            map["IpFollowStatus"] = self.ipFollowStatus!
        }
        if self.isAccessProduct != nil {
            map["IsAccessProduct"] = self.isAccessProduct!
        }
        if self.keepalive != nil {
            map["Keepalive"] = self.keepalive!
        }
        if self.keepaliveRequests != nil {
            map["KeepaliveRequests"] = self.keepaliveRequests!
        }
        if self.keepaliveTimeout != nil {
            map["KeepaliveTimeout"] = self.keepaliveTimeout!
        }
        if self.loadBalancing != nil {
            map["LoadBalancing"] = self.loadBalancing!
        }
        if self.logHeaders != nil {
            map["LogHeaders"] = self.logHeaders!
        }
        if self.readTime != nil {
            map["ReadTime"] = self.readTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.retry != nil {
            map["Retry"] = self.retry!
        }
        if self.sniHost != nil {
            map["SniHost"] = self.sniHost!
        }
        if self.sniStatus != nil {
            map["SniStatus"] = self.sniStatus!
        }
        if self.sourceIps != nil {
            map["SourceIps"] = self.sourceIps!
        }
        if self.writeTime != nil {
            map["WriteTime"] = self.writeTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessHeaderMode") {
            self.accessHeaderMode = dict["AccessHeaderMode"] as! Int32
        }
        if dict.keys.contains("AccessHeaders") {
            self.accessHeaders = dict["AccessHeaders"] as! String
        }
        if dict.keys.contains("AccessType") {
            self.accessType = dict["AccessType"] as! String
        }
        if dict.keys.contains("CloudNativeInstances") {
            self.cloudNativeInstances = dict["CloudNativeInstances"] as! String
        }
        if dict.keys.contains("ClusterType") {
            self.clusterType = dict["ClusterType"] as! Int32
        }
        if dict.keys.contains("ConnectionTime") {
            self.connectionTime = dict["ConnectionTime"] as! Int32
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Http2Port") {
            self.http2Port = dict["Http2Port"] as! String
        }
        if dict.keys.contains("HttpPort") {
            self.httpPort = dict["HttpPort"] as! String
        }
        if dict.keys.contains("HttpToUserIp") {
            self.httpToUserIp = dict["HttpToUserIp"] as! Int32
        }
        if dict.keys.contains("HttpsPort") {
            self.httpsPort = dict["HttpsPort"] as! String
        }
        if dict.keys.contains("HttpsRedirect") {
            self.httpsRedirect = dict["HttpsRedirect"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IpFollowStatus") {
            self.ipFollowStatus = dict["IpFollowStatus"] as! Int32
        }
        if dict.keys.contains("IsAccessProduct") {
            self.isAccessProduct = dict["IsAccessProduct"] as! Int32
        }
        if dict.keys.contains("Keepalive") {
            self.keepalive = dict["Keepalive"] as! Bool
        }
        if dict.keys.contains("KeepaliveRequests") {
            self.keepaliveRequests = dict["KeepaliveRequests"] as! Int32
        }
        if dict.keys.contains("KeepaliveTimeout") {
            self.keepaliveTimeout = dict["KeepaliveTimeout"] as! Int32
        }
        if dict.keys.contains("LoadBalancing") {
            self.loadBalancing = dict["LoadBalancing"] as! Int32
        }
        if dict.keys.contains("LogHeaders") {
            self.logHeaders = dict["LogHeaders"] as! String
        }
        if dict.keys.contains("ReadTime") {
            self.readTime = dict["ReadTime"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Retry") {
            self.retry = dict["Retry"] as! Bool
        }
        if dict.keys.contains("SniHost") {
            self.sniHost = dict["SniHost"] as! String
        }
        if dict.keys.contains("SniStatus") {
            self.sniStatus = dict["SniStatus"] as! Int32
        }
        if dict.keys.contains("SourceIps") {
            self.sourceIps = dict["SourceIps"] as! String
        }
        if dict.keys.contains("WriteTime") {
            self.writeTime = dict["WriteTime"] as! Int32
        }
    }
}

public class ModifyDomainResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDomainIpv6StatusRequest : Tea.TeaModel {
    public var domain: String?

    public var enabled: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class ModifyDomainIpv6StatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyDomainIpv6StatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDomainIpv6StatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDomainIpv6StatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyLogRetrievalStatusRequest : Tea.TeaModel {
    public var domain: String?

    public var enabled: Int32?

    public var instanceId: String?

    public var regionId: String?

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
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class ModifyLogRetrievalStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyLogRetrievalStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyLogRetrievalStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyLogRetrievalStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyLogServiceStatusRequest : Tea.TeaModel {
    public var domain: String?

    public var enabled: Int32?

    public var instanceId: String?

    public var regionId: String?

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
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Enabled") {
            self.enabled = dict["Enabled"] as! Int32
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class ModifyLogServiceStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyLogServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyLogServiceStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyLogServiceStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyProtectionModuleModeRequest : Tea.TeaModel {
    public var defenseType: String?

    public var domain: String?

    public var instanceId: String?

    public var mode: Int32?

    public var regionId: String?

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
        if self.defenseType != nil {
            map["DefenseType"] = self.defenseType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefenseType") {
            self.defenseType = dict["DefenseType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class ModifyProtectionModuleModeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyProtectionModuleModeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyProtectionModuleModeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyProtectionModuleModeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyProtectionModuleRuleRequest : Tea.TeaModel {
    public var defenseType: String?

    public var domain: String?

    public var instanceId: String?

    public var lockVersion: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var rule: String?

    public var ruleId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defenseType != nil {
            map["DefenseType"] = self.defenseType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lockVersion != nil {
            map["LockVersion"] = self.lockVersion!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.rule != nil {
            map["Rule"] = self.rule!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefenseType") {
            self.defenseType = dict["DefenseType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LockVersion") {
            self.lockVersion = dict["LockVersion"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Rule") {
            self.rule = dict["Rule"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
    }
}

public class ModifyProtectionModuleRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyProtectionModuleRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyProtectionModuleRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyProtectionModuleRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyProtectionModuleStatusRequest : Tea.TeaModel {
    public var defenseType: String?

    public var domain: String?

    public var instanceId: String?

    public var moduleStatus: Int32?

    public var regionId: String?

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
        if self.defenseType != nil {
            map["DefenseType"] = self.defenseType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.moduleStatus != nil {
            map["ModuleStatus"] = self.moduleStatus!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefenseType") {
            self.defenseType = dict["DefenseType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("ModuleStatus") {
            self.moduleStatus = dict["ModuleStatus"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class ModifyProtectionModuleStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyProtectionModuleStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyProtectionModuleStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyProtectionModuleStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyProtectionRuleCacheStatusRequest : Tea.TeaModel {
    public var defenseType: String?

    public var domain: String?

    public var instanceId: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var ruleId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defenseType != nil {
            map["DefenseType"] = self.defenseType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefenseType") {
            self.defenseType = dict["DefenseType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
    }
}

public class ModifyProtectionRuleCacheStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyProtectionRuleCacheStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyProtectionRuleCacheStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyProtectionRuleCacheStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyProtectionRuleStatusRequest : Tea.TeaModel {
    public var defenseType: String?

    public var domain: String?

    public var instanceId: String?

    public var lockVersion: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var ruleId: Int64?

    public var ruleStatus: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defenseType != nil {
            map["DefenseType"] = self.defenseType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lockVersion != nil {
            map["LockVersion"] = self.lockVersion!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleStatus != nil {
            map["RuleStatus"] = self.ruleStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefenseType") {
            self.defenseType = dict["DefenseType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LockVersion") {
            self.lockVersion = dict["LockVersion"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("RuleStatus") {
            self.ruleStatus = dict["RuleStatus"] as! Int32
        }
    }
}

public class ModifyProtectionRuleStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyProtectionRuleStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyProtectionRuleStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyProtectionRuleStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MoveResourceGroupRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
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

public class SetDomainRuleGroupRequest : Tea.TeaModel {
    public var domains: String?

    public var instanceId: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var ruleGroupId: Int64?

    public var wafAiStatus: Int32?

    public var wafVersion: Int64?

    public override init() {
        super.init()
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
            map["Domains"] = self.domains!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.ruleGroupId != nil {
            map["RuleGroupId"] = self.ruleGroupId!
        }
        if self.wafAiStatus != nil {
            map["WafAiStatus"] = self.wafAiStatus!
        }
        if self.wafVersion != nil {
            map["WafVersion"] = self.wafVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domains") {
            self.domains = dict["Domains"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleGroupId") {
            self.ruleGroupId = dict["RuleGroupId"] as! Int64
        }
        if dict.keys.contains("WafAiStatus") {
            self.wafAiStatus = dict["WafAiStatus"] as! Int32
        }
        if dict.keys.contains("WafVersion") {
            self.wafVersion = dict["WafVersion"] as! Int64
        }
    }
}

public class SetDomainRuleGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class SetDomainRuleGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDomainRuleGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetDomainRuleGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
