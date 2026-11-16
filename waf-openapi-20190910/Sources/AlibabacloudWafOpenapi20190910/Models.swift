import Foundation
import Tea
import TeaUtils
import AlibabacloudGatewayPOP
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Certificate"] as? String {
            self.certificate = value
        }
        if let value = dict["CertificateName"] as? String {
            self.certificateName = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PrivateKey"] as? String {
            self.privateKey = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateId"] as? Int64 {
            self.certificateId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateCertificateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateId"] as? Int64 {
            self.certificateId = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateId"] as? Int64 {
            self.certificateId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateCertificateByCertificateIdResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessHeaderMode"] as? Int32 {
            self.accessHeaderMode = value
        }
        if let value = dict["AccessHeaders"] as? String {
            self.accessHeaders = value
        }
        if let value = dict["AccessType"] as? String {
            self.accessType = value
        }
        if let value = dict["CloudNativeInstances"] as? String {
            self.cloudNativeInstances = value
        }
        if let value = dict["ClusterType"] as? Int32 {
            self.clusterType = value
        }
        if let value = dict["ConnectionTime"] as? Int32 {
            self.connectionTime = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Http2Port"] as? String {
            self.http2Port = value
        }
        if let value = dict["HttpPort"] as? String {
            self.httpPort = value
        }
        if let value = dict["HttpToUserIp"] as? Int32 {
            self.httpToUserIp = value
        }
        if let value = dict["HttpsPort"] as? String {
            self.httpsPort = value
        }
        if let value = dict["HttpsRedirect"] as? Int32 {
            self.httpsRedirect = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IpFollowStatus"] as? Int32 {
            self.ipFollowStatus = value
        }
        if let value = dict["IsAccessProduct"] as? Int32 {
            self.isAccessProduct = value
        }
        if let value = dict["Keepalive"] as? Bool {
            self.keepalive = value
        }
        if let value = dict["KeepaliveRequests"] as? Int32 {
            self.keepaliveRequests = value
        }
        if let value = dict["KeepaliveTimeout"] as? Int32 {
            self.keepaliveTimeout = value
        }
        if let value = dict["LoadBalancing"] as? Int32 {
            self.loadBalancing = value
        }
        if let value = dict["LogHeaders"] as? String {
            self.logHeaders = value
        }
        if let value = dict["ReadTime"] as? Int32 {
            self.readTime = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Retry"] as? Bool {
            self.retry = value
        }
        if let value = dict["SniHost"] as? String {
            self.sniHost = value
        }
        if let value = dict["SniStatus"] as? Int32 {
            self.sniStatus = value
        }
        if let value = dict["SourceIps"] as? String {
            self.sourceIps = value
        }
        if let value = dict["WriteTime"] as? Int32 {
            self.writeTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cname"] as? String {
            self.cname = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDomainResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefenseType"] as? String {
            self.defenseType = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Rule"] as? String {
            self.rule = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateProtectionModuleRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDomainResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefenseType"] as? String {
            self.defenseType = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RuleId"] as? Int64 {
            self.ruleId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteProtectionModuleRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Certificate"] as? String {
            self.certificate = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PrivateKey"] as? String {
            self.privateKey = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MatchStatus"] as? Bool {
            self.matchStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCertMatchStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertificateId"] as? Int64 {
                self.certificateId = value
            }
            if let value = dict["CertificateName"] as? String {
                self.certificateName = value
            }
            if let value = dict["CommonName"] as? String {
                self.commonName = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["IsUsing"] as? Bool {
                self.isUsing = value
            }
            if let value = dict["Sans"] as? [String] {
                self.sans = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Certificates"] as? [Any?] {
            var tmp : [DescribeCertificatesResponseBody.Certificates] = []
            for v in value {
                if v != nil {
                    var model = DescribeCertificatesResponseBody.Certificates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.certificates = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCertificatesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Ports"] as? [Int32] {
                        self.ports = value
                    }
                    if let value = dict["Protocol"] as? String {
                        self.protocol_ = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CloudNativeProductName"] as? String {
                    self.cloudNativeProductName = value
                }
                if let value = dict["IPAddressList"] as? [String] {
                    self.IPAddressList = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["ProtocolPortConfigs"] as? [Any?] {
                    var tmp : [DescribeDomainResponseBody.Domain.CloudNativeInstances.ProtocolPortConfigs] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeDomainResponseBody.Domain.CloudNativeInstances.ProtocolPortConfigs()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.protocolPortConfigs = tmp
                }
                if let value = dict["RedirectionTypeName"] as? String {
                    self.redirectionTypeName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["k"] as? String {
                    self.k = value
                }
                if let value = dict["v"] as? String {
                    self.v = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessHeaderMode"] as? Int32 {
                self.accessHeaderMode = value
            }
            if let value = dict["AccessHeaders"] as? [String] {
                self.accessHeaders = value
            }
            if let value = dict["AccessType"] as? String {
                self.accessType = value
            }
            if let value = dict["CloudNativeInstances"] as? [Any?] {
                var tmp : [DescribeDomainResponseBody.Domain.CloudNativeInstances] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDomainResponseBody.Domain.CloudNativeInstances()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.cloudNativeInstances = tmp
            }
            if let value = dict["ClusterType"] as? Int32 {
                self.clusterType = value
            }
            if let value = dict["Cname"] as? String {
                self.cname = value
            }
            if let value = dict["ConnectionTime"] as? Int32 {
                self.connectionTime = value
            }
            if let value = dict["Http2Port"] as? [Int32] {
                self.http2Port = value
            }
            if let value = dict["HttpPort"] as? [Int32] {
                self.httpPort = value
            }
            if let value = dict["HttpToUserIp"] as? Int32 {
                self.httpToUserIp = value
            }
            if let value = dict["HttpsPort"] as? [Int32] {
                self.httpsPort = value
            }
            if let value = dict["HttpsRedirect"] as? Int32 {
                self.httpsRedirect = value
            }
            if let value = dict["IpFollowStatus"] as? Int32 {
                self.ipFollowStatus = value
            }
            if let value = dict["IsAccessProduct"] as? Int32 {
                self.isAccessProduct = value
            }
            if let value = dict["Keepalive"] as? Bool {
                self.keepalive = value
            }
            if let value = dict["KeepaliveRequests"] as? Int32 {
                self.keepaliveRequests = value
            }
            if let value = dict["KeepaliveTimeout"] as? Int32 {
                self.keepaliveTimeout = value
            }
            if let value = dict["LoadBalancing"] as? Int32 {
                self.loadBalancing = value
            }
            if let value = dict["LogHeaders"] as? [Any?] {
                var tmp : [DescribeDomainResponseBody.Domain.LogHeaders] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDomainResponseBody.Domain.LogHeaders()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.logHeaders = tmp
            }
            if let value = dict["ReadTime"] as? Int32 {
                self.readTime = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Retry"] as? Bool {
                self.retry = value
            }
            if let value = dict["SniHost"] as? String {
                self.sniHost = value
            }
            if let value = dict["SniStatus"] as? Int32 {
                self.sniStatus = value
            }
            if let value = dict["SourceIps"] as? [String] {
                self.sourceIps = value
            }
            if let value = dict["Version"] as? Int64 {
                self.version = value
            }
            if let value = dict["WriteTime"] as? Int32 {
                self.writeTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? [String: Any?] {
            var model = DescribeDomainResponseBody.Domain()
            model.fromMap(value)
            self.domain = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDomainResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainList"] as? String {
            self.domainList = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CertStatus"] as? Int32 {
                    self.certStatus = value
                }
                if let value = dict["ClusterType"] as? Int32 {
                    self.clusterType = value
                }
                if let value = dict["Cname"] as? String {
                    self.cname = value
                }
                if let value = dict["ExclusiveVipStatus"] as? Int32 {
                    self.exclusiveVipStatus = value
                }
                if let value = dict["GSLBStatus"] as? String {
                    self.GSLBStatus = value
                }
                if let value = dict["Http2Port"] as? [Int32] {
                    self.http2Port = value
                }
                if let value = dict["HttpPort"] as? [Int32] {
                    self.httpPort = value
                }
                if let value = dict["HttpsPort"] as? [Int32] {
                    self.httpsPort = value
                }
                if let value = dict["Ipv6Status"] as? Int32 {
                    self.ipv6Status = value
                }
                if let value = dict["ResolvedType"] as? Int32 {
                    self.resolvedType = value
                }
                if let value = dict["Rs"] as? [String] {
                    self.rs = value
                }
                if let value = dict["VipServiceStatus"] as? Int32 {
                    self.vipServiceStatus = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["Profile"] as? [String: Any?] {
                var model = DescribeDomainAdvanceConfigsResponseBody.DomainConfigs.Profile()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainConfigs"] as? [Any?] {
            var tmp : [DescribeDomainAdvanceConfigsResponseBody.DomainConfigs] = []
            for v in value {
                if v != nil {
                    var model = DescribeDomainAdvanceConfigsResponseBody.DomainConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.domainConfigs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDomainAdvanceConfigsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessType"] as? String {
            self.accessType = value
        }
        if let value = dict["CloudNativeProductId"] as? Int32 {
            self.cloudNativeProductId = value
        }
        if let value = dict["DomainKey"] as? String {
            self.domainKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessType"] as? String {
                self.accessType = value
            }
            if let value = dict["AclStatus"] as? Int32 {
                self.aclStatus = value
            }
            if let value = dict["CcMode"] as? Int32 {
                self.ccMode = value
            }
            if let value = dict["CcStatus"] as? Int32 {
                self.ccStatus = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["Version"] as? Int64 {
                self.version = value
            }
            if let value = dict["WafMode"] as? Int32 {
                self.wafMode = value
            }
            if let value = dict["WafStatus"] as? Int32 {
                self.wafStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainConfigs"] as? [Any?] {
            var tmp : [DescribeDomainBasicConfigsResponseBody.DomainConfigs] = []
            for v in value {
                if v != nil {
                    var model = DescribeDomainBasicConfigsResponseBody.DomainConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.domainConfigs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDomainBasicConfigsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["DomainNames"] as? [String] {
            self.domainNames = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IsSub"] as? Int32 {
            self.isSub = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainNames"] as? [String] {
            self.domainNames = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDomainListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainNames"] as? [String] {
            self.domainNames = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDomainNamesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RuleGroupId"] as? Int64 {
            self.ruleGroupId = value
        }
        if let value = dict["WafAiStatus"] as? Int32 {
            self.wafAiStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDomainRuleGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndDate"] as? Int64 {
                self.endDate = value
            }
            if let value = dict["InDebt"] as? Int32 {
                self.inDebt = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["PayType"] as? Int32 {
                self.payType = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["RemainDay"] as? Int32 {
                self.remainDay = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["SubscriptionType"] as? String {
                self.subscriptionType = value
            }
            if let value = dict["Trial"] as? Int32 {
                self.trial = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceInfo"] as? [String: Any?] {
            var model = DescribeInstanceInfoResponseBody.InstanceInfo()
            model.fromMap(value)
            self.instanceInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeInstanceInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpireTime"] as? Int64 {
            self.expireTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceSpecInfos"] as? [Any?] {
            var tmp : [DescribeInstanceSpecInfoResponseBody.InstanceSpecInfos] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceSpecInfoResponseBody.InstanceSpecInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceSpecInfos = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeInstanceSpecInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainNames"] as? [String] {
            self.domainNames = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["SlsLogActive"] as? Int32 {
                self.slsLogActive = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainStatus"] as? [Any?] {
            var tmp : [DescribeLogServiceStatusResponseBody.DomainStatus] = []
            for v in value {
                if v != nil {
                    var model = DescribeLogServiceStatusResponseBody.DomainStatus()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.domainStatus = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeLogServiceStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CodeType"] as? Int32 {
            self.codeType = value
        }
        if let value = dict["CodeValue"] as? Int32 {
            self.codeValue = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CodeConfigs"] as? String {
            self.codeConfigs = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeProtectionModuleCodeConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefenseType"] as? String {
            self.defenseType = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mode"] as? Int32 {
            self.mode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeProtectionModuleModeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefenseType"] as? String {
            self.defenseType = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? [String: Any] {
                self.content = value
            }
            if let value = dict["RuleId"] as? Int64 {
                self.ruleId = value
            }
            if let value = dict["Status"] as? Int64 {
                self.status = value
            }
            if let value = dict["Time"] as? Int64 {
                self.time = value
            }
            if let value = dict["Version"] as? Int64 {
                self.version = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Rules"] as? [Any?] {
            var tmp : [DescribeProtectionModuleRulesResponseBody.Rules] = []
            for v in value {
                if v != nil {
                    var model = DescribeProtectionModuleRulesResponseBody.Rules()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeProtectionModuleRulesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefenseType"] as? String {
            self.defenseType = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ModuleStatus"] as? Int32 {
            self.moduleStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeProtectionModuleStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PolicyId"] as? Int64 {
            self.policyId = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["Type"] as? Int32 {
            self.type = value
        }
        if let value = dict["WafLang"] as? String {
            self.wafLang = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Desc"] as? String {
                self.desc = value
            }
            if let value = dict["DomainList"] as? [String] {
                self.domainList = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PolicyId"] as? Int64 {
                self.policyId = value
            }
            if let value = dict["RuleCnt"] as? Int32 {
                self.ruleCnt = value
            }
            if let value = dict["RuleGroupTemplateName"] as? String {
                self.ruleGroupTemplateName = value
            }
            if let value = dict["RuleGroupUpdateTime"] as? Int64 {
                self.ruleGroupUpdateTime = value
            }
            if let value = dict["TemplatePolicyId"] as? Int64 {
                self.templatePolicyId = value
            }
            if let value = dict["Type"] as? Int32 {
                self.type = value
            }
            if let value = dict["WafVersion"] as? Int64 {
                self.wafVersion = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RuleGroups"] as? [Any?] {
            var tmp : [DescribeRuleGroupsResponseBody.RuleGroups] = []
            for v in value {
                if v != nil {
                    var model = DescribeRuleGroupsResponseBody.RuleGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ruleGroups = tmp
        }
        if let value = dict["TaskStatus"] as? Int32 {
            self.taskStatus = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
        if let value = dict["WafTaskId"] as? String {
            self.wafTaskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRuleGroupsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationType"] as? Int32 {
            self.applicationType = value
        }
        if let value = dict["CveIdKey"] as? String {
            self.cveIdKey = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProtectionType"] as? Int32 {
            self.protectionType = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RiskLevel"] as? Int32 {
            self.riskLevel = value
        }
        if let value = dict["RuleGroupId"] as? Int64 {
            self.ruleGroupId = value
        }
        if let value = dict["RuleIdKey"] as? String {
            self.ruleIdKey = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplicationType"] as? Int32 {
                self.applicationType = value
            }
            if let value = dict["CveId"] as? String {
                self.cveId = value
            }
            if let value = dict["CveUrl"] as? String {
                self.cveUrl = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ProtectionType"] as? Int32 {
                self.protectionType = value
            }
            if let value = dict["RiskLevel"] as? Int32 {
                self.riskLevel = value
            }
            if let value = dict["RuleId"] as? Int64 {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["UpdateTime"] as? Int64 {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsSubscribe"] as? Int64 {
            self.isSubscribe = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RuleGroupName"] as? String {
            self.ruleGroupName = value
        }
        if let value = dict["RuleGroupTemplateId"] as? String {
            self.ruleGroupTemplateId = value
        }
        if let value = dict["RuleGroupTemplateName"] as? String {
            self.ruleGroupTemplateName = value
        }
        if let value = dict["Rules"] as? [Any?] {
            var tmp : [DescribeRulesResponseBody.Rules] = []
            for v in value {
                if v != nil {
                    var model = DescribeRulesResponseBody.Rules()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRulesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IpV6s"] as? String {
            self.ipV6s = value
        }
        if let value = dict["Ips"] as? String {
            self.ips = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeWafSourceIpSegmentResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessHeaderMode"] as? Int32 {
            self.accessHeaderMode = value
        }
        if let value = dict["AccessHeaders"] as? String {
            self.accessHeaders = value
        }
        if let value = dict["AccessType"] as? String {
            self.accessType = value
        }
        if let value = dict["CloudNativeInstances"] as? String {
            self.cloudNativeInstances = value
        }
        if let value = dict["ClusterType"] as? Int32 {
            self.clusterType = value
        }
        if let value = dict["ConnectionTime"] as? Int32 {
            self.connectionTime = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Http2Port"] as? String {
            self.http2Port = value
        }
        if let value = dict["HttpPort"] as? String {
            self.httpPort = value
        }
        if let value = dict["HttpToUserIp"] as? Int32 {
            self.httpToUserIp = value
        }
        if let value = dict["HttpsPort"] as? String {
            self.httpsPort = value
        }
        if let value = dict["HttpsRedirect"] as? Int32 {
            self.httpsRedirect = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["IpFollowStatus"] as? Int32 {
            self.ipFollowStatus = value
        }
        if let value = dict["IsAccessProduct"] as? Int32 {
            self.isAccessProduct = value
        }
        if let value = dict["Keepalive"] as? Bool {
            self.keepalive = value
        }
        if let value = dict["KeepaliveRequests"] as? Int32 {
            self.keepaliveRequests = value
        }
        if let value = dict["KeepaliveTimeout"] as? Int32 {
            self.keepaliveTimeout = value
        }
        if let value = dict["LoadBalancing"] as? Int32 {
            self.loadBalancing = value
        }
        if let value = dict["LogHeaders"] as? String {
            self.logHeaders = value
        }
        if let value = dict["ReadTime"] as? Int32 {
            self.readTime = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Retry"] as? Bool {
            self.retry = value
        }
        if let value = dict["SniHost"] as? String {
            self.sniHost = value
        }
        if let value = dict["SniStatus"] as? Int32 {
            self.sniStatus = value
        }
        if let value = dict["SourceIps"] as? String {
            self.sourceIps = value
        }
        if let value = dict["WriteTime"] as? Int32 {
            self.writeTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDomainResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Enabled"] as? String {
            self.enabled = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDomainIpv6StatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Enabled"] as? Int32 {
            self.enabled = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyLogRetrievalStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Enabled"] as? Int32 {
            self.enabled = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyLogServiceStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefenseType"] as? String {
            self.defenseType = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Mode"] as? Int32 {
            self.mode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyProtectionModuleModeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefenseType"] as? String {
            self.defenseType = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LockVersion"] as? Int64 {
            self.lockVersion = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Rule"] as? String {
            self.rule = value
        }
        if let value = dict["RuleId"] as? Int64 {
            self.ruleId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyProtectionModuleRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefenseType"] as? String {
            self.defenseType = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ModuleStatus"] as? Int32 {
            self.moduleStatus = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyProtectionModuleStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefenseType"] as? String {
            self.defenseType = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RuleId"] as? Int64 {
            self.ruleId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyProtectionRuleCacheStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefenseType"] as? String {
            self.defenseType = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LockVersion"] as? Int64 {
            self.lockVersion = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RuleId"] as? Int64 {
            self.ruleId = value
        }
        if let value = dict["RuleStatus"] as? Int32 {
            self.ruleStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyProtectionRuleStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domains"] as? String {
            self.domains = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RuleGroupId"] as? Int64 {
            self.ruleGroupId = value
        }
        if let value = dict["WafAiStatus"] as? Int32 {
            self.wafAiStatus = value
        }
        if let value = dict["WafVersion"] as? Int64 {
            self.wafVersion = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetDomainRuleGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
