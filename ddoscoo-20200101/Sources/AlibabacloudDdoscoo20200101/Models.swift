import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddAutoCcBlacklistRequest : Tea.TeaModel {
    public var blacklist: String?

    public var expireTime: Int32?

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
        if self.blacklist != nil {
            map["Blacklist"] = self.blacklist!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Blacklist"] as? String {
            self.blacklist = value
        }
        if let value = dict["ExpireTime"] as? Int32 {
            self.expireTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class AddAutoCcBlacklistResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class AddAutoCcBlacklistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddAutoCcBlacklistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddAutoCcBlacklistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddAutoCcWhitelistRequest : Tea.TeaModel {
    public var expireTime: Int32?

    public var instanceId: String?

    public var whitelist: String?

    public override init() {
        super.init()
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
        if self.whitelist != nil {
            map["Whitelist"] = self.whitelist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpireTime"] as? Int32 {
            self.expireTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Whitelist"] as? String {
            self.whitelist = value
        }
    }
}

public class AddAutoCcWhitelistResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class AddAutoCcWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddAutoCcWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddAutoCcWhitelistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AssociateWebCertRequest : Tea.TeaModel {
    public var cert: String?

    public var certId: Int32?

    public var certIdentifier: String?

    public var certName: String?

    public var certRegion: String?

    public var domain: String?

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
        if self.cert != nil {
            map["Cert"] = self.cert!
        }
        if self.certId != nil {
            map["CertId"] = self.certId!
        }
        if self.certIdentifier != nil {
            map["CertIdentifier"] = self.certIdentifier!
        }
        if self.certName != nil {
            map["CertName"] = self.certName!
        }
        if self.certRegion != nil {
            map["CertRegion"] = self.certRegion!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cert"] as? String {
            self.cert = value
        }
        if let value = dict["CertId"] as? Int32 {
            self.certId = value
        }
        if let value = dict["CertIdentifier"] as? String {
            self.certIdentifier = value
        }
        if let value = dict["CertName"] as? String {
            self.certName = value
        }
        if let value = dict["CertRegion"] as? String {
            self.certRegion = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
    }
}

public class AssociateWebCertResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class AssociateWebCertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateWebCertResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AssociateWebCertResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AttachSceneDefenseObjectRequest : Tea.TeaModel {
    public var objectType: String?

    public var objects: String?

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
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        if self.objects != nil {
            map["Objects"] = self.objects!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ObjectType"] as? String {
            self.objectType = value
        }
        if let value = dict["Objects"] as? String {
            self.objects = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
    }
}

public class AttachSceneDefenseObjectResponseBody : Tea.TeaModel {
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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AttachSceneDefenseObjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachSceneDefenseObjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AttachSceneDefenseObjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfigDomainSecurityProfileRequest : Tea.TeaModel {
    public var cluster: String?

    public var config: String?

    public var domain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cluster != nil {
            map["Cluster"] = self.cluster!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cluster"] as? String {
            self.cluster = value
        }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
    }
}

public class ConfigDomainSecurityProfileResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ConfigDomainSecurityProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigDomainSecurityProfileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConfigDomainSecurityProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfigL7GlobalRuleRequest : Tea.TeaModel {
    public var domain: String?

    public var ruleAttr: String?

    public override init() {
        super.init()
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
        if self.ruleAttr != nil {
            map["RuleAttr"] = self.ruleAttr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["RuleAttr"] as? String {
            self.ruleAttr = value
        }
    }
}

public class ConfigL7GlobalRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ConfigL7GlobalRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigL7GlobalRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConfigL7GlobalRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfigL7RsPolicyRequest : Tea.TeaModel {
    public var domain: String?

    public var policy: String?

    public var resourceGroupId: String?

    public var upstreamRetry: Int32?

    public override init() {
        super.init()
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
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.upstreamRetry != nil {
            map["UpstreamRetry"] = self.upstreamRetry!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["UpstreamRetry"] as? Int32 {
            self.upstreamRetry = value
        }
    }
}

public class ConfigL7RsPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ConfigL7RsPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigL7RsPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConfigL7RsPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfigL7UsKeepaliveRequest : Tea.TeaModel {
    public var domain: String?

    public var downstreamKeepalive: String?

    public var upstreamKeepalive: String?

    public override init() {
        super.init()
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
        if self.downstreamKeepalive != nil {
            map["DownstreamKeepalive"] = self.downstreamKeepalive!
        }
        if self.upstreamKeepalive != nil {
            map["UpstreamKeepalive"] = self.upstreamKeepalive!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["DownstreamKeepalive"] as? String {
            self.downstreamKeepalive = value
        }
        if let value = dict["UpstreamKeepalive"] as? String {
            self.upstreamKeepalive = value
        }
    }
}

public class ConfigL7UsKeepaliveResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ConfigL7UsKeepaliveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigL7UsKeepaliveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConfigL7UsKeepaliveResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfigLayer4RealLimitRequest : Tea.TeaModel {
    public var instanceId: String?

    public var limitValue: Int64?

    public override init() {
        super.init()
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
        if self.limitValue != nil {
            map["LimitValue"] = self.limitValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["LimitValue"] as? Int64 {
            self.limitValue = value
        }
    }
}

public class ConfigLayer4RealLimitResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ConfigLayer4RealLimitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigLayer4RealLimitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConfigLayer4RealLimitResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfigLayer4RemarkRequest : Tea.TeaModel {
    public var listeners: String?

    public override init() {
        super.init()
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
            map["Listeners"] = self.listeners!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Listeners"] as? String {
            self.listeners = value
        }
    }
}

public class ConfigLayer4RemarkResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ConfigLayer4RemarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigLayer4RemarkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConfigLayer4RemarkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfigLayer4RuleBakModeRequest : Tea.TeaModel {
    public var bakMode: String?

    public var listeners: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bakMode != nil {
            map["BakMode"] = self.bakMode!
        }
        if self.listeners != nil {
            map["Listeners"] = self.listeners!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BakMode"] as? String {
            self.bakMode = value
        }
        if let value = dict["Listeners"] as? String {
            self.listeners = value
        }
    }
}

public class ConfigLayer4RuleBakModeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ConfigLayer4RuleBakModeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigLayer4RuleBakModeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConfigLayer4RuleBakModeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfigLayer4RulePolicyRequest : Tea.TeaModel {
    public var listeners: String?

    public override init() {
        super.init()
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
            map["Listeners"] = self.listeners!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Listeners"] as? String {
            self.listeners = value
        }
    }
}

public class ConfigLayer4RulePolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ConfigLayer4RulePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigLayer4RulePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConfigLayer4RulePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfigNetworkRegionBlockRequest : Tea.TeaModel {
    public var config: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ConfigNetworkRegionBlockResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ConfigNetworkRegionBlockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigNetworkRegionBlockResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConfigNetworkRegionBlockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfigNetworkRulesRequest : Tea.TeaModel {
    public var networkRules: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkRules != nil {
            map["NetworkRules"] = self.networkRules!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkRules"] as? String {
            self.networkRules = value
        }
    }
}

public class ConfigNetworkRulesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ConfigNetworkRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigNetworkRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConfigNetworkRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfigUdpReflectRequest : Tea.TeaModel {
    public var config: String?

    public var instanceId: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ConfigUdpReflectResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ConfigUdpReflectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigUdpReflectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConfigUdpReflectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfigWebCCRuleV2Request : Tea.TeaModel {
    public var domain: String?

    public var expires: Int64?

    public var ruleList: String?

    public override init() {
        super.init()
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
        if self.expires != nil {
            map["Expires"] = self.expires!
        }
        if self.ruleList != nil {
            map["RuleList"] = self.ruleList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Expires"] as? Int64 {
            self.expires = value
        }
        if let value = dict["RuleList"] as? String {
            self.ruleList = value
        }
    }
}

public class ConfigWebCCRuleV2ResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ConfigWebCCRuleV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigWebCCRuleV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConfigWebCCRuleV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfigWebCCTemplateRequest : Tea.TeaModel {
    public var domain: String?

    public var resourceGroupId: String?

    public var template: String?

    public override init() {
        super.init()
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.template != nil {
            map["Template"] = self.template!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Template"] as? String {
            self.template = value
        }
    }
}

public class ConfigWebCCTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ConfigWebCCTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigWebCCTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConfigWebCCTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConfigWebIpSetRequest : Tea.TeaModel {
    public var blackList: [String]?

    public var domain: String?

    public var resourceGroupId: String?

    public var whiteList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackList != nil {
            map["BlackList"] = self.blackList!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.whiteList != nil {
            map["WhiteList"] = self.whiteList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BlackList"] as? [String] {
            self.blackList = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["WhiteList"] as? [String] {
            self.whiteList = value
        }
    }
}

public class ConfigWebIpSetResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ConfigWebIpSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfigWebIpSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConfigWebIpSetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAsyncTaskRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public var taskParams: String?

    public var taskType: Int32?

    public override init() {
        super.init()
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
        if self.taskParams != nil {
            map["TaskParams"] = self.taskParams!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["TaskParams"] as? String {
            self.taskParams = value
        }
        if let value = dict["TaskType"] as? Int32 {
            self.taskType = value
        }
    }
}

public class CreateAsyncTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class CreateAsyncTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAsyncTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateAsyncTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDomainResourceRequest : Tea.TeaModel {
    public class ProxyTypes : Tea.TeaModel {
        public var proxyPorts: [Int32]?

        public var proxyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.proxyPorts != nil {
                map["ProxyPorts"] = self.proxyPorts!
            }
            if self.proxyType != nil {
                map["ProxyType"] = self.proxyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProxyPorts"] as? [Int32] {
                self.proxyPorts = value
            }
            if let value = dict["ProxyType"] as? String {
                self.proxyType = value
            }
        }
    }
    public var domain: String?

    public var httpsExt: String?

    public var instanceIds: [String]?

    public var proxyTypes: [CreateDomainResourceRequest.ProxyTypes]?

    public var realServers: [String]?

    public var rsType: Int32?

    public override init() {
        super.init()
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
        if self.httpsExt != nil {
            map["HttpsExt"] = self.httpsExt!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.proxyTypes != nil {
            var tmp : [Any] = []
            for k in self.proxyTypes! {
                tmp.append(k.toMap())
            }
            map["ProxyTypes"] = tmp
        }
        if self.realServers != nil {
            map["RealServers"] = self.realServers!
        }
        if self.rsType != nil {
            map["RsType"] = self.rsType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["HttpsExt"] as? String {
            self.httpsExt = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["ProxyTypes"] as? [Any?] {
            var tmp : [CreateDomainResourceRequest.ProxyTypes] = []
            for v in value {
                if v != nil {
                    var model = CreateDomainResourceRequest.ProxyTypes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.proxyTypes = tmp
        }
        if let value = dict["RealServers"] as? [String] {
            self.realServers = value
        }
        if let value = dict["RsType"] as? Int32 {
            self.rsType = value
        }
    }
}

public class CreateDomainResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class CreateDomainResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDomainResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDomainResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateNetworkRulesRequest : Tea.TeaModel {
    public var networkRules: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkRules != nil {
            map["NetworkRules"] = self.networkRules!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkRules"] as? String {
            self.networkRules = value
        }
    }
}

public class CreateNetworkRulesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class CreateNetworkRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNetworkRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateNetworkRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePortRequest : Tea.TeaModel {
    public var backendPort: String?

    public var frontendPort: String?

    public var frontendProtocol: String?

    public var instanceId: String?

    public var proxyEnable: Int64?

    public var realServers: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendPort != nil {
            map["BackendPort"] = self.backendPort!
        }
        if self.frontendPort != nil {
            map["FrontendPort"] = self.frontendPort!
        }
        if self.frontendProtocol != nil {
            map["FrontendProtocol"] = self.frontendProtocol!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.proxyEnable != nil {
            map["ProxyEnable"] = self.proxyEnable!
        }
        if self.realServers != nil {
            map["RealServers"] = self.realServers!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendPort"] as? String {
            self.backendPort = value
        }
        if let value = dict["FrontendPort"] as? String {
            self.frontendPort = value
        }
        if let value = dict["FrontendProtocol"] as? String {
            self.frontendProtocol = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ProxyEnable"] as? Int64 {
            self.proxyEnable = value
        }
        if let value = dict["RealServers"] as? [String] {
            self.realServers = value
        }
    }
}

public class CreatePortResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class CreatePortResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePortResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePortResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSceneDefensePolicyRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var name: String?

    public var startTime: Int64?

    public var template: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.template != nil {
            map["Template"] = self.template!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Template"] as? String {
            self.template = value
        }
    }
}

public class CreateSceneDefensePolicyResponseBody : Tea.TeaModel {
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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateSceneDefensePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSceneDefensePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateSceneDefensePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSchedulerRuleRequest : Tea.TeaModel {
    public var param: String?

    public var resourceGroupId: String?

    public var ruleName: String?

    public var ruleType: Int32?

    public var rules: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.param != nil {
            map["Param"] = self.param!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.rules != nil {
            map["Rules"] = self.rules!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Param"] as? String {
            self.param = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["RuleType"] as? Int32 {
            self.ruleType = value
        }
        if let value = dict["Rules"] as? String {
            self.rules = value
        }
    }
}

public class CreateSchedulerRuleResponseBody : Tea.TeaModel {
    public var cname: String?

    public var requestId: String?

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
        if self.cname != nil {
            map["Cname"] = self.cname!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
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
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
    }
}

public class CreateSchedulerRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSchedulerRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateSchedulerRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTagResourcesRequest : Tea.TeaModel {
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
    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceIds: [String]?

    public var resourceType: String?

    public var tags: [CreateTagResourcesRequest.Tags]?

    public override init() {
        super.init()
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
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceIds"] as? [String] {
            self.resourceIds = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateTagResourcesRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateTagResourcesRequest.Tags()
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

public class CreateTagResourcesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class CreateTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateWebCCRuleRequest : Tea.TeaModel {
    public var act: String?

    public var count: Int32?

    public var domain: String?

    public var interval: Int32?

    public var mode: String?

    public var name: String?

    public var resourceGroupId: String?

    public var ttl: Int32?

    public var uri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.act != nil {
            map["Act"] = self.act!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Act"] as? String {
            self.act = value
        }
        if let value = dict["Count"] as? Int32 {
            self.count = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Interval"] as? Int32 {
            self.interval = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Ttl"] as? Int32 {
            self.ttl = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
    }
}

public class CreateWebCCRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class CreateWebCCRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWebCCRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateWebCCRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateWebRuleRequest : Tea.TeaModel {
    public var defenseId: String?

    public var domain: String?

    public var httpsExt: String?

    public var instanceIds: [String]?

    public var resourceGroupId: String?

    public var rsType: Int32?

    public var rules: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defenseId != nil {
            map["DefenseId"] = self.defenseId!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.httpsExt != nil {
            map["HttpsExt"] = self.httpsExt!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.rsType != nil {
            map["RsType"] = self.rsType!
        }
        if self.rules != nil {
            map["Rules"] = self.rules!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefenseId"] as? String {
            self.defenseId = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["HttpsExt"] as? String {
            self.httpsExt = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RsType"] as? Int32 {
            self.rsType = value
        }
        if let value = dict["Rules"] as? String {
            self.rules = value
        }
    }
}

public class CreateWebRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class CreateWebRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWebRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateWebRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAsyncTaskRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public var taskId: Int32?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["TaskId"] as? Int32 {
            self.taskId = value
        }
    }
}

public class DeleteAsyncTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteAsyncTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAsyncTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAsyncTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAutoCcBlacklistRequest : Tea.TeaModel {
    public var blacklist: String?

    public var instanceId: String?

    public var queryType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blacklist != nil {
            map["Blacklist"] = self.blacklist!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Blacklist"] as? String {
            self.blacklist = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
    }
}

public class DeleteAutoCcBlacklistResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteAutoCcBlacklistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAutoCcBlacklistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAutoCcBlacklistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAutoCcWhitelistRequest : Tea.TeaModel {
    public var instanceId: String?

    public var whitelist: String?

    public override init() {
        super.init()
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
        if self.whitelist != nil {
            map["Whitelist"] = self.whitelist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Whitelist"] as? String {
            self.whitelist = value
        }
    }
}

public class DeleteAutoCcWhitelistResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteAutoCcWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAutoCcWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAutoCcWhitelistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDomainResourceRequest : Tea.TeaModel {
    public var domain: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
    }
}

public class DeleteDomainResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteDomainResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDomainResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDomainResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteNetworkRuleRequest : Tea.TeaModel {
    public var networkRule: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkRule != nil {
            map["NetworkRule"] = self.networkRule!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkRule"] as? String {
            self.networkRule = value
        }
    }
}

public class DeleteNetworkRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteNetworkRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNetworkRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteNetworkRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePortRequest : Tea.TeaModel {
    public var backendPort: String?

    public var frontendPort: String?

    public var frontendProtocol: String?

    public var instanceId: String?

    public var realServers: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendPort != nil {
            map["BackendPort"] = self.backendPort!
        }
        if self.frontendPort != nil {
            map["FrontendPort"] = self.frontendPort!
        }
        if self.frontendProtocol != nil {
            map["FrontendProtocol"] = self.frontendProtocol!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.realServers != nil {
            map["RealServers"] = self.realServers!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendPort"] as? String {
            self.backendPort = value
        }
        if let value = dict["FrontendPort"] as? String {
            self.frontendPort = value
        }
        if let value = dict["FrontendProtocol"] as? String {
            self.frontendProtocol = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RealServers"] as? [String] {
            self.realServers = value
        }
    }
}

public class DeletePortResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeletePortResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePortResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeletePortResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSceneDefensePolicyRequest : Tea.TeaModel {
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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
    }
}

public class DeleteSceneDefensePolicyResponseBody : Tea.TeaModel {
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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteSceneDefensePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSceneDefensePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteSceneDefensePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSchedulerRuleRequest : Tea.TeaModel {
    public var resourceGroupId: String?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
    }
}

public class DeleteSchedulerRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteSchedulerRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSchedulerRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteSchedulerRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceIds: [String]?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceIds"] as? [String] {
            self.resourceIds = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? [String] {
            self.tagKey = value
        }
    }
}

public class DeleteTagResourcesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWebCCRuleRequest : Tea.TeaModel {
    public var domain: String?

    public var name: String?

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
        if self.name != nil {
            map["Name"] = self.name!
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
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DeleteWebCCRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteWebCCRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWebCCRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteWebCCRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWebCCRuleV2Request : Tea.TeaModel {
    public var domain: String?

    public var owner: String?

    public var ruleNames: String?

    public override init() {
        super.init()
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
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.ruleNames != nil {
            map["RuleNames"] = self.ruleNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["RuleNames"] as? String {
            self.ruleNames = value
        }
    }
}

public class DeleteWebCCRuleV2ResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteWebCCRuleV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWebCCRuleV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteWebCCRuleV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWebCacheCustomRuleRequest : Tea.TeaModel {
    public var domain: String?

    public var resourceGroupId: String?

    public var ruleNames: [String]?

    public override init() {
        super.init()
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.ruleNames != nil {
            map["RuleNames"] = self.ruleNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RuleNames"] as? [String] {
            self.ruleNames = value
        }
    }
}

public class DeleteWebCacheCustomRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteWebCacheCustomRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWebCacheCustomRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteWebCacheCustomRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWebPreciseAccessRuleRequest : Tea.TeaModel {
    public var domain: String?

    public var resourceGroupId: String?

    public var ruleNames: [String]?

    public override init() {
        super.init()
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.ruleNames != nil {
            map["RuleNames"] = self.ruleNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RuleNames"] as? [String] {
            self.ruleNames = value
        }
    }
}

public class DeleteWebPreciseAccessRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteWebPreciseAccessRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWebPreciseAccessRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteWebPreciseAccessRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWebRuleRequest : Tea.TeaModel {
    public var domain: String?

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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DeleteWebRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteWebRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWebRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteWebRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAsyncTasksRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeAsyncTasksResponseBody : Tea.TeaModel {
    public class AsyncTasks : Tea.TeaModel {
        public var endTime: Int64?

        public var startTime: Int64?

        public var taskId: Int64?

        public var taskParams: String?

        public var taskResult: String?

        public var taskStatus: Int32?

        public var taskType: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskParams != nil {
                map["TaskParams"] = self.taskParams!
            }
            if self.taskResult != nil {
                map["TaskResult"] = self.taskResult!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["TaskId"] as? Int64 {
                self.taskId = value
            }
            if let value = dict["TaskParams"] as? String {
                self.taskParams = value
            }
            if let value = dict["TaskResult"] as? String {
                self.taskResult = value
            }
            if let value = dict["TaskStatus"] as? Int32 {
                self.taskStatus = value
            }
            if let value = dict["TaskType"] as? Int32 {
                self.taskType = value
            }
        }
    }
    public var asyncTasks: [DescribeAsyncTasksResponseBody.AsyncTasks]?

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
        if self.asyncTasks != nil {
            var tmp : [Any] = []
            for k in self.asyncTasks! {
                tmp.append(k.toMap())
            }
            map["AsyncTasks"] = tmp
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
        if let value = dict["AsyncTasks"] as? [Any?] {
            var tmp : [DescribeAsyncTasksResponseBody.AsyncTasks] = []
            for v in value {
                if v != nil {
                    var model = DescribeAsyncTasksResponseBody.AsyncTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.asyncTasks = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeAsyncTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAsyncTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAsyncTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAttackAnalysisMaxQpsRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var ip: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeAttackAnalysisMaxQpsResponseBody : Tea.TeaModel {
    public var qps: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.qps != nil {
            map["Qps"] = self.qps!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Qps"] as? Int64 {
            self.qps = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeAttackAnalysisMaxQpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAttackAnalysisMaxQpsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAttackAnalysisMaxQpsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAutoCcBlacklistRequest : Tea.TeaModel {
    public var instanceId: String?

    public var keyWord: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryType: String?

    public override init() {
        super.init()
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
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["KeyWord"] as? String {
            self.keyWord = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
    }
}

public class DescribeAutoCcBlacklistResponseBody : Tea.TeaModel {
    public class AutoCcBlacklist : Tea.TeaModel {
        public var destIp: String?

        public var endTime: Int64?

        public var sourceIp: String?

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
            if self.destIp != nil {
                map["DestIp"] = self.destIp!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.sourceIp != nil {
                map["SourceIp"] = self.sourceIp!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DestIp"] as? String {
                self.destIp = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["SourceIp"] as? String {
                self.sourceIp = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var autoCcBlacklist: [DescribeAutoCcBlacklistResponseBody.AutoCcBlacklist]?

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
        if self.autoCcBlacklist != nil {
            var tmp : [Any] = []
            for k in self.autoCcBlacklist! {
                tmp.append(k.toMap())
            }
            map["AutoCcBlacklist"] = tmp
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
        if let value = dict["AutoCcBlacklist"] as? [Any?] {
            var tmp : [DescribeAutoCcBlacklistResponseBody.AutoCcBlacklist] = []
            for v in value {
                if v != nil {
                    var model = DescribeAutoCcBlacklistResponseBody.AutoCcBlacklist()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.autoCcBlacklist = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeAutoCcBlacklistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAutoCcBlacklistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAutoCcBlacklistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAutoCcListCountRequest : Tea.TeaModel {
    public var instanceId: String?

    public var queryType: String?

    public override init() {
        super.init()
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
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
    }
}

public class DescribeAutoCcListCountResponseBody : Tea.TeaModel {
    public var blackCount: Int32?

    public var requestId: String?

    public var whiteCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackCount != nil {
            map["BlackCount"] = self.blackCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.whiteCount != nil {
            map["WhiteCount"] = self.whiteCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BlackCount"] as? Int32 {
            self.blackCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WhiteCount"] as? Int32 {
            self.whiteCount = value
        }
    }
}

public class DescribeAutoCcListCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAutoCcListCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAutoCcListCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAutoCcWhitelistRequest : Tea.TeaModel {
    public var instanceId: String?

    public var keyWord: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["KeyWord"] as? String {
            self.keyWord = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeAutoCcWhitelistResponseBody : Tea.TeaModel {
    public class AutoCcWhitelist : Tea.TeaModel {
        public var destIp: String?

        public var endTime: Int64?

        public var sourceIp: String?

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
            if self.destIp != nil {
                map["DestIp"] = self.destIp!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.sourceIp != nil {
                map["SourceIp"] = self.sourceIp!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DestIp"] as? String {
                self.destIp = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["SourceIp"] as? String {
                self.sourceIp = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var autoCcWhitelist: [DescribeAutoCcWhitelistResponseBody.AutoCcWhitelist]?

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
        if self.autoCcWhitelist != nil {
            var tmp : [Any] = []
            for k in self.autoCcWhitelist! {
                tmp.append(k.toMap())
            }
            map["AutoCcWhitelist"] = tmp
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
        if let value = dict["AutoCcWhitelist"] as? [Any?] {
            var tmp : [DescribeAutoCcWhitelistResponseBody.AutoCcWhitelist] = []
            for v in value {
                if v != nil {
                    var model = DescribeAutoCcWhitelistResponseBody.AutoCcWhitelist()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.autoCcWhitelist = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeAutoCcWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAutoCcWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAutoCcWhitelistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackSourceCidrRequest : Tea.TeaModel {
    public var ipVersion: String?

    public var line: String?

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
        if self.ipVersion != nil {
            map["IpVersion"] = self.ipVersion!
        }
        if self.line != nil {
            map["Line"] = self.line!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IpVersion"] as? String {
            self.ipVersion = value
        }
        if let value = dict["Line"] as? String {
            self.line = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeBackSourceCidrResponseBody : Tea.TeaModel {
    public var cidrs: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cidrs != nil {
            map["Cidrs"] = self.cidrs!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cidrs"] as? [String] {
            self.cidrs = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeBackSourceCidrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackSourceCidrResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeBackSourceCidrResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBlackholeStatusRequest : Tea.TeaModel {
    public var instanceIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
    }
}

public class DescribeBlackholeStatusResponseBody : Tea.TeaModel {
    public class BlackholeStatus : Tea.TeaModel {
        public var blackStatus: String?

        public var endTime: Int64?

        public var ip: String?

        public var startTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blackStatus != nil {
                map["BlackStatus"] = self.blackStatus!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BlackStatus"] as? String {
                self.blackStatus = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
        }
    }
    public var blackholeStatus: [DescribeBlackholeStatusResponseBody.BlackholeStatus]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackholeStatus != nil {
            var tmp : [Any] = []
            for k in self.blackholeStatus! {
                tmp.append(k.toMap())
            }
            map["BlackholeStatus"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BlackholeStatus"] as? [Any?] {
            var tmp : [DescribeBlackholeStatusResponseBody.BlackholeStatus] = []
            for v in value {
                if v != nil {
                    var model = DescribeBlackholeStatusResponseBody.BlackholeStatus()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.blackholeStatus = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeBlackholeStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBlackholeStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeBlackholeStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBlockStatusRequest : Tea.TeaModel {
    public var instanceIds: [String]?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeBlockStatusResponseBody : Tea.TeaModel {
    public class StatusList : Tea.TeaModel {
        public class BlockStatusList : Tea.TeaModel {
            public var blockStatus: String?

            public var endTime: Int64?

            public var line: String?

            public var startTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.blockStatus != nil {
                    map["BlockStatus"] = self.blockStatus!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.line != nil {
                    map["Line"] = self.line!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BlockStatus"] as? String {
                    self.blockStatus = value
                }
                if let value = dict["EndTime"] as? Int64 {
                    self.endTime = value
                }
                if let value = dict["Line"] as? String {
                    self.line = value
                }
                if let value = dict["StartTime"] as? Int64 {
                    self.startTime = value
                }
            }
        }
        public var blockStatusList: [DescribeBlockStatusResponseBody.StatusList.BlockStatusList]?

        public var ip: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blockStatusList != nil {
                var tmp : [Any] = []
                for k in self.blockStatusList! {
                    tmp.append(k.toMap())
                }
                map["BlockStatusList"] = tmp
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BlockStatusList"] as? [Any?] {
                var tmp : [DescribeBlockStatusResponseBody.StatusList.BlockStatusList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeBlockStatusResponseBody.StatusList.BlockStatusList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.blockStatusList = tmp
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
        }
    }
    public var requestId: String?

    public var statusList: [DescribeBlockStatusResponseBody.StatusList]?

    public override init() {
        super.init()
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
        if self.statusList != nil {
            var tmp : [Any] = []
            for k in self.statusList! {
                tmp.append(k.toMap())
            }
            map["StatusList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StatusList"] as? [Any?] {
            var tmp : [DescribeBlockStatusResponseBody.StatusList] = []
            for v in value {
                if v != nil {
                    var model = DescribeBlockStatusResponseBody.StatusList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.statusList = tmp
        }
    }
}

public class DescribeBlockStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBlockStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeBlockStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCdnLinkageRulesRequest : Tea.TeaModel {
    public var domain: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeCdnLinkageRulesResponseBody : Tea.TeaModel {
    public class SchedulerRules : Tea.TeaModel {
        public class CdnLinkageRule : Tea.TeaModel {
            public class Param : Tea.TeaModel {
                public class ParamData : Tea.TeaModel {
                    public var accessQps: Int64?

                    public var upstreamQps: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.accessQps != nil {
                            map["AccessQps"] = self.accessQps!
                        }
                        if self.upstreamQps != nil {
                            map["UpstreamQps"] = self.upstreamQps!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AccessQps"] as? Int64 {
                            self.accessQps = value
                        }
                        if let value = dict["UpstreamQps"] as? Int64 {
                            self.upstreamQps = value
                        }
                    }
                }
                public var paramData: DescribeCdnLinkageRulesResponseBody.SchedulerRules.CdnLinkageRule.Param.ParamData?

                public var paramType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.paramData?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.paramData != nil {
                        map["ParamData"] = self.paramData?.toMap()
                    }
                    if self.paramType != nil {
                        map["ParamType"] = self.paramType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ParamData"] as? [String: Any?] {
                        var model = DescribeCdnLinkageRulesResponseBody.SchedulerRules.CdnLinkageRule.Param.ParamData()
                        model.fromMap(value)
                        self.paramData = model
                    }
                    if let value = dict["ParamType"] as? String {
                        self.paramType = value
                    }
                }
            }
            public class Rules : Tea.TeaModel {
                public var priority: Int32?

                public var regionId: String?

                public var status: Int32?

                public var type: String?

                public var value: String?

                public var valueType: Int32?

                public override init() {
                    super.init()
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
                    if self.regionId != nil {
                        map["RegionId"] = self.regionId!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
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
                    if let value = dict["Priority"] as? Int32 {
                        self.priority = value
                    }
                    if let value = dict["RegionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["Status"] as? Int32 {
                        self.status = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
                    }
                    if let value = dict["ValueType"] as? Int32 {
                        self.valueType = value
                    }
                }
            }
            public var cname: String?

            public var param: DescribeCdnLinkageRulesResponseBody.SchedulerRules.CdnLinkageRule.Param?

            public var ruleName: String?

            public var rules: [DescribeCdnLinkageRulesResponseBody.SchedulerRules.CdnLinkageRule.Rules]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.param?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cname != nil {
                    map["Cname"] = self.cname!
                }
                if self.param != nil {
                    map["Param"] = self.param?.toMap()
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
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
                if let value = dict["Cname"] as? String {
                    self.cname = value
                }
                if let value = dict["Param"] as? [String: Any?] {
                    var model = DescribeCdnLinkageRulesResponseBody.SchedulerRules.CdnLinkageRule.Param()
                    model.fromMap(value)
                    self.param = model
                }
                if let value = dict["RuleName"] as? String {
                    self.ruleName = value
                }
                if let value = dict["Rules"] as? [Any?] {
                    var tmp : [DescribeCdnLinkageRulesResponseBody.SchedulerRules.CdnLinkageRule.Rules] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeCdnLinkageRulesResponseBody.SchedulerRules.CdnLinkageRule.Rules()
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
        public var cdnLinkageEnable: Int32?

        public var cdnLinkageRule: DescribeCdnLinkageRulesResponseBody.SchedulerRules.CdnLinkageRule?

        public var domain: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cdnLinkageRule?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cdnLinkageEnable != nil {
                map["CdnLinkageEnable"] = self.cdnLinkageEnable!
            }
            if self.cdnLinkageRule != nil {
                map["CdnLinkageRule"] = self.cdnLinkageRule?.toMap()
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CdnLinkageEnable"] as? Int32 {
                self.cdnLinkageEnable = value
            }
            if let value = dict["CdnLinkageRule"] as? [String: Any?] {
                var model = DescribeCdnLinkageRulesResponseBody.SchedulerRules.CdnLinkageRule()
                model.fromMap(value)
                self.cdnLinkageRule = model
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
        }
    }
    public var requestId: String?

    public var schedulerRules: [DescribeCdnLinkageRulesResponseBody.SchedulerRules]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.schedulerRules != nil {
            var tmp : [Any] = []
            for k in self.schedulerRules! {
                tmp.append(k.toMap())
            }
            map["SchedulerRules"] = tmp
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
        if let value = dict["SchedulerRules"] as? [Any?] {
            var tmp : [DescribeCdnLinkageRulesResponseBody.SchedulerRules] = []
            for v in value {
                if v != nil {
                    var model = DescribeCdnLinkageRulesResponseBody.SchedulerRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.schedulerRules = tmp
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class DescribeCdnLinkageRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCdnLinkageRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeCdnLinkageRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCertsRequest : Tea.TeaModel {
    public var domain: String?

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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeCertsResponseBody : Tea.TeaModel {
    public class Certs : Tea.TeaModel {
        public var certIdentifier: String?

        public var common: String?

        public var domainRelated: Bool?

        public var endDate: String?

        public var id: Int32?

        public var issuer: String?

        public var name: String?

        public var startDate: String?

        public override init() {
            super.init()
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
                map["CertIdentifier"] = self.certIdentifier!
            }
            if self.common != nil {
                map["Common"] = self.common!
            }
            if self.domainRelated != nil {
                map["DomainRelated"] = self.domainRelated!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.issuer != nil {
                map["Issuer"] = self.issuer!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertIdentifier"] as? String {
                self.certIdentifier = value
            }
            if let value = dict["Common"] as? String {
                self.common = value
            }
            if let value = dict["DomainRelated"] as? Bool {
                self.domainRelated = value
            }
            if let value = dict["EndDate"] as? String {
                self.endDate = value
            }
            if let value = dict["Id"] as? Int32 {
                self.id = value
            }
            if let value = dict["Issuer"] as? String {
                self.issuer = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["StartDate"] as? String {
                self.startDate = value
            }
        }
    }
    public var certs: [DescribeCertsResponseBody.Certs]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certs != nil {
            var tmp : [Any] = []
            for k in self.certs! {
                tmp.append(k.toMap())
            }
            map["Certs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Certs"] as? [Any?] {
            var tmp : [DescribeCertsResponseBody.Certs] = []
            for v in value {
                if v != nil {
                    var model = DescribeCertsResponseBody.Certs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.certs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeCertsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCertsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeCertsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCnameReusesRequest : Tea.TeaModel {
    public var domains: [String]?

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
        if self.domains != nil {
            map["Domains"] = self.domains!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domains"] as? [String] {
            self.domains = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeCnameReusesResponseBody : Tea.TeaModel {
    public class CnameReuses : Tea.TeaModel {
        public var cname: String?

        public var domain: String?

        public var enable: Int32?

        public override init() {
            super.init()
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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Cname"] as? String {
                self.cname = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["Enable"] as? Int32 {
                self.enable = value
            }
        }
    }
    public var cnameReuses: [DescribeCnameReusesResponseBody.CnameReuses]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cnameReuses != nil {
            var tmp : [Any] = []
            for k in self.cnameReuses! {
                tmp.append(k.toMap())
            }
            map["CnameReuses"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CnameReuses"] as? [Any?] {
            var tmp : [DescribeCnameReusesResponseBody.CnameReuses] = []
            for v in value {
                if v != nil {
                    var model = DescribeCnameReusesResponseBody.CnameReuses()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.cnameReuses = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeCnameReusesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCnameReusesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeCnameReusesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDDoSEventsRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var instanceIds: [String]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDDoSEventsResponseBody : Tea.TeaModel {
    public class DDoSEvents : Tea.TeaModel {
        public var bps: Int64?

        public var endTime: Int64?

        public var eventType: String?

        public var ip: String?

        public var port: String?

        public var pps: Int64?

        public var region: String?

        public var startTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bps != nil {
                map["Bps"] = self.bps!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.eventType != nil {
                map["EventType"] = self.eventType!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.pps != nil {
                map["Pps"] = self.pps!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bps"] as? Int64 {
                self.bps = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["EventType"] as? String {
                self.eventType = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
            if let value = dict["Pps"] as? Int64 {
                self.pps = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
        }
    }
    public var DDoSEvents: [DescribeDDoSEventsResponseBody.DDoSEvents]?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DDoSEvents != nil {
            var tmp : [Any] = []
            for k in self.DDoSEvents! {
                tmp.append(k.toMap())
            }
            map["DDoSEvents"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DDoSEvents"] as? [Any?] {
            var tmp : [DescribeDDoSEventsResponseBody.DDoSEvents] = []
            for v in value {
                if v != nil {
                    var model = DescribeDDoSEventsResponseBody.DDoSEvents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.DDoSEvents = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
        }
    }
}

public class DescribeDDoSEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDDoSEventsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDDoSEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDDosAllEventListRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var eventType: String?

    public var ip: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDDosAllEventListResponseBody : Tea.TeaModel {
    public class AttackEvents : Tea.TeaModel {
        public var area: String?

        public var endTime: Int64?

        public var eventType: String?

        public var ip: String?

        public var mbps: Int64?

        public var port: String?

        public var pps: Int64?

        public var startTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.area != nil {
                map["Area"] = self.area!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.eventType != nil {
                map["EventType"] = self.eventType!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.mbps != nil {
                map["Mbps"] = self.mbps!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.pps != nil {
                map["Pps"] = self.pps!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Area"] as? String {
                self.area = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["EventType"] as? String {
                self.eventType = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["Mbps"] as? Int64 {
                self.mbps = value
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
            if let value = dict["Pps"] as? Int64 {
                self.pps = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
        }
    }
    public var attackEvents: [DescribeDDosAllEventListResponseBody.AttackEvents]?

    public var requestId: String?

    public var total: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attackEvents != nil {
            var tmp : [Any] = []
            for k in self.attackEvents! {
                tmp.append(k.toMap())
            }
            map["AttackEvents"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AttackEvents"] as? [Any?] {
            var tmp : [DescribeDDosAllEventListResponseBody.AttackEvents] = []
            for v in value {
                if v != nil {
                    var model = DescribeDDosAllEventListResponseBody.AttackEvents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attackEvents = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
        }
    }
}

public class DescribeDDosAllEventListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDDosAllEventListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDDosAllEventListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDDosEventAreaRequest : Tea.TeaModel {
    public var eventType: String?

    public var ip: String?

    public var range: Int64?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.range != nil {
            map["Range"] = self.range!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["Range"] as? Int64 {
            self.range = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDDosEventAreaResponseBody : Tea.TeaModel {
    public class Areas : Tea.TeaModel {
        public var area: String?

        public var inPkts: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.area != nil {
                map["Area"] = self.area!
            }
            if self.inPkts != nil {
                map["InPkts"] = self.inPkts!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Area"] as? String {
                self.area = value
            }
            if let value = dict["InPkts"] as? Int64 {
                self.inPkts = value
            }
        }
    }
    public var areas: [DescribeDDosEventAreaResponseBody.Areas]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.areas != nil {
            var tmp : [Any] = []
            for k in self.areas! {
                tmp.append(k.toMap())
            }
            map["Areas"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Areas"] as? [Any?] {
            var tmp : [DescribeDDosEventAreaResponseBody.Areas] = []
            for v in value {
                if v != nil {
                    var model = DescribeDDosEventAreaResponseBody.Areas()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.areas = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDDosEventAreaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDDosEventAreaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDDosEventAreaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDDosEventAttackTypeRequest : Tea.TeaModel {
    public var eventType: String?

    public var ip: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDDosEventAttackTypeResponseBody : Tea.TeaModel {
    public class AttackTypes : Tea.TeaModel {
        public var attackType: String?

        public var inPkts: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attackType != nil {
                map["AttackType"] = self.attackType!
            }
            if self.inPkts != nil {
                map["InPkts"] = self.inPkts!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttackType"] as? String {
                self.attackType = value
            }
            if let value = dict["InPkts"] as? Int64 {
                self.inPkts = value
            }
        }
    }
    public var attackTypes: [DescribeDDosEventAttackTypeResponseBody.AttackTypes]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attackTypes != nil {
            var tmp : [Any] = []
            for k in self.attackTypes! {
                tmp.append(k.toMap())
            }
            map["AttackTypes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AttackTypes"] as? [Any?] {
            var tmp : [DescribeDDosEventAttackTypeResponseBody.AttackTypes] = []
            for v in value {
                if v != nil {
                    var model = DescribeDDosEventAttackTypeResponseBody.AttackTypes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attackTypes = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDDosEventAttackTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDDosEventAttackTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDDosEventAttackTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDDosEventIspRequest : Tea.TeaModel {
    public var eventType: String?

    public var ip: String?

    public var range: Int64?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.range != nil {
            map["Range"] = self.range!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["Range"] as? Int64 {
            self.range = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDDosEventIspResponseBody : Tea.TeaModel {
    public class Isps : Tea.TeaModel {
        public var inPkts: Int64?

        public var isp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.inPkts != nil {
                map["InPkts"] = self.inPkts!
            }
            if self.isp != nil {
                map["Isp"] = self.isp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InPkts"] as? Int64 {
                self.inPkts = value
            }
            if let value = dict["Isp"] as? String {
                self.isp = value
            }
        }
    }
    public var isps: [DescribeDDosEventIspResponseBody.Isps]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isps != nil {
            var tmp : [Any] = []
            for k in self.isps! {
                tmp.append(k.toMap())
            }
            map["Isps"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Isps"] as? [Any?] {
            var tmp : [DescribeDDosEventIspResponseBody.Isps] = []
            for v in value {
                if v != nil {
                    var model = DescribeDDosEventIspResponseBody.Isps()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.isps = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDDosEventIspResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDDosEventIspResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDDosEventIspResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDDosEventMaxRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var ip: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDDosEventMaxResponseBody : Tea.TeaModel {
    public var cps: Int64?

    public var mbps: Int64?

    public var qps: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cps != nil {
            map["Cps"] = self.cps!
        }
        if self.mbps != nil {
            map["Mbps"] = self.mbps!
        }
        if self.qps != nil {
            map["Qps"] = self.qps!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cps"] as? Int64 {
            self.cps = value
        }
        if let value = dict["Mbps"] as? Int64 {
            self.mbps = value
        }
        if let value = dict["Qps"] as? Int64 {
            self.qps = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDDosEventMaxResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDDosEventMaxResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDDosEventMaxResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDDosEventSrcIpRequest : Tea.TeaModel {
    public var eventType: String?

    public var ip: String?

    public var range: Int64?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.range != nil {
            map["Range"] = self.range!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["Range"] as? Int64 {
            self.range = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDDosEventSrcIpResponseBody : Tea.TeaModel {
    public class Ips : Tea.TeaModel {
        public var areaId: String?

        public var isp: String?

        public var srcIp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.areaId != nil {
                map["AreaId"] = self.areaId!
            }
            if self.isp != nil {
                map["Isp"] = self.isp!
            }
            if self.srcIp != nil {
                map["SrcIp"] = self.srcIp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AreaId"] as? String {
                self.areaId = value
            }
            if let value = dict["Isp"] as? String {
                self.isp = value
            }
            if let value = dict["SrcIp"] as? String {
                self.srcIp = value
            }
        }
    }
    public var ips: [DescribeDDosEventSrcIpResponseBody.Ips]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ips != nil {
            var tmp : [Any] = []
            for k in self.ips! {
                tmp.append(k.toMap())
            }
            map["Ips"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ips"] as? [Any?] {
            var tmp : [DescribeDDosEventSrcIpResponseBody.Ips] = []
            for v in value {
                if v != nil {
                    var model = DescribeDDosEventSrcIpResponseBody.Ips()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ips = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDDosEventSrcIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDDosEventSrcIpResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDDosEventSrcIpResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDefenseCountStatisticsRequest : Tea.TeaModel {
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeDefenseCountStatisticsResponseBody : Tea.TeaModel {
    public class DefenseCountStatistics : Tea.TeaModel {
        public var defenseCountTotalUsageOfCurrentMonth: Int32?

        public var flowPackCountRemain: Int32?

        public var maxUsableDefenseCountCurrentMonth: Int32?

        public var secHighSpeedCountRemain: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.defenseCountTotalUsageOfCurrentMonth != nil {
                map["DefenseCountTotalUsageOfCurrentMonth"] = self.defenseCountTotalUsageOfCurrentMonth!
            }
            if self.flowPackCountRemain != nil {
                map["FlowPackCountRemain"] = self.flowPackCountRemain!
            }
            if self.maxUsableDefenseCountCurrentMonth != nil {
                map["MaxUsableDefenseCountCurrentMonth"] = self.maxUsableDefenseCountCurrentMonth!
            }
            if self.secHighSpeedCountRemain != nil {
                map["SecHighSpeedCountRemain"] = self.secHighSpeedCountRemain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DefenseCountTotalUsageOfCurrentMonth"] as? Int32 {
                self.defenseCountTotalUsageOfCurrentMonth = value
            }
            if let value = dict["FlowPackCountRemain"] as? Int32 {
                self.flowPackCountRemain = value
            }
            if let value = dict["MaxUsableDefenseCountCurrentMonth"] as? Int32 {
                self.maxUsableDefenseCountCurrentMonth = value
            }
            if let value = dict["SecHighSpeedCountRemain"] as? Int32 {
                self.secHighSpeedCountRemain = value
            }
        }
    }
    public var defenseCountStatistics: DescribeDefenseCountStatisticsResponseBody.DefenseCountStatistics?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.defenseCountStatistics?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defenseCountStatistics != nil {
            map["DefenseCountStatistics"] = self.defenseCountStatistics?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefenseCountStatistics"] as? [String: Any?] {
            var model = DescribeDefenseCountStatisticsResponseBody.DefenseCountStatistics()
            model.fromMap(value)
            self.defenseCountStatistics = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDefenseCountStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDefenseCountStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDefenseCountStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDefenseRecordsRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDefenseRecordsResponseBody : Tea.TeaModel {
    public class DefenseRecords : Tea.TeaModel {
        public var attackPeak: Int64?

        public var endTime: Int64?

        public var eventCount: Int32?

        public var instanceId: String?

        public var startTime: Int64?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attackPeak != nil {
                map["AttackPeak"] = self.attackPeak!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.eventCount != nil {
                map["EventCount"] = self.eventCount!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttackPeak"] as? Int64 {
                self.attackPeak = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["EventCount"] as? Int32 {
                self.eventCount = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var defenseRecords: [DescribeDefenseRecordsResponseBody.DefenseRecords]?

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
        if self.defenseRecords != nil {
            var tmp : [Any] = []
            for k in self.defenseRecords! {
                tmp.append(k.toMap())
            }
            map["DefenseRecords"] = tmp
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
        if let value = dict["DefenseRecords"] as? [Any?] {
            var tmp : [DescribeDefenseRecordsResponseBody.DefenseRecords] = []
            for v in value {
                if v != nil {
                    var model = DescribeDefenseRecordsResponseBody.DefenseRecords()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.defenseRecords = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeDefenseRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDefenseRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDefenseRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDestinationPortEventRequest : Tea.TeaModel {
    public var eventType: String?

    public var ip: String?

    public var range: Int64?

    public var region: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.range != nil {
            map["Range"] = self.range!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["Range"] as? Int64 {
            self.range = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDestinationPortEventResponseBody : Tea.TeaModel {
    public class PortList : Tea.TeaModel {
        public var dstPort: String?

        public var inPkts: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dstPort != nil {
                map["DstPort"] = self.dstPort!
            }
            if self.inPkts != nil {
                map["InPkts"] = self.inPkts!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DstPort"] as? String {
                self.dstPort = value
            }
            if let value = dict["InPkts"] as? Int64 {
                self.inPkts = value
            }
        }
    }
    public var portList: [DescribeDestinationPortEventResponseBody.PortList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.portList != nil {
            var tmp : [Any] = []
            for k in self.portList! {
                tmp.append(k.toMap())
            }
            map["PortList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PortList"] as? [Any?] {
            var tmp : [DescribeDestinationPortEventResponseBody.PortList] = []
            for v in value {
                if v != nil {
                    var model = DescribeDestinationPortEventResponseBody.PortList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.portList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDestinationPortEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDestinationPortEventResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDestinationPortEventResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainAttackEventsRequest : Tea.TeaModel {
    public var domain: String?

    public var endTime: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDomainAttackEventsResponseBody : Tea.TeaModel {
    public class DomainAttackEvents : Tea.TeaModel {
        public var domain: String?

        public var endTime: Int64?

        public var maxQps: Int64?

        public var startTime: Int64?

        public override init() {
            super.init()
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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.maxQps != nil {
                map["MaxQps"] = self.maxQps!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["MaxQps"] as? Int64 {
                self.maxQps = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
        }
    }
    public var domainAttackEvents: [DescribeDomainAttackEventsResponseBody.DomainAttackEvents]?

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
        if self.domainAttackEvents != nil {
            var tmp : [Any] = []
            for k in self.domainAttackEvents! {
                tmp.append(k.toMap())
            }
            map["DomainAttackEvents"] = tmp
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
        if let value = dict["DomainAttackEvents"] as? [Any?] {
            var tmp : [DescribeDomainAttackEventsResponseBody.DomainAttackEvents] = []
            for v in value {
                if v != nil {
                    var model = DescribeDomainAttackEventsResponseBody.DomainAttackEvents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.domainAttackEvents = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeDomainAttackEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainAttackEventsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainAttackEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainBpsRequest : Tea.TeaModel {
    public var domain: String?

    public var endTime: Int64?

    public var interval: Int64?

    public var region: String?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Interval"] as? Int64 {
            self.interval = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDomainBpsResponseBody : Tea.TeaModel {
    public class DomainBps : Tea.TeaModel {
        public var inBps: Int64?

        public var index: Int64?

        public var outBps: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.inBps != nil {
                map["InBps"] = self.inBps!
            }
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.outBps != nil {
                map["OutBps"] = self.outBps!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InBps"] as? Int64 {
                self.inBps = value
            }
            if let value = dict["Index"] as? Int64 {
                self.index = value
            }
            if let value = dict["OutBps"] as? Int64 {
                self.outBps = value
            }
        }
    }
    public var domainBps: [DescribeDomainBpsResponseBody.DomainBps]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainBps != nil {
            var tmp : [Any] = []
            for k in self.domainBps! {
                tmp.append(k.toMap())
            }
            map["DomainBps"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainBps"] as? [Any?] {
            var tmp : [DescribeDomainBpsResponseBody.DomainBps] = []
            for v in value {
                if v != nil {
                    var model = DescribeDomainBpsResponseBody.DomainBps()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.domainBps = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDomainBpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainBpsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainBpsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainCcProtectSwitchRequest : Tea.TeaModel {
    public var domains: [String]?

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
        if self.domains != nil {
            map["Domains"] = self.domains!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domains"] as? [String] {
            self.domains = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeDomainCcProtectSwitchResponseBody : Tea.TeaModel {
    public class ProtectSwitchList : Tea.TeaModel {
        public var aiMode: String?

        public var aiRuleEnable: Int32?

        public var aiTemplate: String?

        public var blackWhiteListEnable: Int32?

        public var ccCustomRuleEnable: Int32?

        public var ccEnable: Int32?

        public var ccGlobalSwitch: String?

        public var ccTemplate: String?

        public var domain: String?

        public var preciseRuleEnable: Int32?

        public var regionBlockEnable: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aiMode != nil {
                map["AiMode"] = self.aiMode!
            }
            if self.aiRuleEnable != nil {
                map["AiRuleEnable"] = self.aiRuleEnable!
            }
            if self.aiTemplate != nil {
                map["AiTemplate"] = self.aiTemplate!
            }
            if self.blackWhiteListEnable != nil {
                map["BlackWhiteListEnable"] = self.blackWhiteListEnable!
            }
            if self.ccCustomRuleEnable != nil {
                map["CcCustomRuleEnable"] = self.ccCustomRuleEnable!
            }
            if self.ccEnable != nil {
                map["CcEnable"] = self.ccEnable!
            }
            if self.ccGlobalSwitch != nil {
                map["CcGlobalSwitch"] = self.ccGlobalSwitch!
            }
            if self.ccTemplate != nil {
                map["CcTemplate"] = self.ccTemplate!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.preciseRuleEnable != nil {
                map["PreciseRuleEnable"] = self.preciseRuleEnable!
            }
            if self.regionBlockEnable != nil {
                map["RegionBlockEnable"] = self.regionBlockEnable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AiMode"] as? String {
                self.aiMode = value
            }
            if let value = dict["AiRuleEnable"] as? Int32 {
                self.aiRuleEnable = value
            }
            if let value = dict["AiTemplate"] as? String {
                self.aiTemplate = value
            }
            if let value = dict["BlackWhiteListEnable"] as? Int32 {
                self.blackWhiteListEnable = value
            }
            if let value = dict["CcCustomRuleEnable"] as? Int32 {
                self.ccCustomRuleEnable = value
            }
            if let value = dict["CcEnable"] as? Int32 {
                self.ccEnable = value
            }
            if let value = dict["CcGlobalSwitch"] as? String {
                self.ccGlobalSwitch = value
            }
            if let value = dict["CcTemplate"] as? String {
                self.ccTemplate = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["PreciseRuleEnable"] as? Int32 {
                self.preciseRuleEnable = value
            }
            if let value = dict["RegionBlockEnable"] as? Int32 {
                self.regionBlockEnable = value
            }
        }
    }
    public var protectSwitchList: [DescribeDomainCcProtectSwitchResponseBody.ProtectSwitchList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.protectSwitchList != nil {
            var tmp : [Any] = []
            for k in self.protectSwitchList! {
                tmp.append(k.toMap())
            }
            map["ProtectSwitchList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProtectSwitchList"] as? [Any?] {
            var tmp : [DescribeDomainCcProtectSwitchResponseBody.ProtectSwitchList] = []
            for v in value {
                if v != nil {
                    var model = DescribeDomainCcProtectSwitchResponseBody.ProtectSwitchList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.protectSwitchList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDomainCcProtectSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainCcProtectSwitchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainCcProtectSwitchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainH2FingerprintRequest : Tea.TeaModel {
    public var domain: String?

    public var endTime: Int64?

    public var limit: Int64?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDomainH2FingerprintResponseBody : Tea.TeaModel {
    public class DomainH2Fp : Tea.TeaModel {
        public var domain: String?

        public var h2Fingerprint: String?

        public var pv: Int64?

        public override init() {
            super.init()
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
            if self.h2Fingerprint != nil {
                map["H2Fingerprint"] = self.h2Fingerprint!
            }
            if self.pv != nil {
                map["Pv"] = self.pv!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["H2Fingerprint"] as? String {
                self.h2Fingerprint = value
            }
            if let value = dict["Pv"] as? Int64 {
                self.pv = value
            }
        }
    }
    public var domainH2Fp: [DescribeDomainH2FingerprintResponseBody.DomainH2Fp]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainH2Fp != nil {
            var tmp : [Any] = []
            for k in self.domainH2Fp! {
                tmp.append(k.toMap())
            }
            map["DomainH2Fp"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainH2Fp"] as? [Any?] {
            var tmp : [DescribeDomainH2FingerprintResponseBody.DomainH2Fp] = []
            for v in value {
                if v != nil {
                    var model = DescribeDomainH2FingerprintResponseBody.DomainH2Fp()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.domainH2Fp = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDomainH2FingerprintResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainH2FingerprintResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainH2FingerprintResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainOverviewRequest : Tea.TeaModel {
    public var domain: String?

    public var endTime: Int64?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDomainOverviewResponseBody : Tea.TeaModel {
    public var maxHttp: Int64?

    public var maxHttps: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxHttp != nil {
            map["MaxHttp"] = self.maxHttp!
        }
        if self.maxHttps != nil {
            map["MaxHttps"] = self.maxHttps!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxHttp"] as? Int64 {
            self.maxHttp = value
        }
        if let value = dict["MaxHttps"] as? Int64 {
            self.maxHttps = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDomainOverviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainOverviewResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainOverviewResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainQPSListRequest : Tea.TeaModel {
    public var domain: String?

    public var endTime: Int64?

    public var interval: Int64?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Interval"] as? Int64 {
            self.interval = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDomainQPSListResponseBody : Tea.TeaModel {
    public class DomainQPSList : Tea.TeaModel {
        public var attackQps: Int64?

        public var cacheHits: Int64?

        public var index: Int64?

        public var maxAttackQps: Int64?

        public var maxNormalQps: Int64?

        public var maxQps: Int64?

        public var time: Int64?

        public var totalCount: Int64?

        public var totalQps: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attackQps != nil {
                map["AttackQps"] = self.attackQps!
            }
            if self.cacheHits != nil {
                map["CacheHits"] = self.cacheHits!
            }
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.maxAttackQps != nil {
                map["MaxAttackQps"] = self.maxAttackQps!
            }
            if self.maxNormalQps != nil {
                map["MaxNormalQps"] = self.maxNormalQps!
            }
            if self.maxQps != nil {
                map["MaxQps"] = self.maxQps!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.totalQps != nil {
                map["TotalQps"] = self.totalQps!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttackQps"] as? Int64 {
                self.attackQps = value
            }
            if let value = dict["CacheHits"] as? Int64 {
                self.cacheHits = value
            }
            if let value = dict["Index"] as? Int64 {
                self.index = value
            }
            if let value = dict["MaxAttackQps"] as? Int64 {
                self.maxAttackQps = value
            }
            if let value = dict["MaxNormalQps"] as? Int64 {
                self.maxNormalQps = value
            }
            if let value = dict["MaxQps"] as? Int64 {
                self.maxQps = value
            }
            if let value = dict["Time"] as? Int64 {
                self.time = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["TotalQps"] as? Int64 {
                self.totalQps = value
            }
        }
    }
    public var domainQPSList: [DescribeDomainQPSListResponseBody.DomainQPSList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainQPSList != nil {
            var tmp : [Any] = []
            for k in self.domainQPSList! {
                tmp.append(k.toMap())
            }
            map["DomainQPSList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainQPSList"] as? [Any?] {
            var tmp : [DescribeDomainQPSListResponseBody.DomainQPSList] = []
            for v in value {
                if v != nil {
                    var model = DescribeDomainQPSListResponseBody.DomainQPSList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.domainQPSList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDomainQPSListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainQPSListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainQPSListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainResourceRequest : Tea.TeaModel {
    public var domain: String?

    public var instanceIds: [String]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryDomainPattern: String?

    public override init() {
        super.init()
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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryDomainPattern != nil {
            map["QueryDomainPattern"] = self.queryDomainPattern!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueryDomainPattern"] as? String {
            self.queryDomainPattern = value
        }
    }
}

public class DescribeDomainResourceResponseBody : Tea.TeaModel {
    public class WebRules : Tea.TeaModel {
        public class ProxyTypes : Tea.TeaModel {
            public var proxyPorts: [String]?

            public var proxyType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.proxyPorts != nil {
                    map["ProxyPorts"] = self.proxyPorts!
                }
                if self.proxyType != nil {
                    map["ProxyType"] = self.proxyType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ProxyPorts"] as? [String] {
                    self.proxyPorts = value
                }
                if let value = dict["ProxyType"] as? String {
                    self.proxyType = value
                }
            }
        }
        public var blackList: [String]?

        public var ccEnabled: Bool?

        public var ccRuleEnabled: Bool?

        public var ccTemplate: String?

        public var certName: String?

        public var cname: String?

        public var customCiphers: [String]?

        public var domain: String?

        public var http2Enable: Bool?

        public var http2HttpsEnable: Bool?

        public var https2HttpEnable: Bool?

        public var httpsExt: String?

        public var instanceIds: [String]?

        public var ocspEnabled: Bool?

        public var policyMode: String?

        public var proxyEnabled: Bool?

        public var proxyTypes: [DescribeDomainResourceResponseBody.WebRules.ProxyTypes]?

        public var punishReason: Int32?

        public var punishStatus: Bool?

        public var realServers: [String]?

        public var rsType: Int32?

        public var ssl13Enabled: Bool?

        public var sslCiphers: String?

        public var sslProtocols: String?

        public var whiteList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blackList != nil {
                map["BlackList"] = self.blackList!
            }
            if self.ccEnabled != nil {
                map["CcEnabled"] = self.ccEnabled!
            }
            if self.ccRuleEnabled != nil {
                map["CcRuleEnabled"] = self.ccRuleEnabled!
            }
            if self.ccTemplate != nil {
                map["CcTemplate"] = self.ccTemplate!
            }
            if self.certName != nil {
                map["CertName"] = self.certName!
            }
            if self.cname != nil {
                map["Cname"] = self.cname!
            }
            if self.customCiphers != nil {
                map["CustomCiphers"] = self.customCiphers!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.http2Enable != nil {
                map["Http2Enable"] = self.http2Enable!
            }
            if self.http2HttpsEnable != nil {
                map["Http2HttpsEnable"] = self.http2HttpsEnable!
            }
            if self.https2HttpEnable != nil {
                map["Https2HttpEnable"] = self.https2HttpEnable!
            }
            if self.httpsExt != nil {
                map["HttpsExt"] = self.httpsExt!
            }
            if self.instanceIds != nil {
                map["InstanceIds"] = self.instanceIds!
            }
            if self.ocspEnabled != nil {
                map["OcspEnabled"] = self.ocspEnabled!
            }
            if self.policyMode != nil {
                map["PolicyMode"] = self.policyMode!
            }
            if self.proxyEnabled != nil {
                map["ProxyEnabled"] = self.proxyEnabled!
            }
            if self.proxyTypes != nil {
                var tmp : [Any] = []
                for k in self.proxyTypes! {
                    tmp.append(k.toMap())
                }
                map["ProxyTypes"] = tmp
            }
            if self.punishReason != nil {
                map["PunishReason"] = self.punishReason!
            }
            if self.punishStatus != nil {
                map["PunishStatus"] = self.punishStatus!
            }
            if self.realServers != nil {
                map["RealServers"] = self.realServers!
            }
            if self.rsType != nil {
                map["RsType"] = self.rsType!
            }
            if self.ssl13Enabled != nil {
                map["Ssl13Enabled"] = self.ssl13Enabled!
            }
            if self.sslCiphers != nil {
                map["SslCiphers"] = self.sslCiphers!
            }
            if self.sslProtocols != nil {
                map["SslProtocols"] = self.sslProtocols!
            }
            if self.whiteList != nil {
                map["WhiteList"] = self.whiteList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BlackList"] as? [String] {
                self.blackList = value
            }
            if let value = dict["CcEnabled"] as? Bool {
                self.ccEnabled = value
            }
            if let value = dict["CcRuleEnabled"] as? Bool {
                self.ccRuleEnabled = value
            }
            if let value = dict["CcTemplate"] as? String {
                self.ccTemplate = value
            }
            if let value = dict["CertName"] as? String {
                self.certName = value
            }
            if let value = dict["Cname"] as? String {
                self.cname = value
            }
            if let value = dict["CustomCiphers"] as? [String] {
                self.customCiphers = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["Http2Enable"] as? Bool {
                self.http2Enable = value
            }
            if let value = dict["Http2HttpsEnable"] as? Bool {
                self.http2HttpsEnable = value
            }
            if let value = dict["Https2HttpEnable"] as? Bool {
                self.https2HttpEnable = value
            }
            if let value = dict["HttpsExt"] as? String {
                self.httpsExt = value
            }
            if let value = dict["InstanceIds"] as? [String] {
                self.instanceIds = value
            }
            if let value = dict["OcspEnabled"] as? Bool {
                self.ocspEnabled = value
            }
            if let value = dict["PolicyMode"] as? String {
                self.policyMode = value
            }
            if let value = dict["ProxyEnabled"] as? Bool {
                self.proxyEnabled = value
            }
            if let value = dict["ProxyTypes"] as? [Any?] {
                var tmp : [DescribeDomainResourceResponseBody.WebRules.ProxyTypes] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDomainResourceResponseBody.WebRules.ProxyTypes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.proxyTypes = tmp
            }
            if let value = dict["PunishReason"] as? Int32 {
                self.punishReason = value
            }
            if let value = dict["PunishStatus"] as? Bool {
                self.punishStatus = value
            }
            if let value = dict["RealServers"] as? [String] {
                self.realServers = value
            }
            if let value = dict["RsType"] as? Int32 {
                self.rsType = value
            }
            if let value = dict["Ssl13Enabled"] as? Bool {
                self.ssl13Enabled = value
            }
            if let value = dict["SslCiphers"] as? String {
                self.sslCiphers = value
            }
            if let value = dict["SslProtocols"] as? String {
                self.sslProtocols = value
            }
            if let value = dict["WhiteList"] as? [String] {
                self.whiteList = value
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int64?

    public var webRules: [DescribeDomainResourceResponseBody.WebRules]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.webRules != nil {
            var tmp : [Any] = []
            for k in self.webRules! {
                tmp.append(k.toMap())
            }
            map["WebRules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["WebRules"] as? [Any?] {
            var tmp : [DescribeDomainResourceResponseBody.WebRules] = []
            for v in value {
                if v != nil {
                    var model = DescribeDomainResourceResponseBody.WebRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.webRules = tmp
        }
    }
}

public class DescribeDomainResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainSecurityProfileRequest : Tea.TeaModel {
    public var domain: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
    }
}

public class DescribeDomainSecurityProfileResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var globalEnable: Bool?

        public var globalMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.globalEnable != nil {
                map["GlobalEnable"] = self.globalEnable!
            }
            if self.globalMode != nil {
                map["GlobalMode"] = self.globalMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GlobalEnable"] as? Bool {
                self.globalEnable = value
            }
            if let value = dict["GlobalMode"] as? String {
                self.globalMode = value
            }
        }
    }
    public var requestId: String?

    public var result: [DescribeDomainSecurityProfileResponseBody.Result]?

    public override init() {
        super.init()
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
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [DescribeDomainSecurityProfileResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = DescribeDomainSecurityProfileResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
    }
}

public class DescribeDomainSecurityProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainSecurityProfileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainSecurityProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainStatusCodeCountRequest : Tea.TeaModel {
    public var domain: String?

    public var endTime: Int64?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDomainStatusCodeCountResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var status200: Int64?

    public var status2XX: Int64?

    public var status3XX: Int64?

    public var status403: Int64?

    public var status404: Int64?

    public var status405: Int64?

    public var status410: Int64?

    public var status499: Int64?

    public var status4XX: Int64?

    public var status501: Int64?

    public var status502: Int64?

    public var status503: Int64?

    public var status504: Int64?

    public var status5XX: Int64?

    public override init() {
        super.init()
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
        if self.status200 != nil {
            map["Status200"] = self.status200!
        }
        if self.status2XX != nil {
            map["Status2XX"] = self.status2XX!
        }
        if self.status3XX != nil {
            map["Status3XX"] = self.status3XX!
        }
        if self.status403 != nil {
            map["Status403"] = self.status403!
        }
        if self.status404 != nil {
            map["Status404"] = self.status404!
        }
        if self.status405 != nil {
            map["Status405"] = self.status405!
        }
        if self.status410 != nil {
            map["Status410"] = self.status410!
        }
        if self.status499 != nil {
            map["Status499"] = self.status499!
        }
        if self.status4XX != nil {
            map["Status4XX"] = self.status4XX!
        }
        if self.status501 != nil {
            map["Status501"] = self.status501!
        }
        if self.status502 != nil {
            map["Status502"] = self.status502!
        }
        if self.status503 != nil {
            map["Status503"] = self.status503!
        }
        if self.status504 != nil {
            map["Status504"] = self.status504!
        }
        if self.status5XX != nil {
            map["Status5XX"] = self.status5XX!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status200"] as? Int64 {
            self.status200 = value
        }
        if let value = dict["Status2XX"] as? Int64 {
            self.status2XX = value
        }
        if let value = dict["Status3XX"] as? Int64 {
            self.status3XX = value
        }
        if let value = dict["Status403"] as? Int64 {
            self.status403 = value
        }
        if let value = dict["Status404"] as? Int64 {
            self.status404 = value
        }
        if let value = dict["Status405"] as? Int64 {
            self.status405 = value
        }
        if let value = dict["Status410"] as? Int64 {
            self.status410 = value
        }
        if let value = dict["Status499"] as? Int64 {
            self.status499 = value
        }
        if let value = dict["Status4XX"] as? Int64 {
            self.status4XX = value
        }
        if let value = dict["Status501"] as? Int64 {
            self.status501 = value
        }
        if let value = dict["Status502"] as? Int64 {
            self.status502 = value
        }
        if let value = dict["Status503"] as? Int64 {
            self.status503 = value
        }
        if let value = dict["Status504"] as? Int64 {
            self.status504 = value
        }
        if let value = dict["Status5XX"] as? Int64 {
            self.status5XX = value
        }
    }
}

public class DescribeDomainStatusCodeCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainStatusCodeCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainStatusCodeCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainStatusCodeListRequest : Tea.TeaModel {
    public var domain: String?

    public var endTime: Int64?

    public var interval: Int64?

    public var queryType: String?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Interval"] as? Int64 {
            self.interval = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDomainStatusCodeListResponseBody : Tea.TeaModel {
    public class StatusCodeList : Tea.TeaModel {
        public var index: Int32?

        public var status200: Int64?

        public var status2XX: Int64?

        public var status3XX: Int64?

        public var status403: Int64?

        public var status404: Int64?

        public var status405: Int64?

        public var status410: Int64?

        public var status499: Int64?

        public var status4XX: Int64?

        public var status501: Int64?

        public var status502: Int64?

        public var status503: Int64?

        public var status504: Int64?

        public var status5XX: Int64?

        public var time: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.status200 != nil {
                map["Status200"] = self.status200!
            }
            if self.status2XX != nil {
                map["Status2XX"] = self.status2XX!
            }
            if self.status3XX != nil {
                map["Status3XX"] = self.status3XX!
            }
            if self.status403 != nil {
                map["Status403"] = self.status403!
            }
            if self.status404 != nil {
                map["Status404"] = self.status404!
            }
            if self.status405 != nil {
                map["Status405"] = self.status405!
            }
            if self.status410 != nil {
                map["Status410"] = self.status410!
            }
            if self.status499 != nil {
                map["Status499"] = self.status499!
            }
            if self.status4XX != nil {
                map["Status4XX"] = self.status4XX!
            }
            if self.status501 != nil {
                map["Status501"] = self.status501!
            }
            if self.status502 != nil {
                map["Status502"] = self.status502!
            }
            if self.status503 != nil {
                map["Status503"] = self.status503!
            }
            if self.status504 != nil {
                map["Status504"] = self.status504!
            }
            if self.status5XX != nil {
                map["Status5XX"] = self.status5XX!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Index"] as? Int32 {
                self.index = value
            }
            if let value = dict["Status200"] as? Int64 {
                self.status200 = value
            }
            if let value = dict["Status2XX"] as? Int64 {
                self.status2XX = value
            }
            if let value = dict["Status3XX"] as? Int64 {
                self.status3XX = value
            }
            if let value = dict["Status403"] as? Int64 {
                self.status403 = value
            }
            if let value = dict["Status404"] as? Int64 {
                self.status404 = value
            }
            if let value = dict["Status405"] as? Int64 {
                self.status405 = value
            }
            if let value = dict["Status410"] as? Int64 {
                self.status410 = value
            }
            if let value = dict["Status499"] as? Int64 {
                self.status499 = value
            }
            if let value = dict["Status4XX"] as? Int64 {
                self.status4XX = value
            }
            if let value = dict["Status501"] as? Int64 {
                self.status501 = value
            }
            if let value = dict["Status502"] as? Int64 {
                self.status502 = value
            }
            if let value = dict["Status503"] as? Int64 {
                self.status503 = value
            }
            if let value = dict["Status504"] as? Int64 {
                self.status504 = value
            }
            if let value = dict["Status5XX"] as? Int64 {
                self.status5XX = value
            }
            if let value = dict["Time"] as? Int64 {
                self.time = value
            }
        }
    }
    public var requestId: String?

    public var statusCodeList: [DescribeDomainStatusCodeListResponseBody.StatusCodeList]?

    public override init() {
        super.init()
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
        if self.statusCodeList != nil {
            var tmp : [Any] = []
            for k in self.statusCodeList! {
                tmp.append(k.toMap())
            }
            map["StatusCodeList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StatusCodeList"] as? [Any?] {
            var tmp : [DescribeDomainStatusCodeListResponseBody.StatusCodeList] = []
            for v in value {
                if v != nil {
                    var model = DescribeDomainStatusCodeListResponseBody.StatusCodeList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.statusCodeList = tmp
        }
    }
}

public class DescribeDomainStatusCodeListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainStatusCodeListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainStatusCodeListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainTopAttackListRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var interval: Int64?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Interval"] as? Int64 {
            self.interval = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDomainTopAttackListResponseBody : Tea.TeaModel {
    public class AttackList : Tea.TeaModel {
        public var attack: Int64?

        public var count: Int64?

        public var domain: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attack != nil {
                map["Attack"] = self.attack!
            }
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attack"] as? Int64 {
                self.attack = value
            }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
        }
    }
    public var attackList: [DescribeDomainTopAttackListResponseBody.AttackList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attackList != nil {
            var tmp : [Any] = []
            for k in self.attackList! {
                tmp.append(k.toMap())
            }
            map["AttackList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AttackList"] as? [Any?] {
            var tmp : [DescribeDomainTopAttackListResponseBody.AttackList] = []
            for v in value {
                if v != nil {
                    var model = DescribeDomainTopAttackListResponseBody.AttackList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attackList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDomainTopAttackListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainTopAttackListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainTopAttackListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainTopFingerprintRequest : Tea.TeaModel {
    public var domain: String?

    public var endTime: Int64?

    public var interval: Int64?

    public var limit: Int64?

    public var region: String?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Interval"] as? Int64 {
            self.interval = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDomainTopFingerprintResponseBody : Tea.TeaModel {
    public class DomainTopFp : Tea.TeaModel {
        public var domain: String?

        public var fingerprinting: String?

        public var pv: Int64?

        public override init() {
            super.init()
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
            if self.fingerprinting != nil {
                map["Fingerprinting"] = self.fingerprinting!
            }
            if self.pv != nil {
                map["Pv"] = self.pv!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["Fingerprinting"] as? String {
                self.fingerprinting = value
            }
            if let value = dict["Pv"] as? Int64 {
                self.pv = value
            }
        }
    }
    public var domainTopFp: [DescribeDomainTopFingerprintResponseBody.DomainTopFp]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainTopFp != nil {
            var tmp : [Any] = []
            for k in self.domainTopFp! {
                tmp.append(k.toMap())
            }
            map["DomainTopFp"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainTopFp"] as? [Any?] {
            var tmp : [DescribeDomainTopFingerprintResponseBody.DomainTopFp] = []
            for v in value {
                if v != nil {
                    var model = DescribeDomainTopFingerprintResponseBody.DomainTopFp()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.domainTopFp = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDomainTopFingerprintResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainTopFingerprintResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainTopFingerprintResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainTopHttpMethodRequest : Tea.TeaModel {
    public var domain: String?

    public var endTime: Int64?

    public var limit: Int64?

    public var region: String?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDomainTopHttpMethodResponseBody : Tea.TeaModel {
    public class DomainTopMethod : Tea.TeaModel {
        public var domain: String?

        public var httpMethod: String?

        public var pv: Int64?

        public override init() {
            super.init()
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
            if self.httpMethod != nil {
                map["HttpMethod"] = self.httpMethod!
            }
            if self.pv != nil {
                map["Pv"] = self.pv!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["HttpMethod"] as? String {
                self.httpMethod = value
            }
            if let value = dict["Pv"] as? Int64 {
                self.pv = value
            }
        }
    }
    public var domainTopMethod: [DescribeDomainTopHttpMethodResponseBody.DomainTopMethod]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainTopMethod != nil {
            var tmp : [Any] = []
            for k in self.domainTopMethod! {
                tmp.append(k.toMap())
            }
            map["DomainTopMethod"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainTopMethod"] as? [Any?] {
            var tmp : [DescribeDomainTopHttpMethodResponseBody.DomainTopMethod] = []
            for v in value {
                if v != nil {
                    var model = DescribeDomainTopHttpMethodResponseBody.DomainTopMethod()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.domainTopMethod = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDomainTopHttpMethodResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainTopHttpMethodResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainTopHttpMethodResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainTopRefererRequest : Tea.TeaModel {
    public var domain: String?

    public var endTime: Int64?

    public var limit: Int64?

    public var region: String?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDomainTopRefererResponseBody : Tea.TeaModel {
    public class DomainTopReferer : Tea.TeaModel {
        public var domain: String?

        public var pv: Int64?

        public var referer: String?

        public override init() {
            super.init()
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
            if self.pv != nil {
                map["Pv"] = self.pv!
            }
            if self.referer != nil {
                map["Referer"] = self.referer!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["Pv"] as? Int64 {
                self.pv = value
            }
            if let value = dict["Referer"] as? String {
                self.referer = value
            }
        }
    }
    public var domainTopReferer: [DescribeDomainTopRefererResponseBody.DomainTopReferer]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainTopReferer != nil {
            var tmp : [Any] = []
            for k in self.domainTopReferer! {
                tmp.append(k.toMap())
            }
            map["DomainTopReferer"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainTopReferer"] as? [Any?] {
            var tmp : [DescribeDomainTopRefererResponseBody.DomainTopReferer] = []
            for v in value {
                if v != nil {
                    var model = DescribeDomainTopRefererResponseBody.DomainTopReferer()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.domainTopReferer = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDomainTopRefererResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainTopRefererResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainTopRefererResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainTopUserAgentRequest : Tea.TeaModel {
    public var domain: String?

    public var endTime: Int64?

    public var limit: Int64?

    public var region: String?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDomainTopUserAgentResponseBody : Tea.TeaModel {
    public class DomainTopUa : Tea.TeaModel {
        public var domain: String?

        public var pv: Int64?

        public var userAgent: String?

        public override init() {
            super.init()
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
            if self.pv != nil {
                map["Pv"] = self.pv!
            }
            if self.userAgent != nil {
                map["UserAgent"] = self.userAgent!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["Pv"] as? Int64 {
                self.pv = value
            }
            if let value = dict["UserAgent"] as? String {
                self.userAgent = value
            }
        }
    }
    public var domainTopUa: [DescribeDomainTopUserAgentResponseBody.DomainTopUa]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainTopUa != nil {
            var tmp : [Any] = []
            for k in self.domainTopUa! {
                tmp.append(k.toMap())
            }
            map["DomainTopUa"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainTopUa"] as? [Any?] {
            var tmp : [DescribeDomainTopUserAgentResponseBody.DomainTopUa] = []
            for v in value {
                if v != nil {
                    var model = DescribeDomainTopUserAgentResponseBody.DomainTopUa()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.domainTopUa = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDomainTopUserAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainTopUserAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainTopUserAgentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainViewSourceCountriesRequest : Tea.TeaModel {
    public var domain: String?

    public var endTime: Int64?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDomainViewSourceCountriesResponseBody : Tea.TeaModel {
    public class SourceCountrys : Tea.TeaModel {
        public var count: Int64?

        public var countryId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.countryId != nil {
                map["CountryId"] = self.countryId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["CountryId"] as? String {
                self.countryId = value
            }
        }
    }
    public var requestId: String?

    public var sourceCountrys: [DescribeDomainViewSourceCountriesResponseBody.SourceCountrys]?

    public override init() {
        super.init()
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
        if self.sourceCountrys != nil {
            var tmp : [Any] = []
            for k in self.sourceCountrys! {
                tmp.append(k.toMap())
            }
            map["SourceCountrys"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SourceCountrys"] as? [Any?] {
            var tmp : [DescribeDomainViewSourceCountriesResponseBody.SourceCountrys] = []
            for v in value {
                if v != nil {
                    var model = DescribeDomainViewSourceCountriesResponseBody.SourceCountrys()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sourceCountrys = tmp
        }
    }
}

public class DescribeDomainViewSourceCountriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainViewSourceCountriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainViewSourceCountriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainViewSourceProvincesRequest : Tea.TeaModel {
    public var domain: String?

    public var endTime: Int64?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDomainViewSourceProvincesResponseBody : Tea.TeaModel {
    public class SourceProvinces : Tea.TeaModel {
        public var count: Int64?

        public var provinceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.provinceId != nil {
                map["ProvinceId"] = self.provinceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["ProvinceId"] as? String {
                self.provinceId = value
            }
        }
    }
    public var requestId: String?

    public var sourceProvinces: [DescribeDomainViewSourceProvincesResponseBody.SourceProvinces]?

    public override init() {
        super.init()
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
        if self.sourceProvinces != nil {
            var tmp : [Any] = []
            for k in self.sourceProvinces! {
                tmp.append(k.toMap())
            }
            map["SourceProvinces"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SourceProvinces"] as? [Any?] {
            var tmp : [DescribeDomainViewSourceProvincesResponseBody.SourceProvinces] = []
            for v in value {
                if v != nil {
                    var model = DescribeDomainViewSourceProvincesResponseBody.SourceProvinces()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sourceProvinces = tmp
        }
    }
}

public class DescribeDomainViewSourceProvincesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainViewSourceProvincesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainViewSourceProvincesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainViewTopCostTimeRequest : Tea.TeaModel {
    public var domain: String?

    public var endTime: Int64?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public var top: Int32?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.top != nil {
            map["Top"] = self.top!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Top"] as? Int32 {
            self.top = value
        }
    }
}

public class DescribeDomainViewTopCostTimeResponseBody : Tea.TeaModel {
    public class UrlList : Tea.TeaModel {
        public var costTime: Double?

        public var domain: String?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.costTime != nil {
                map["CostTime"] = self.costTime!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CostTime"] as? Double {
                self.costTime = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var requestId: String?

    public var urlList: [DescribeDomainViewTopCostTimeResponseBody.UrlList]?

    public override init() {
        super.init()
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
        if self.urlList != nil {
            var tmp : [Any] = []
            for k in self.urlList! {
                tmp.append(k.toMap())
            }
            map["UrlList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UrlList"] as? [Any?] {
            var tmp : [DescribeDomainViewTopCostTimeResponseBody.UrlList] = []
            for v in value {
                if v != nil {
                    var model = DescribeDomainViewTopCostTimeResponseBody.UrlList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.urlList = tmp
        }
    }
}

public class DescribeDomainViewTopCostTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainViewTopCostTimeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainViewTopCostTimeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainViewTopUrlRequest : Tea.TeaModel {
    public var domain: String?

    public var endTime: Int64?

    public var inerval: Int64?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public var top: Int32?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.inerval != nil {
            map["Inerval"] = self.inerval!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.top != nil {
            map["Top"] = self.top!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Inerval"] as? Int64 {
            self.inerval = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Top"] as? Int32 {
            self.top = value
        }
    }
}

public class DescribeDomainViewTopUrlResponseBody : Tea.TeaModel {
    public class UrlList : Tea.TeaModel {
        public var count: Int64?

        public var domain: String?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var requestId: String?

    public var urlList: [DescribeDomainViewTopUrlResponseBody.UrlList]?

    public override init() {
        super.init()
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
        if self.urlList != nil {
            var tmp : [Any] = []
            for k in self.urlList! {
                tmp.append(k.toMap())
            }
            map["UrlList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UrlList"] as? [Any?] {
            var tmp : [DescribeDomainViewTopUrlResponseBody.UrlList] = []
            for v in value {
                if v != nil {
                    var model = DescribeDomainViewTopUrlResponseBody.UrlList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.urlList = tmp
        }
    }
}

public class DescribeDomainViewTopUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainViewTopUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainViewTopUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDomainsRequest : Tea.TeaModel {
    public var instanceIds: [String]?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeDomainsResponseBody : Tea.TeaModel {
    public var domains: [String]?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domains"] as? [String] {
            self.domains = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeElasticBandwidthSpecRequest : Tea.TeaModel {
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
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DescribeElasticBandwidthSpecResponseBody : Tea.TeaModel {
    public var elasticBandwidthSpec: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.elasticBandwidthSpec != nil {
            map["ElasticBandwidthSpec"] = self.elasticBandwidthSpec!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ElasticBandwidthSpec"] as? [String] {
            self.elasticBandwidthSpec = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeElasticBandwidthSpecResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeElasticBandwidthSpecResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeElasticBandwidthSpecResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeElasticQpsRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var interval: String?

    public var ip: String?

    public var region: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Interval"] as? String {
            self.interval = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeElasticQpsResponseBody : Tea.TeaModel {
    public class ElasticQps : Tea.TeaModel {
        public var index: Int64?

        public var maxNormalQps: Int64?

        public var maxQps: Int64?

        public var pv: Int64?

        public var status2: Int64?

        public var status3: Int64?

        public var status4: Int64?

        public var status5: Int64?

        public var ups: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.maxNormalQps != nil {
                map["MaxNormalQps"] = self.maxNormalQps!
            }
            if self.maxQps != nil {
                map["MaxQps"] = self.maxQps!
            }
            if self.pv != nil {
                map["Pv"] = self.pv!
            }
            if self.status2 != nil {
                map["Status2"] = self.status2!
            }
            if self.status3 != nil {
                map["Status3"] = self.status3!
            }
            if self.status4 != nil {
                map["Status4"] = self.status4!
            }
            if self.status5 != nil {
                map["Status5"] = self.status5!
            }
            if self.ups != nil {
                map["Ups"] = self.ups!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Index"] as? Int64 {
                self.index = value
            }
            if let value = dict["MaxNormalQps"] as? Int64 {
                self.maxNormalQps = value
            }
            if let value = dict["MaxQps"] as? Int64 {
                self.maxQps = value
            }
            if let value = dict["Pv"] as? Int64 {
                self.pv = value
            }
            if let value = dict["Status2"] as? Int64 {
                self.status2 = value
            }
            if let value = dict["Status3"] as? Int64 {
                self.status3 = value
            }
            if let value = dict["Status4"] as? Int64 {
                self.status4 = value
            }
            if let value = dict["Status5"] as? Int64 {
                self.status5 = value
            }
            if let value = dict["Ups"] as? Int64 {
                self.ups = value
            }
        }
    }
    public var elasticQps: [DescribeElasticQpsResponseBody.ElasticQps]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.elasticQps != nil {
            var tmp : [Any] = []
            for k in self.elasticQps! {
                tmp.append(k.toMap())
            }
            map["ElasticQps"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ElasticQps"] as? [Any?] {
            var tmp : [DescribeElasticQpsResponseBody.ElasticQps] = []
            for v in value {
                if v != nil {
                    var model = DescribeElasticQpsResponseBody.ElasticQps()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.elasticQps = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeElasticQpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeElasticQpsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeElasticQpsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeElasticQpsRecordRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var ip: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeElasticQpsRecordResponseBody : Tea.TeaModel {
    public class ElasticQpsList : Tea.TeaModel {
        public var date: Int64?

        public var instanceId: String?

        public var ip: String?

        public var opsElasticQps: Int64?

        public var opsQps: Int64?

        public var originQps: Int64?

        public var qps: Int64?

        public var qpsPeak: Int64?

        public var status: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.date != nil {
                map["Date"] = self.date!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.opsElasticQps != nil {
                map["OpsElasticQps"] = self.opsElasticQps!
            }
            if self.opsQps != nil {
                map["OpsQps"] = self.opsQps!
            }
            if self.originQps != nil {
                map["OriginQps"] = self.originQps!
            }
            if self.qps != nil {
                map["Qps"] = self.qps!
            }
            if self.qpsPeak != nil {
                map["QpsPeak"] = self.qpsPeak!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Date"] as? Int64 {
                self.date = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["OpsElasticQps"] as? Int64 {
                self.opsElasticQps = value
            }
            if let value = dict["OpsQps"] as? Int64 {
                self.opsQps = value
            }
            if let value = dict["OriginQps"] as? Int64 {
                self.originQps = value
            }
            if let value = dict["Qps"] as? Int64 {
                self.qps = value
            }
            if let value = dict["QpsPeak"] as? Int64 {
                self.qpsPeak = value
            }
            if let value = dict["Status"] as? Int64 {
                self.status = value
            }
        }
    }
    public var elasticQpsList: [DescribeElasticQpsRecordResponseBody.ElasticQpsList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.elasticQpsList != nil {
            var tmp : [Any] = []
            for k in self.elasticQpsList! {
                tmp.append(k.toMap())
            }
            map["ElasticQpsList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ElasticQpsList"] as? [Any?] {
            var tmp : [DescribeElasticQpsRecordResponseBody.ElasticQpsList] = []
            for v in value {
                if v != nil {
                    var model = DescribeElasticQpsRecordResponseBody.ElasticQpsList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.elasticQpsList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeElasticQpsRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeElasticQpsRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeElasticQpsRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeHeadersRequest : Tea.TeaModel {
    public var domain: String?

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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeHeadersResponseBody : Tea.TeaModel {
    public class CustomHeader : Tea.TeaModel {
        public var domain: String?

        public var headers: String?

        public override init() {
            super.init()
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
            if self.headers != nil {
                map["Headers"] = self.headers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["Headers"] as? String {
                self.headers = value
            }
        }
    }
    public var customHeader: DescribeHeadersResponseBody.CustomHeader?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.customHeader?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customHeader != nil {
            map["CustomHeader"] = self.customHeader?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomHeader"] as? [String: Any?] {
            var model = DescribeHeadersResponseBody.CustomHeader()
            model.fromMap(value)
            self.customHeader = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeHeadersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHeadersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeHeadersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeHealthCheckListRequest : Tea.TeaModel {
    public var networkRules: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkRules != nil {
            map["NetworkRules"] = self.networkRules!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkRules"] as? String {
            self.networkRules = value
        }
    }
}

public class DescribeHealthCheckListResponseBody : Tea.TeaModel {
    public class HealthCheckList : Tea.TeaModel {
        public class HealthCheck : Tea.TeaModel {
            public var domain: String?

            public var down: Int32?

            public var interval: Int32?

            public var port: Int32?

            public var timeout: Int32?

            public var type: String?

            public var up: Int32?

            public var uri: String?

            public override init() {
                super.init()
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
                if self.down != nil {
                    map["Down"] = self.down!
                }
                if self.interval != nil {
                    map["Interval"] = self.interval!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.timeout != nil {
                    map["Timeout"] = self.timeout!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.up != nil {
                    map["Up"] = self.up!
                }
                if self.uri != nil {
                    map["Uri"] = self.uri!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Domain"] as? String {
                    self.domain = value
                }
                if let value = dict["Down"] as? Int32 {
                    self.down = value
                }
                if let value = dict["Interval"] as? Int32 {
                    self.interval = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["Timeout"] as? Int32 {
                    self.timeout = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Up"] as? Int32 {
                    self.up = value
                }
                if let value = dict["Uri"] as? String {
                    self.uri = value
                }
            }
        }
        public var frontendPort: Int32?

        public var healthCheck: DescribeHealthCheckListResponseBody.HealthCheckList.HealthCheck?

        public var instanceId: String?

        public var protocol_: String?

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
            if self.frontendPort != nil {
                map["FrontendPort"] = self.frontendPort!
            }
            if self.healthCheck != nil {
                map["HealthCheck"] = self.healthCheck?.toMap()
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FrontendPort"] as? Int32 {
                self.frontendPort = value
            }
            if let value = dict["HealthCheck"] as? [String: Any?] {
                var model = DescribeHealthCheckListResponseBody.HealthCheckList.HealthCheck()
                model.fromMap(value)
                self.healthCheck = model
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
        }
    }
    public var healthCheckList: [DescribeHealthCheckListResponseBody.HealthCheckList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.healthCheckList != nil {
            var tmp : [Any] = []
            for k in self.healthCheckList! {
                tmp.append(k.toMap())
            }
            map["HealthCheckList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HealthCheckList"] as? [Any?] {
            var tmp : [DescribeHealthCheckListResponseBody.HealthCheckList] = []
            for v in value {
                if v != nil {
                    var model = DescribeHealthCheckListResponseBody.HealthCheckList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.healthCheckList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeHealthCheckListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHealthCheckListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeHealthCheckListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeHealthCheckStatusRequest : Tea.TeaModel {
    public var networkRules: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkRules != nil {
            map["NetworkRules"] = self.networkRules!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkRules"] as? String {
            self.networkRules = value
        }
    }
}

public class DescribeHealthCheckStatusResponseBody : Tea.TeaModel {
    public class HealthCheckStatus : Tea.TeaModel {
        public class RealServerStatusList : Tea.TeaModel {
            public var address: String?

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
                if self.address != nil {
                    map["Address"] = self.address!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Address"] as? String {
                    self.address = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var frontendPort: Int32?

        public var instanceId: String?

        public var protocol_: String?

        public var realServerStatusList: [DescribeHealthCheckStatusResponseBody.HealthCheckStatus.RealServerStatusList]?

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
            if self.frontendPort != nil {
                map["FrontendPort"] = self.frontendPort!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.realServerStatusList != nil {
                var tmp : [Any] = []
                for k in self.realServerStatusList! {
                    tmp.append(k.toMap())
                }
                map["RealServerStatusList"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FrontendPort"] as? Int32 {
                self.frontendPort = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["RealServerStatusList"] as? [Any?] {
                var tmp : [DescribeHealthCheckStatusResponseBody.HealthCheckStatus.RealServerStatusList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeHealthCheckStatusResponseBody.HealthCheckStatus.RealServerStatusList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.realServerStatusList = tmp
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var healthCheckStatus: [DescribeHealthCheckStatusResponseBody.HealthCheckStatus]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.healthCheckStatus != nil {
            var tmp : [Any] = []
            for k in self.healthCheckStatus! {
                tmp.append(k.toMap())
            }
            map["HealthCheckStatus"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HealthCheckStatus"] as? [Any?] {
            var tmp : [DescribeHealthCheckStatusResponseBody.HealthCheckStatus] = []
            for v in value {
                if v != nil {
                    var model = DescribeHealthCheckStatusResponseBody.HealthCheckStatus()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.healthCheckStatus = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeHealthCheckStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHealthCheckStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeHealthCheckStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceDetailsRequest : Tea.TeaModel {
    public var instanceIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
    }
}

public class DescribeInstanceDetailsResponseBody : Tea.TeaModel {
    public class InstanceDetails : Tea.TeaModel {
        public class EipInfos : Tea.TeaModel {
            public var certConfigured: Bool?

            public var eip: String?

            public var functionVersion: String?

            public var ipMode: String?

            public var ipVersion: String?

            public var ssl13Enabled: Bool?

            public var status: String?

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
                if self.certConfigured != nil {
                    map["CertConfigured"] = self.certConfigured!
                }
                if self.eip != nil {
                    map["Eip"] = self.eip!
                }
                if self.functionVersion != nil {
                    map["FunctionVersion"] = self.functionVersion!
                }
                if self.ipMode != nil {
                    map["IpMode"] = self.ipMode!
                }
                if self.ipVersion != nil {
                    map["IpVersion"] = self.ipVersion!
                }
                if self.ssl13Enabled != nil {
                    map["Ssl13Enabled"] = self.ssl13Enabled!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tlsVersion != nil {
                    map["TlsVersion"] = self.tlsVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CertConfigured"] as? Bool {
                    self.certConfigured = value
                }
                if let value = dict["Eip"] as? String {
                    self.eip = value
                }
                if let value = dict["FunctionVersion"] as? String {
                    self.functionVersion = value
                }
                if let value = dict["IpMode"] as? String {
                    self.ipMode = value
                }
                if let value = dict["IpVersion"] as? String {
                    self.ipVersion = value
                }
                if let value = dict["Ssl13Enabled"] as? Bool {
                    self.ssl13Enabled = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TlsVersion"] as? String {
                    self.tlsVersion = value
                }
            }
        }
        public var eipInfos: [DescribeInstanceDetailsResponseBody.InstanceDetails.EipInfos]?

        public var instanceId: String?

        public var line: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eipInfos != nil {
                var tmp : [Any] = []
                for k in self.eipInfos! {
                    tmp.append(k.toMap())
                }
                map["EipInfos"] = tmp
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.line != nil {
                map["Line"] = self.line!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EipInfos"] as? [Any?] {
                var tmp : [DescribeInstanceDetailsResponseBody.InstanceDetails.EipInfos] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInstanceDetailsResponseBody.InstanceDetails.EipInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.eipInfos = tmp
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Line"] as? String {
                self.line = value
            }
        }
    }
    public var instanceDetails: [DescribeInstanceDetailsResponseBody.InstanceDetails]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceDetails != nil {
            var tmp : [Any] = []
            for k in self.instanceDetails! {
                tmp.append(k.toMap())
            }
            map["InstanceDetails"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceDetails"] as? [Any?] {
            var tmp : [DescribeInstanceDetailsResponseBody.InstanceDetails] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceDetailsResponseBody.InstanceDetails()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceDetails = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeInstanceDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceDetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInstanceDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceExtRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
    }
}

public class DescribeInstanceExtResponseBody : Tea.TeaModel {
    public class InstanceExtSpecs : Tea.TeaModel {
        public var functionVersion: Int64?

        public var instanceId: String?

        public var normalBandwidth: Int64?

        public var productPlan: Int64?

        public var servicePartner: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.functionVersion != nil {
                map["FunctionVersion"] = self.functionVersion!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.normalBandwidth != nil {
                map["NormalBandwidth"] = self.normalBandwidth!
            }
            if self.productPlan != nil {
                map["ProductPlan"] = self.productPlan!
            }
            if self.servicePartner != nil {
                map["ServicePartner"] = self.servicePartner!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FunctionVersion"] as? Int64 {
                self.functionVersion = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["NormalBandwidth"] as? Int64 {
                self.normalBandwidth = value
            }
            if let value = dict["ProductPlan"] as? Int64 {
                self.productPlan = value
            }
            if let value = dict["ServicePartner"] as? String {
                self.servicePartner = value
            }
        }
    }
    public var instanceExtSpecs: [DescribeInstanceExtResponseBody.InstanceExtSpecs]?

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
        if self.instanceExtSpecs != nil {
            var tmp : [Any] = []
            for k in self.instanceExtSpecs! {
                tmp.append(k.toMap())
            }
            map["InstanceExtSpecs"] = tmp
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
        if let value = dict["InstanceExtSpecs"] as? [Any?] {
            var tmp : [DescribeInstanceExtResponseBody.InstanceExtSpecs] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceExtResponseBody.InstanceExtSpecs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceExtSpecs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeInstanceExtResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceExtResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInstanceExtResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceIdsRequest : Tea.TeaModel {
    public var edition: Int32?

    public var instanceIds: [String]?

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
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Edition"] as? Int32 {
            self.edition = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeInstanceIdsResponseBody : Tea.TeaModel {
    public class InstanceIds : Tea.TeaModel {
        public var edition: Int32?

        public var instanceId: String?

        public var ipMode: String?

        public var ipVersion: String?

        public var remark: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.edition != nil {
                map["Edition"] = self.edition!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.ipMode != nil {
                map["IpMode"] = self.ipMode!
            }
            if self.ipVersion != nil {
                map["IpVersion"] = self.ipVersion!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Edition"] as? Int32 {
                self.edition = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["IpMode"] as? String {
                self.ipMode = value
            }
            if let value = dict["IpVersion"] as? String {
                self.ipVersion = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
        }
    }
    public var instanceIds: [DescribeInstanceIdsResponseBody.InstanceIds]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            var tmp : [Any] = []
            for k in self.instanceIds! {
                tmp.append(k.toMap())
            }
            map["InstanceIds"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [Any?] {
            var tmp : [DescribeInstanceIdsResponseBody.InstanceIds] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceIdsResponseBody.InstanceIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceIds = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeInstanceIdsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceIdsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInstanceIdsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceSpecsRequest : Tea.TeaModel {
    public var instanceIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
    }
}

public class DescribeInstanceSpecsResponseBody : Tea.TeaModel {
    public class InstanceSpecs : Tea.TeaModel {
        public var bandwidthMbps: Int32?

        public var baseBandwidth: Int32?

        public var connLimit: Int64?

        public var cpsLimit: Int64?

        public var defenseCount: Int32?

        public var domainLimit: Int32?

        public var elasticBandwidth: Int32?

        public var elasticBw: Int32?

        public var elasticBwModel: String?

        public var elasticQps: Int64?

        public var elasticQpsMode: String?

        public var functionVersion: String?

        public var instanceId: String?

        public var portLimit: Int32?

        public var qpsLimit: Int32?

        public var realLimitBw: Int64?

        public var siteLimit: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bandwidthMbps != nil {
                map["BandwidthMbps"] = self.bandwidthMbps!
            }
            if self.baseBandwidth != nil {
                map["BaseBandwidth"] = self.baseBandwidth!
            }
            if self.connLimit != nil {
                map["ConnLimit"] = self.connLimit!
            }
            if self.cpsLimit != nil {
                map["CpsLimit"] = self.cpsLimit!
            }
            if self.defenseCount != nil {
                map["DefenseCount"] = self.defenseCount!
            }
            if self.domainLimit != nil {
                map["DomainLimit"] = self.domainLimit!
            }
            if self.elasticBandwidth != nil {
                map["ElasticBandwidth"] = self.elasticBandwidth!
            }
            if self.elasticBw != nil {
                map["ElasticBw"] = self.elasticBw!
            }
            if self.elasticBwModel != nil {
                map["ElasticBwModel"] = self.elasticBwModel!
            }
            if self.elasticQps != nil {
                map["ElasticQps"] = self.elasticQps!
            }
            if self.elasticQpsMode != nil {
                map["ElasticQpsMode"] = self.elasticQpsMode!
            }
            if self.functionVersion != nil {
                map["FunctionVersion"] = self.functionVersion!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.portLimit != nil {
                map["PortLimit"] = self.portLimit!
            }
            if self.qpsLimit != nil {
                map["QpsLimit"] = self.qpsLimit!
            }
            if self.realLimitBw != nil {
                map["RealLimitBw"] = self.realLimitBw!
            }
            if self.siteLimit != nil {
                map["SiteLimit"] = self.siteLimit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BandwidthMbps"] as? Int32 {
                self.bandwidthMbps = value
            }
            if let value = dict["BaseBandwidth"] as? Int32 {
                self.baseBandwidth = value
            }
            if let value = dict["ConnLimit"] as? Int64 {
                self.connLimit = value
            }
            if let value = dict["CpsLimit"] as? Int64 {
                self.cpsLimit = value
            }
            if let value = dict["DefenseCount"] as? Int32 {
                self.defenseCount = value
            }
            if let value = dict["DomainLimit"] as? Int32 {
                self.domainLimit = value
            }
            if let value = dict["ElasticBandwidth"] as? Int32 {
                self.elasticBandwidth = value
            }
            if let value = dict["ElasticBw"] as? Int32 {
                self.elasticBw = value
            }
            if let value = dict["ElasticBwModel"] as? String {
                self.elasticBwModel = value
            }
            if let value = dict["ElasticQps"] as? Int64 {
                self.elasticQps = value
            }
            if let value = dict["ElasticQpsMode"] as? String {
                self.elasticQpsMode = value
            }
            if let value = dict["FunctionVersion"] as? String {
                self.functionVersion = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["PortLimit"] as? Int32 {
                self.portLimit = value
            }
            if let value = dict["QpsLimit"] as? Int32 {
                self.qpsLimit = value
            }
            if let value = dict["RealLimitBw"] as? Int64 {
                self.realLimitBw = value
            }
            if let value = dict["SiteLimit"] as? Int32 {
                self.siteLimit = value
            }
        }
    }
    public var instanceSpecs: [DescribeInstanceSpecsResponseBody.InstanceSpecs]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceSpecs != nil {
            var tmp : [Any] = []
            for k in self.instanceSpecs! {
                tmp.append(k.toMap())
            }
            map["InstanceSpecs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceSpecs"] as? [Any?] {
            var tmp : [DescribeInstanceSpecsResponseBody.InstanceSpecs] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceSpecsResponseBody.InstanceSpecs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceSpecs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeInstanceSpecsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceSpecsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInstanceSpecsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceStatisticsRequest : Tea.TeaModel {
    public var instanceIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
    }
}

public class DescribeInstanceStatisticsResponseBody : Tea.TeaModel {
    public class InstanceStatistics : Tea.TeaModel {
        public var defenseCountUsage: Int32?

        public var domainUsage: Int32?

        public var instanceId: String?

        public var portUsage: Int32?

        public var siteUsage: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.defenseCountUsage != nil {
                map["DefenseCountUsage"] = self.defenseCountUsage!
            }
            if self.domainUsage != nil {
                map["DomainUsage"] = self.domainUsage!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.portUsage != nil {
                map["PortUsage"] = self.portUsage!
            }
            if self.siteUsage != nil {
                map["SiteUsage"] = self.siteUsage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DefenseCountUsage"] as? Int32 {
                self.defenseCountUsage = value
            }
            if let value = dict["DomainUsage"] as? Int32 {
                self.domainUsage = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["PortUsage"] as? Int32 {
                self.portUsage = value
            }
            if let value = dict["SiteUsage"] as? Int32 {
                self.siteUsage = value
            }
        }
    }
    public var instanceStatistics: [DescribeInstanceStatisticsResponseBody.InstanceStatistics]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceStatistics != nil {
            var tmp : [Any] = []
            for k in self.instanceStatistics! {
                tmp.append(k.toMap())
            }
            map["InstanceStatistics"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceStatistics"] as? [Any?] {
            var tmp : [DescribeInstanceStatisticsResponseBody.InstanceStatistics] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceStatisticsResponseBody.InstanceStatistics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceStatistics = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeInstanceStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInstanceStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceStatusRequest : Tea.TeaModel {
    public var instanceId: String?

    public var productType: Int32?

    public override init() {
        super.init()
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
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ProductType"] as? Int32 {
            self.productType = value
        }
    }
}

public class DescribeInstanceStatusResponseBody : Tea.TeaModel {
    public var instanceId: String?

    public var instanceStatus: Int32?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.instanceStatus != nil {
            map["InstanceStatus"] = self.instanceStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceStatus"] as? Int32 {
            self.instanceStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeInstanceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInstanceStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstancesRequest : Tea.TeaModel {
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
    public var edition: Int32?

    public var enabled: Int32?

    public var expireEndTime: Int64?

    public var expireStartTime: Int64?

    public var instanceIds: [String]?

    public var ip: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var remark: String?

    public var resourceGroupId: String?

    public var status: [Int32]?

    public var tag: [DescribeInstancesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.expireEndTime != nil {
            map["ExpireEndTime"] = self.expireEndTime!
        }
        if self.expireStartTime != nil {
            map["ExpireStartTime"] = self.expireStartTime!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if let value = dict["Edition"] as? Int32 {
            self.edition = value
        }
        if let value = dict["Enabled"] as? Int32 {
            self.enabled = value
        }
        if let value = dict["ExpireEndTime"] as? Int64 {
            self.expireEndTime = value
        }
        if let value = dict["ExpireStartTime"] as? Int64 {
            self.expireStartTime = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Status"] as? [Int32] {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeInstancesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstancesRequest.Tag()
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

public class DescribeInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var createTime: Int64?

        public var debtStatus: Int32?

        public var edition: Int32?

        public var enabled: Int32?

        public var expireTime: Int64?

        public var instanceId: String?

        public var ip: String?

        public var ipMode: String?

        public var ipVersion: String?

        public var isFirstOpenBw: Int64?

        public var isFirstOpenQps: Int64?

        public var remark: String?

        public var status: Int32?

        public override init() {
            super.init()
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
            if self.debtStatus != nil {
                map["DebtStatus"] = self.debtStatus!
            }
            if self.edition != nil {
                map["Edition"] = self.edition!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.ipMode != nil {
                map["IpMode"] = self.ipMode!
            }
            if self.ipVersion != nil {
                map["IpVersion"] = self.ipVersion!
            }
            if self.isFirstOpenBw != nil {
                map["IsFirstOpenBw"] = self.isFirstOpenBw!
            }
            if self.isFirstOpenQps != nil {
                map["IsFirstOpenQps"] = self.isFirstOpenQps!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["DebtStatus"] as? Int32 {
                self.debtStatus = value
            }
            if let value = dict["Edition"] as? Int32 {
                self.edition = value
            }
            if let value = dict["Enabled"] as? Int32 {
                self.enabled = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["IpMode"] as? String {
                self.ipMode = value
            }
            if let value = dict["IpVersion"] as? String {
                self.ipVersion = value
            }
            if let value = dict["IsFirstOpenBw"] as? Int64 {
                self.isFirstOpenBw = value
            }
            if let value = dict["IsFirstOpenQps"] as? Int64 {
                self.isFirstOpenQps = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var instances: [DescribeInstancesResponseBody.Instances]?

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
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
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
        if let value = dict["Instances"] as? [Any?] {
            var tmp : [DescribeInstancesResponseBody.Instances] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstancesResponseBody.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeL7GlobalRuleRequest : Tea.TeaModel {
    public var domain: String?

    public var lang: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class DescribeL7GlobalRuleResponseBody : Tea.TeaModel {
    public class GlobalRules : Tea.TeaModel {
        public var action: String?

        public var actionDefault: String?

        public var description_: String?

        public var enabled: Int64?

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
            if self.action != nil {
                map["Action"] = self.action!
            }
            if self.actionDefault != nil {
                map["ActionDefault"] = self.actionDefault!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
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
            if let value = dict["Action"] as? String {
                self.action = value
            }
            if let value = dict["ActionDefault"] as? String {
                self.actionDefault = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Enabled"] as? Int64 {
                self.enabled = value
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
        }
    }
    public var globalRules: [DescribeL7GlobalRuleResponseBody.GlobalRules]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.globalRules != nil {
            var tmp : [Any] = []
            for k in self.globalRules! {
                tmp.append(k.toMap())
            }
            map["GlobalRules"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GlobalRules"] as? [Any?] {
            var tmp : [DescribeL7GlobalRuleResponseBody.GlobalRules] = []
            for v in value {
                if v != nil {
                    var model = DescribeL7GlobalRuleResponseBody.GlobalRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.globalRules = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeL7GlobalRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeL7GlobalRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeL7GlobalRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeL7RsPolicyRequest : Tea.TeaModel {
    public var domain: String?

    public var realServers: [String]?

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
        if self.realServers != nil {
            map["RealServers"] = self.realServers!
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
        if let value = dict["RealServers"] as? [String] {
            self.realServers = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeL7RsPolicyResponseBody : Tea.TeaModel {
    public class Attributes : Tea.TeaModel {
        public class Attribute : Tea.TeaModel {
            public var connectTimeout: Int32?

            public var failTimeout: Int32?

            public var maxFails: Int32?

            public var mode: String?

            public var readTimeout: Int32?

            public var sendTimeout: Int32?

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
                if self.connectTimeout != nil {
                    map["ConnectTimeout"] = self.connectTimeout!
                }
                if self.failTimeout != nil {
                    map["FailTimeout"] = self.failTimeout!
                }
                if self.maxFails != nil {
                    map["MaxFails"] = self.maxFails!
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                if self.readTimeout != nil {
                    map["ReadTimeout"] = self.readTimeout!
                }
                if self.sendTimeout != nil {
                    map["SendTimeout"] = self.sendTimeout!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnectTimeout"] as? Int32 {
                    self.connectTimeout = value
                }
                if let value = dict["FailTimeout"] as? Int32 {
                    self.failTimeout = value
                }
                if let value = dict["MaxFails"] as? Int32 {
                    self.maxFails = value
                }
                if let value = dict["Mode"] as? String {
                    self.mode = value
                }
                if let value = dict["ReadTimeout"] as? Int32 {
                    self.readTimeout = value
                }
                if let value = dict["SendTimeout"] as? Int32 {
                    self.sendTimeout = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
                }
            }
        }
        public var attribute: DescribeL7RsPolicyResponseBody.Attributes.Attribute?

        public var realServer: String?

        public var rsType: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.attribute?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attribute != nil {
                map["Attribute"] = self.attribute?.toMap()
            }
            if self.realServer != nil {
                map["RealServer"] = self.realServer!
            }
            if self.rsType != nil {
                map["RsType"] = self.rsType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attribute"] as? [String: Any?] {
                var model = DescribeL7RsPolicyResponseBody.Attributes.Attribute()
                model.fromMap(value)
                self.attribute = model
            }
            if let value = dict["RealServer"] as? String {
                self.realServer = value
            }
            if let value = dict["RsType"] as? Int32 {
                self.rsType = value
            }
        }
    }
    public var attributes: [DescribeL7RsPolicyResponseBody.Attributes]?

    public var proxyMode: String?

    public var requestId: String?

    public var rsAttrRwTimeoutMax: Int64?

    public var upstreamRetry: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attributes != nil {
            var tmp : [Any] = []
            for k in self.attributes! {
                tmp.append(k.toMap())
            }
            map["Attributes"] = tmp
        }
        if self.proxyMode != nil {
            map["ProxyMode"] = self.proxyMode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rsAttrRwTimeoutMax != nil {
            map["RsAttrRwTimeoutMax"] = self.rsAttrRwTimeoutMax!
        }
        if self.upstreamRetry != nil {
            map["UpstreamRetry"] = self.upstreamRetry!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Attributes"] as? [Any?] {
            var tmp : [DescribeL7RsPolicyResponseBody.Attributes] = []
            for v in value {
                if v != nil {
                    var model = DescribeL7RsPolicyResponseBody.Attributes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attributes = tmp
        }
        if let value = dict["ProxyMode"] as? String {
            self.proxyMode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RsAttrRwTimeoutMax"] as? Int64 {
            self.rsAttrRwTimeoutMax = value
        }
        if let value = dict["UpstreamRetry"] as? Int32 {
            self.upstreamRetry = value
        }
    }
}

public class DescribeL7RsPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeL7RsPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeL7RsPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeL7UsKeepaliveRequest : Tea.TeaModel {
    public var domain: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
    }
}

public class DescribeL7UsKeepaliveResponseBody : Tea.TeaModel {
    public class RsKeepalive : Tea.TeaModel {
        public var dsKeepaliveTimeout: Int64?

        public var enabled: Bool?

        public var keepaliveRequests: Int64?

        public var keepaliveTimeout: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dsKeepaliveTimeout != nil {
                map["DsKeepaliveTimeout"] = self.dsKeepaliveTimeout!
            }
            if self.enabled != nil {
                map["Enabled"] = self.enabled!
            }
            if self.keepaliveRequests != nil {
                map["KeepaliveRequests"] = self.keepaliveRequests!
            }
            if self.keepaliveTimeout != nil {
                map["KeepaliveTimeout"] = self.keepaliveTimeout!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DsKeepaliveTimeout"] as? Int64 {
                self.dsKeepaliveTimeout = value
            }
            if let value = dict["Enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["KeepaliveRequests"] as? Int64 {
                self.keepaliveRequests = value
            }
            if let value = dict["KeepaliveTimeout"] as? Int64 {
                self.keepaliveTimeout = value
            }
        }
    }
    public var requestId: String?

    public var rsKeepalive: DescribeL7UsKeepaliveResponseBody.RsKeepalive?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.rsKeepalive?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rsKeepalive != nil {
            map["RsKeepalive"] = self.rsKeepalive?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RsKeepalive"] as? [String: Any?] {
            var model = DescribeL7UsKeepaliveResponseBody.RsKeepalive()
            model.fromMap(value)
            self.rsKeepalive = model
        }
    }
}

public class DescribeL7UsKeepaliveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeL7UsKeepaliveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeL7UsKeepaliveResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeLayer4RulePolicyRequest : Tea.TeaModel {
    public var listeners: String?

    public override init() {
        super.init()
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
            map["Listeners"] = self.listeners!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Listeners"] as? String {
            self.listeners = value
        }
    }
}

public class DescribeLayer4RulePolicyResponseBody : Tea.TeaModel {
    public class PriRealServers : Tea.TeaModel {
        public var currentIndex: Int32?

        public var eip: String?

        public var frontendPort: Int32?

        public var instanceId: String?

        public var protocol_: String?

        public var realServer: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentIndex != nil {
                map["CurrentIndex"] = self.currentIndex!
            }
            if self.eip != nil {
                map["Eip"] = self.eip!
            }
            if self.frontendPort != nil {
                map["FrontendPort"] = self.frontendPort!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.realServer != nil {
                map["RealServer"] = self.realServer!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentIndex"] as? Int32 {
                self.currentIndex = value
            }
            if let value = dict["Eip"] as? String {
                self.eip = value
            }
            if let value = dict["FrontendPort"] as? Int32 {
                self.frontendPort = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["RealServer"] as? String {
                self.realServer = value
            }
        }
    }
    public class SecRealServers : Tea.TeaModel {
        public var currentIndex: Int32?

        public var eip: String?

        public var frontendPort: Int32?

        public var instanceId: String?

        public var protocol_: String?

        public var realServer: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentIndex != nil {
                map["CurrentIndex"] = self.currentIndex!
            }
            if self.eip != nil {
                map["Eip"] = self.eip!
            }
            if self.frontendPort != nil {
                map["FrontendPort"] = self.frontendPort!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.realServer != nil {
                map["RealServer"] = self.realServer!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentIndex"] as? Int32 {
                self.currentIndex = value
            }
            if let value = dict["Eip"] as? String {
                self.eip = value
            }
            if let value = dict["FrontendPort"] as? Int32 {
                self.frontendPort = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["RealServer"] as? String {
                self.realServer = value
            }
        }
    }
    public var backendPort: Int32?

    public var bakMode: String?

    public var currentIndex: Int32?

    public var forwardProtocol: String?

    public var frontendPort: Int32?

    public var instanceId: String?

    public var priRealServers: [DescribeLayer4RulePolicyResponseBody.PriRealServers]?

    public var requestId: String?

    public var secRealServers: [DescribeLayer4RulePolicyResponseBody.SecRealServers]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendPort != nil {
            map["BackendPort"] = self.backendPort!
        }
        if self.bakMode != nil {
            map["BakMode"] = self.bakMode!
        }
        if self.currentIndex != nil {
            map["CurrentIndex"] = self.currentIndex!
        }
        if self.forwardProtocol != nil {
            map["ForwardProtocol"] = self.forwardProtocol!
        }
        if self.frontendPort != nil {
            map["FrontendPort"] = self.frontendPort!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.priRealServers != nil {
            var tmp : [Any] = []
            for k in self.priRealServers! {
                tmp.append(k.toMap())
            }
            map["PriRealServers"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secRealServers != nil {
            var tmp : [Any] = []
            for k in self.secRealServers! {
                tmp.append(k.toMap())
            }
            map["SecRealServers"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendPort"] as? Int32 {
            self.backendPort = value
        }
        if let value = dict["BakMode"] as? String {
            self.bakMode = value
        }
        if let value = dict["CurrentIndex"] as? Int32 {
            self.currentIndex = value
        }
        if let value = dict["ForwardProtocol"] as? String {
            self.forwardProtocol = value
        }
        if let value = dict["FrontendPort"] as? Int32 {
            self.frontendPort = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["PriRealServers"] as? [Any?] {
            var tmp : [DescribeLayer4RulePolicyResponseBody.PriRealServers] = []
            for v in value {
                if v != nil {
                    var model = DescribeLayer4RulePolicyResponseBody.PriRealServers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.priRealServers = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecRealServers"] as? [Any?] {
            var tmp : [DescribeLayer4RulePolicyResponseBody.SecRealServers] = []
            for v in value {
                if v != nil {
                    var model = DescribeLayer4RulePolicyResponseBody.SecRealServers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.secRealServers = tmp
        }
    }
}

public class DescribeLayer4RulePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLayer4RulePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeLayer4RulePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeLogStoreExistStatusRequest : Tea.TeaModel {
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeLogStoreExistStatusResponseBody : Tea.TeaModel {
    public var existStatus: Bool?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.existStatus != nil {
            map["ExistStatus"] = self.existStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExistStatus"] as? Bool {
            self.existStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeLogStoreExistStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLogStoreExistStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeLogStoreExistStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNetworkRegionBlockRequest : Tea.TeaModel {
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
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DescribeNetworkRegionBlockResponseBody : Tea.TeaModel {
    public class Config : Tea.TeaModel {
        public var countries: [Int64]?

        public var provinces: [Int64]?

        public var regionBlockSwitch: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.countries != nil {
                map["Countries"] = self.countries!
            }
            if self.provinces != nil {
                map["Provinces"] = self.provinces!
            }
            if self.regionBlockSwitch != nil {
                map["RegionBlockSwitch"] = self.regionBlockSwitch!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Countries"] as? [Int64] {
                self.countries = value
            }
            if let value = dict["Provinces"] as? [Int64] {
                self.provinces = value
            }
            if let value = dict["RegionBlockSwitch"] as? String {
                self.regionBlockSwitch = value
            }
        }
    }
    public var config: DescribeNetworkRegionBlockResponseBody.Config?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.config?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["Config"] = self.config?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? [String: Any?] {
            var model = DescribeNetworkRegionBlockResponseBody.Config()
            model.fromMap(value)
            self.config = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeNetworkRegionBlockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNetworkRegionBlockResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeNetworkRegionBlockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNetworkRuleAttributesRequest : Tea.TeaModel {
    public var networkRules: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkRules != nil {
            map["NetworkRules"] = self.networkRules!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkRules"] as? String {
            self.networkRules = value
        }
    }
}

public class DescribeNetworkRuleAttributesResponseBody : Tea.TeaModel {
    public class NetworkRuleAttributes : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public class Cc : Tea.TeaModel {
                public class Sblack : Tea.TeaModel {
                    public var cnt: Int32?

                    public var during: Int32?

                    public var expires: Int32?

                    public var type: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.cnt != nil {
                            map["Cnt"] = self.cnt!
                        }
                        if self.during != nil {
                            map["During"] = self.during!
                        }
                        if self.expires != nil {
                            map["Expires"] = self.expires!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Cnt"] as? Int32 {
                            self.cnt = value
                        }
                        if let value = dict["During"] as? Int32 {
                            self.during = value
                        }
                        if let value = dict["Expires"] as? Int32 {
                            self.expires = value
                        }
                        if let value = dict["Type"] as? Int32 {
                            self.type = value
                        }
                    }
                }
                public var sblack: [DescribeNetworkRuleAttributesResponseBody.NetworkRuleAttributes.Config.Cc.Sblack]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.sblack != nil {
                        var tmp : [Any] = []
                        for k in self.sblack! {
                            tmp.append(k.toMap())
                        }
                        map["Sblack"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Sblack"] as? [Any?] {
                        var tmp : [DescribeNetworkRuleAttributesResponseBody.NetworkRuleAttributes.Config.Cc.Sblack] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeNetworkRuleAttributesResponseBody.NetworkRuleAttributes.Config.Cc.Sblack()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.sblack = tmp
                    }
                }
            }
            public class PayloadLen : Tea.TeaModel {
                public var max: Int32?

                public var min: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.max != nil {
                        map["Max"] = self.max!
                    }
                    if self.min != nil {
                        map["Min"] = self.min!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Max"] as? Int32 {
                        self.max = value
                    }
                    if let value = dict["Min"] as? Int32 {
                        self.min = value
                    }
                }
            }
            public class Sla : Tea.TeaModel {
                public var cps: Int32?

                public var cpsEnable: Int32?

                public var maxconn: Int32?

                public var maxconnEnable: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cps != nil {
                        map["Cps"] = self.cps!
                    }
                    if self.cpsEnable != nil {
                        map["CpsEnable"] = self.cpsEnable!
                    }
                    if self.maxconn != nil {
                        map["Maxconn"] = self.maxconn!
                    }
                    if self.maxconnEnable != nil {
                        map["MaxconnEnable"] = self.maxconnEnable!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Cps"] as? Int32 {
                        self.cps = value
                    }
                    if let value = dict["CpsEnable"] as? Int32 {
                        self.cpsEnable = value
                    }
                    if let value = dict["Maxconn"] as? Int32 {
                        self.maxconn = value
                    }
                    if let value = dict["MaxconnEnable"] as? Int32 {
                        self.maxconnEnable = value
                    }
                }
            }
            public class Slimit : Tea.TeaModel {
                public var bps: Int64?

                public var cps: Int32?

                public var cpsEnable: Int32?

                public var cpsMode: Int32?

                public var maxconn: Int32?

                public var maxconnEnable: Int32?

                public var pps: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bps != nil {
                        map["Bps"] = self.bps!
                    }
                    if self.cps != nil {
                        map["Cps"] = self.cps!
                    }
                    if self.cpsEnable != nil {
                        map["CpsEnable"] = self.cpsEnable!
                    }
                    if self.cpsMode != nil {
                        map["CpsMode"] = self.cpsMode!
                    }
                    if self.maxconn != nil {
                        map["Maxconn"] = self.maxconn!
                    }
                    if self.maxconnEnable != nil {
                        map["MaxconnEnable"] = self.maxconnEnable!
                    }
                    if self.pps != nil {
                        map["Pps"] = self.pps!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Bps"] as? Int64 {
                        self.bps = value
                    }
                    if let value = dict["Cps"] as? Int32 {
                        self.cps = value
                    }
                    if let value = dict["CpsEnable"] as? Int32 {
                        self.cpsEnable = value
                    }
                    if let value = dict["CpsMode"] as? Int32 {
                        self.cpsMode = value
                    }
                    if let value = dict["Maxconn"] as? Int32 {
                        self.maxconn = value
                    }
                    if let value = dict["MaxconnEnable"] as? Int32 {
                        self.maxconnEnable = value
                    }
                    if let value = dict["Pps"] as? Int64 {
                        self.pps = value
                    }
                }
            }
            public var cc: DescribeNetworkRuleAttributesResponseBody.NetworkRuleAttributes.Config.Cc?

            public var nodataConn: String?

            public var payloadLen: DescribeNetworkRuleAttributesResponseBody.NetworkRuleAttributes.Config.PayloadLen?

            public var persistenceTimeout: Int32?

            public var sla: DescribeNetworkRuleAttributesResponseBody.NetworkRuleAttributes.Config.Sla?

            public var slimit: DescribeNetworkRuleAttributesResponseBody.NetworkRuleAttributes.Config.Slimit?

            public var synproxy: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cc?.validate()
                try self.payloadLen?.validate()
                try self.sla?.validate()
                try self.slimit?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cc != nil {
                    map["Cc"] = self.cc?.toMap()
                }
                if self.nodataConn != nil {
                    map["NodataConn"] = self.nodataConn!
                }
                if self.payloadLen != nil {
                    map["PayloadLen"] = self.payloadLen?.toMap()
                }
                if self.persistenceTimeout != nil {
                    map["PersistenceTimeout"] = self.persistenceTimeout!
                }
                if self.sla != nil {
                    map["Sla"] = self.sla?.toMap()
                }
                if self.slimit != nil {
                    map["Slimit"] = self.slimit?.toMap()
                }
                if self.synproxy != nil {
                    map["Synproxy"] = self.synproxy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cc"] as? [String: Any?] {
                    var model = DescribeNetworkRuleAttributesResponseBody.NetworkRuleAttributes.Config.Cc()
                    model.fromMap(value)
                    self.cc = model
                }
                if let value = dict["NodataConn"] as? String {
                    self.nodataConn = value
                }
                if let value = dict["PayloadLen"] as? [String: Any?] {
                    var model = DescribeNetworkRuleAttributesResponseBody.NetworkRuleAttributes.Config.PayloadLen()
                    model.fromMap(value)
                    self.payloadLen = model
                }
                if let value = dict["PersistenceTimeout"] as? Int32 {
                    self.persistenceTimeout = value
                }
                if let value = dict["Sla"] as? [String: Any?] {
                    var model = DescribeNetworkRuleAttributesResponseBody.NetworkRuleAttributes.Config.Sla()
                    model.fromMap(value)
                    self.sla = model
                }
                if let value = dict["Slimit"] as? [String: Any?] {
                    var model = DescribeNetworkRuleAttributesResponseBody.NetworkRuleAttributes.Config.Slimit()
                    model.fromMap(value)
                    self.slimit = model
                }
                if let value = dict["Synproxy"] as? String {
                    self.synproxy = value
                }
            }
        }
        public var config: DescribeNetworkRuleAttributesResponseBody.NetworkRuleAttributes.Config?

        public var frontendPort: Int32?

        public var instanceId: String?

        public var protocol_: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.config?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["Config"] = self.config?.toMap()
            }
            if self.frontendPort != nil {
                map["FrontendPort"] = self.frontendPort!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? [String: Any?] {
                var model = DescribeNetworkRuleAttributesResponseBody.NetworkRuleAttributes.Config()
                model.fromMap(value)
                self.config = model
            }
            if let value = dict["FrontendPort"] as? Int32 {
                self.frontendPort = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
        }
    }
    public var networkRuleAttributes: [DescribeNetworkRuleAttributesResponseBody.NetworkRuleAttributes]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkRuleAttributes != nil {
            var tmp : [Any] = []
            for k in self.networkRuleAttributes! {
                tmp.append(k.toMap())
            }
            map["NetworkRuleAttributes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkRuleAttributes"] as? [Any?] {
            var tmp : [DescribeNetworkRuleAttributesResponseBody.NetworkRuleAttributes] = []
            for v in value {
                if v != nil {
                    var model = DescribeNetworkRuleAttributesResponseBody.NetworkRuleAttributes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.networkRuleAttributes = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeNetworkRuleAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNetworkRuleAttributesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeNetworkRuleAttributesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNetworkRulesRequest : Tea.TeaModel {
    public var forwardProtocol: String?

    public var frontendPort: Int32?

    public var instanceId: String?

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
        if self.forwardProtocol != nil {
            map["ForwardProtocol"] = self.forwardProtocol!
        }
        if self.frontendPort != nil {
            map["FrontendPort"] = self.frontendPort!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ForwardProtocol"] as? String {
            self.forwardProtocol = value
        }
        if let value = dict["FrontendPort"] as? Int32 {
            self.frontendPort = value
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
    }
}

public class DescribeNetworkRulesResponseBody : Tea.TeaModel {
    public class NetworkRules : Tea.TeaModel {
        public var backendPort: Int32?

        public var frontendPort: Int32?

        public var instanceId: String?

        public var isAutoCreate: Bool?

        public var payloadRuleEnable: Int64?

        public var protocol_: String?

        public var proxyEnable: Int64?

        public var proxyStatus: String?

        public var realServers: [String]?

        public var remark: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendPort != nil {
                map["BackendPort"] = self.backendPort!
            }
            if self.frontendPort != nil {
                map["FrontendPort"] = self.frontendPort!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.isAutoCreate != nil {
                map["IsAutoCreate"] = self.isAutoCreate!
            }
            if self.payloadRuleEnable != nil {
                map["PayloadRuleEnable"] = self.payloadRuleEnable!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.proxyEnable != nil {
                map["ProxyEnable"] = self.proxyEnable!
            }
            if self.proxyStatus != nil {
                map["ProxyStatus"] = self.proxyStatus!
            }
            if self.realServers != nil {
                map["RealServers"] = self.realServers!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackendPort"] as? Int32 {
                self.backendPort = value
            }
            if let value = dict["FrontendPort"] as? Int32 {
                self.frontendPort = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["IsAutoCreate"] as? Bool {
                self.isAutoCreate = value
            }
            if let value = dict["PayloadRuleEnable"] as? Int64 {
                self.payloadRuleEnable = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["ProxyEnable"] as? Int64 {
                self.proxyEnable = value
            }
            if let value = dict["ProxyStatus"] as? String {
                self.proxyStatus = value
            }
            if let value = dict["RealServers"] as? [String] {
                self.realServers = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
        }
    }
    public var networkRules: [DescribeNetworkRulesResponseBody.NetworkRules]?

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
        if self.networkRules != nil {
            var tmp : [Any] = []
            for k in self.networkRules! {
                tmp.append(k.toMap())
            }
            map["NetworkRules"] = tmp
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
        if let value = dict["NetworkRules"] as? [Any?] {
            var tmp : [DescribeNetworkRulesResponseBody.NetworkRules] = []
            for v in value {
                if v != nil {
                    var model = DescribeNetworkRulesResponseBody.NetworkRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.networkRules = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeNetworkRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNetworkRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeNetworkRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeOpEntitiesRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var entityObject: String?

    public var entityType: Int32?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.entityObject != nil {
            map["EntityObject"] = self.entityObject!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["EntityObject"] as? String {
            self.entityObject = value
        }
        if let value = dict["EntityType"] as? Int32 {
            self.entityType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeOpEntitiesResponseBody : Tea.TeaModel {
    public class OpEntities : Tea.TeaModel {
        public var entityObject: String?

        public var entityType: Int32?

        public var gmtCreate: Int64?

        public var opAccount: String?

        public var opAction: Int32?

        public var opDesc: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entityObject != nil {
                map["EntityObject"] = self.entityObject!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.opAccount != nil {
                map["OpAccount"] = self.opAccount!
            }
            if self.opAction != nil {
                map["OpAction"] = self.opAction!
            }
            if self.opDesc != nil {
                map["OpDesc"] = self.opDesc!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EntityObject"] as? String {
                self.entityObject = value
            }
            if let value = dict["EntityType"] as? Int32 {
                self.entityType = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["OpAccount"] as? String {
                self.opAccount = value
            }
            if let value = dict["OpAction"] as? Int32 {
                self.opAction = value
            }
            if let value = dict["OpDesc"] as? String {
                self.opDesc = value
            }
        }
    }
    public var opEntities: [DescribeOpEntitiesResponseBody.OpEntities]?

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
        if self.opEntities != nil {
            var tmp : [Any] = []
            for k in self.opEntities! {
                tmp.append(k.toMap())
            }
            map["OpEntities"] = tmp
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
        if let value = dict["OpEntities"] as? [Any?] {
            var tmp : [DescribeOpEntitiesResponseBody.OpEntities] = []
            for v in value {
                if v != nil {
                    var model = DescribeOpEntitiesResponseBody.OpEntities()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.opEntities = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeOpEntitiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOpEntitiesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeOpEntitiesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePortRequest : Tea.TeaModel {
    public var frontendPort: Int32?

    public var frontendProtocol: String?

    public var instanceId: String?

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
        if self.frontendPort != nil {
            map["FrontendPort"] = self.frontendPort!
        }
        if self.frontendProtocol != nil {
            map["FrontendProtocol"] = self.frontendProtocol!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FrontendPort"] as? Int32 {
            self.frontendPort = value
        }
        if let value = dict["FrontendProtocol"] as? String {
            self.frontendProtocol = value
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
    }
}

public class DescribePortResponseBody : Tea.TeaModel {
    public class NetworkRules : Tea.TeaModel {
        public var backendPort: Int32?

        public var frontendPort: Int32?

        public var frontendProtocol: String?

        public var instanceId: String?

        public var isAutoCreate: Bool?

        public var realServers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendPort != nil {
                map["BackendPort"] = self.backendPort!
            }
            if self.frontendPort != nil {
                map["FrontendPort"] = self.frontendPort!
            }
            if self.frontendProtocol != nil {
                map["FrontendProtocol"] = self.frontendProtocol!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.isAutoCreate != nil {
                map["IsAutoCreate"] = self.isAutoCreate!
            }
            if self.realServers != nil {
                map["RealServers"] = self.realServers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackendPort"] as? Int32 {
                self.backendPort = value
            }
            if let value = dict["FrontendPort"] as? Int32 {
                self.frontendPort = value
            }
            if let value = dict["FrontendProtocol"] as? String {
                self.frontendProtocol = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["IsAutoCreate"] as? Bool {
                self.isAutoCreate = value
            }
            if let value = dict["RealServers"] as? [String] {
                self.realServers = value
            }
        }
    }
    public var networkRules: [DescribePortResponseBody.NetworkRules]?

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
        if self.networkRules != nil {
            var tmp : [Any] = []
            for k in self.networkRules! {
                tmp.append(k.toMap())
            }
            map["NetworkRules"] = tmp
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
        if let value = dict["NetworkRules"] as? [Any?] {
            var tmp : [DescribePortResponseBody.NetworkRules] = []
            for v in value {
                if v != nil {
                    var model = DescribePortResponseBody.NetworkRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.networkRules = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribePortResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePortResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePortResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePortAttackMaxFlowRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var instanceIds: [String]?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribePortAttackMaxFlowResponseBody : Tea.TeaModel {
    public var bps: Int64?

    public var pps: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bps != nil {
            map["Bps"] = self.bps!
        }
        if self.pps != nil {
            map["Pps"] = self.pps!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bps"] as? Int64 {
            self.bps = value
        }
        if let value = dict["Pps"] as? Int64 {
            self.pps = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribePortAttackMaxFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePortAttackMaxFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePortAttackMaxFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePortAutoCcStatusRequest : Tea.TeaModel {
    public var instanceIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
    }
}

public class DescribePortAutoCcStatusResponseBody : Tea.TeaModel {
    public class PortAutoCcStatus : Tea.TeaModel {
        public var mode: String?

        public var switch_: String?

        public var webMode: String?

        public var webSwitch: String?

        public override init() {
            super.init()
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
            if self.switch_ != nil {
                map["Switch"] = self.switch_!
            }
            if self.webMode != nil {
                map["WebMode"] = self.webMode!
            }
            if self.webSwitch != nil {
                map["WebSwitch"] = self.webSwitch!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Mode"] as? String {
                self.mode = value
            }
            if let value = dict["Switch"] as? String {
                self.switch_ = value
            }
            if let value = dict["WebMode"] as? String {
                self.webMode = value
            }
            if let value = dict["WebSwitch"] as? String {
                self.webSwitch = value
            }
        }
    }
    public var portAutoCcStatus: [DescribePortAutoCcStatusResponseBody.PortAutoCcStatus]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.portAutoCcStatus != nil {
            var tmp : [Any] = []
            for k in self.portAutoCcStatus! {
                tmp.append(k.toMap())
            }
            map["PortAutoCcStatus"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PortAutoCcStatus"] as? [Any?] {
            var tmp : [DescribePortAutoCcStatusResponseBody.PortAutoCcStatus] = []
            for v in value {
                if v != nil {
                    var model = DescribePortAutoCcStatusResponseBody.PortAutoCcStatus()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.portAutoCcStatus = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribePortAutoCcStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePortAutoCcStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePortAutoCcStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePortCcAttackTopIPRequest : Tea.TeaModel {
    public var ip: String?

    public var limit: Int64?

    public var port: String?

    public var startTimestamp: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["StartTimestamp"] as? Int64 {
            self.startTimestamp = value
        }
    }
}

public class DescribePortCcAttackTopIPResponseBody : Tea.TeaModel {
    public class TopIp : Tea.TeaModel {
        public var areaId: String?

        public var pv: Int64?

        public var srcIp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.areaId != nil {
                map["AreaId"] = self.areaId!
            }
            if self.pv != nil {
                map["Pv"] = self.pv!
            }
            if self.srcIp != nil {
                map["SrcIp"] = self.srcIp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AreaId"] as? String {
                self.areaId = value
            }
            if let value = dict["Pv"] as? Int64 {
                self.pv = value
            }
            if let value = dict["SrcIp"] as? String {
                self.srcIp = value
            }
        }
    }
    public var requestId: String?

    public var topIp: [DescribePortCcAttackTopIPResponseBody.TopIp]?

    public override init() {
        super.init()
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
        if self.topIp != nil {
            var tmp : [Any] = []
            for k in self.topIp! {
                tmp.append(k.toMap())
            }
            map["TopIp"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TopIp"] as? [Any?] {
            var tmp : [DescribePortCcAttackTopIPResponseBody.TopIp] = []
            for v in value {
                if v != nil {
                    var model = DescribePortCcAttackTopIPResponseBody.TopIp()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.topIp = tmp
        }
    }
}

public class DescribePortCcAttackTopIPResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePortCcAttackTopIPResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePortCcAttackTopIPResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePortConnsCountRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var instanceIds: [String]?

    public var port: String?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribePortConnsCountResponseBody : Tea.TeaModel {
    public var actConns: Int64?

    public var conns: Int64?

    public var cps: Int64?

    public var inActConns: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actConns != nil {
            map["ActConns"] = self.actConns!
        }
        if self.conns != nil {
            map["Conns"] = self.conns!
        }
        if self.cps != nil {
            map["Cps"] = self.cps!
        }
        if self.inActConns != nil {
            map["InActConns"] = self.inActConns!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActConns"] as? Int64 {
            self.actConns = value
        }
        if let value = dict["Conns"] as? Int64 {
            self.conns = value
        }
        if let value = dict["Cps"] as? Int64 {
            self.cps = value
        }
        if let value = dict["InActConns"] as? Int64 {
            self.inActConns = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribePortConnsCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePortConnsCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePortConnsCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePortConnsListRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var instanceIds: [String]?

    public var interval: Int32?

    public var port: String?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["Interval"] as? Int32 {
            self.interval = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribePortConnsListResponseBody : Tea.TeaModel {
    public class ConnsList : Tea.TeaModel {
        public var actConns: Int64?

        public var conns: Int64?

        public var cps: Int64?

        public var inActConns: Int64?

        public var index: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actConns != nil {
                map["ActConns"] = self.actConns!
            }
            if self.conns != nil {
                map["Conns"] = self.conns!
            }
            if self.cps != nil {
                map["Cps"] = self.cps!
            }
            if self.inActConns != nil {
                map["InActConns"] = self.inActConns!
            }
            if self.index != nil {
                map["Index"] = self.index!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActConns"] as? Int64 {
                self.actConns = value
            }
            if let value = dict["Conns"] as? Int64 {
                self.conns = value
            }
            if let value = dict["Cps"] as? Int64 {
                self.cps = value
            }
            if let value = dict["InActConns"] as? Int64 {
                self.inActConns = value
            }
            if let value = dict["Index"] as? Int64 {
                self.index = value
            }
        }
    }
    public var connsList: [DescribePortConnsListResponseBody.ConnsList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connsList != nil {
            var tmp : [Any] = []
            for k in self.connsList! {
                tmp.append(k.toMap())
            }
            map["ConnsList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConnsList"] as? [Any?] {
            var tmp : [DescribePortConnsListResponseBody.ConnsList] = []
            for v in value {
                if v != nil {
                    var model = DescribePortConnsListResponseBody.ConnsList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.connsList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribePortConnsListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePortConnsListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePortConnsListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePortFlowListRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var instanceIds: [String]?

    public var interval: Int32?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["Interval"] as? Int32 {
            self.interval = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribePortFlowListResponseBody : Tea.TeaModel {
    public class PortFlowList : Tea.TeaModel {
        public var attackBps: Int64?

        public var attackPps: Int64?

        public var inBps: Int64?

        public var inPps: Int64?

        public var index: Int64?

        public var outBps: Int64?

        public var outPps: Int64?

        public var region: String?

        public var slaBpsDropBps: Int64?

        public var slaBpsDropPps: Int64?

        public var slaConnDropBps: Int64?

        public var slaConnDropPps: Int64?

        public var slaCpsDropBps: Int64?

        public var slaCpsDropPps: Int64?

        public var slaPpsDropBps: Int64?

        public var slaPpsDropPps: Int64?

        public var time: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attackBps != nil {
                map["AttackBps"] = self.attackBps!
            }
            if self.attackPps != nil {
                map["AttackPps"] = self.attackPps!
            }
            if self.inBps != nil {
                map["InBps"] = self.inBps!
            }
            if self.inPps != nil {
                map["InPps"] = self.inPps!
            }
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.outBps != nil {
                map["OutBps"] = self.outBps!
            }
            if self.outPps != nil {
                map["OutPps"] = self.outPps!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.slaBpsDropBps != nil {
                map["SlaBpsDropBps"] = self.slaBpsDropBps!
            }
            if self.slaBpsDropPps != nil {
                map["SlaBpsDropPps"] = self.slaBpsDropPps!
            }
            if self.slaConnDropBps != nil {
                map["SlaConnDropBps"] = self.slaConnDropBps!
            }
            if self.slaConnDropPps != nil {
                map["SlaConnDropPps"] = self.slaConnDropPps!
            }
            if self.slaCpsDropBps != nil {
                map["SlaCpsDropBps"] = self.slaCpsDropBps!
            }
            if self.slaCpsDropPps != nil {
                map["SlaCpsDropPps"] = self.slaCpsDropPps!
            }
            if self.slaPpsDropBps != nil {
                map["SlaPpsDropBps"] = self.slaPpsDropBps!
            }
            if self.slaPpsDropPps != nil {
                map["SlaPpsDropPps"] = self.slaPpsDropPps!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttackBps"] as? Int64 {
                self.attackBps = value
            }
            if let value = dict["AttackPps"] as? Int64 {
                self.attackPps = value
            }
            if let value = dict["InBps"] as? Int64 {
                self.inBps = value
            }
            if let value = dict["InPps"] as? Int64 {
                self.inPps = value
            }
            if let value = dict["Index"] as? Int64 {
                self.index = value
            }
            if let value = dict["OutBps"] as? Int64 {
                self.outBps = value
            }
            if let value = dict["OutPps"] as? Int64 {
                self.outPps = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["SlaBpsDropBps"] as? Int64 {
                self.slaBpsDropBps = value
            }
            if let value = dict["SlaBpsDropPps"] as? Int64 {
                self.slaBpsDropPps = value
            }
            if let value = dict["SlaConnDropBps"] as? Int64 {
                self.slaConnDropBps = value
            }
            if let value = dict["SlaConnDropPps"] as? Int64 {
                self.slaConnDropPps = value
            }
            if let value = dict["SlaCpsDropBps"] as? Int64 {
                self.slaCpsDropBps = value
            }
            if let value = dict["SlaCpsDropPps"] as? Int64 {
                self.slaCpsDropPps = value
            }
            if let value = dict["SlaPpsDropBps"] as? Int64 {
                self.slaPpsDropBps = value
            }
            if let value = dict["SlaPpsDropPps"] as? Int64 {
                self.slaPpsDropPps = value
            }
            if let value = dict["Time"] as? Int64 {
                self.time = value
            }
        }
    }
    public var portFlowList: [DescribePortFlowListResponseBody.PortFlowList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.portFlowList != nil {
            var tmp : [Any] = []
            for k in self.portFlowList! {
                tmp.append(k.toMap())
            }
            map["PortFlowList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PortFlowList"] as? [Any?] {
            var tmp : [DescribePortFlowListResponseBody.PortFlowList] = []
            for v in value {
                if v != nil {
                    var model = DescribePortFlowListResponseBody.PortFlowList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.portFlowList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribePortFlowListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePortFlowListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePortFlowListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePortMaxConnsRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var instanceIds: [String]?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribePortMaxConnsResponseBody : Tea.TeaModel {
    public class PortMaxConns : Tea.TeaModel {
        public var cps: Int64?

        public var ip: String?

        public var port: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cps != nil {
                map["Cps"] = self.cps!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Cps"] as? Int64 {
                self.cps = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
        }
    }
    public var portMaxConns: [DescribePortMaxConnsResponseBody.PortMaxConns]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.portMaxConns != nil {
            var tmp : [Any] = []
            for k in self.portMaxConns! {
                tmp.append(k.toMap())
            }
            map["PortMaxConns"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PortMaxConns"] as? [Any?] {
            var tmp : [DescribePortMaxConnsResponseBody.PortMaxConns] = []
            for v in value {
                if v != nil {
                    var model = DescribePortMaxConnsResponseBody.PortMaxConns()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.portMaxConns = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribePortMaxConnsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePortMaxConnsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePortMaxConnsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePortViewSourceCountriesRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var instanceIds: [String]?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribePortViewSourceCountriesResponseBody : Tea.TeaModel {
    public class SourceCountrys : Tea.TeaModel {
        public var count: Int64?

        public var countryId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.countryId != nil {
                map["CountryId"] = self.countryId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["CountryId"] as? String {
                self.countryId = value
            }
        }
    }
    public var requestId: String?

    public var sourceCountrys: [DescribePortViewSourceCountriesResponseBody.SourceCountrys]?

    public override init() {
        super.init()
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
        if self.sourceCountrys != nil {
            var tmp : [Any] = []
            for k in self.sourceCountrys! {
                tmp.append(k.toMap())
            }
            map["SourceCountrys"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SourceCountrys"] as? [Any?] {
            var tmp : [DescribePortViewSourceCountriesResponseBody.SourceCountrys] = []
            for v in value {
                if v != nil {
                    var model = DescribePortViewSourceCountriesResponseBody.SourceCountrys()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sourceCountrys = tmp
        }
    }
}

public class DescribePortViewSourceCountriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePortViewSourceCountriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePortViewSourceCountriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePortViewSourceIspsRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var instanceIds: [String]?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribePortViewSourceIspsResponseBody : Tea.TeaModel {
    public class Isps : Tea.TeaModel {
        public var count: Int64?

        public var ispId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.ispId != nil {
                map["IspId"] = self.ispId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["IspId"] as? String {
                self.ispId = value
            }
        }
    }
    public var isps: [DescribePortViewSourceIspsResponseBody.Isps]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isps != nil {
            var tmp : [Any] = []
            for k in self.isps! {
                tmp.append(k.toMap())
            }
            map["Isps"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Isps"] as? [Any?] {
            var tmp : [DescribePortViewSourceIspsResponseBody.Isps] = []
            for v in value {
                if v != nil {
                    var model = DescribePortViewSourceIspsResponseBody.Isps()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.isps = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribePortViewSourceIspsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePortViewSourceIspsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePortViewSourceIspsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePortViewSourceProvincesRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var instanceIds: [String]?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribePortViewSourceProvincesResponseBody : Tea.TeaModel {
    public class SourceProvinces : Tea.TeaModel {
        public var count: Int64?

        public var provinceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.provinceId != nil {
                map["ProvinceId"] = self.provinceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["ProvinceId"] as? String {
                self.provinceId = value
            }
        }
    }
    public var requestId: String?

    public var sourceProvinces: [DescribePortViewSourceProvincesResponseBody.SourceProvinces]?

    public override init() {
        super.init()
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
        if self.sourceProvinces != nil {
            var tmp : [Any] = []
            for k in self.sourceProvinces! {
                tmp.append(k.toMap())
            }
            map["SourceProvinces"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SourceProvinces"] as? [Any?] {
            var tmp : [DescribePortViewSourceProvincesResponseBody.SourceProvinces] = []
            for v in value {
                if v != nil {
                    var model = DescribePortViewSourceProvincesResponseBody.SourceProvinces()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sourceProvinces = tmp
        }
    }
}

public class DescribePortViewSourceProvincesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePortViewSourceProvincesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePortViewSourceProvincesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSceneDefenseObjectsRequest : Tea.TeaModel {
    public var policyId: String?

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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeSceneDefenseObjectsResponseBody : Tea.TeaModel {
    public class Objects : Tea.TeaModel {
        public var domain: String?

        public var policyId: String?

        public var vip: String?

        public override init() {
            super.init()
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
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.vip != nil {
                map["Vip"] = self.vip!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["PolicyId"] as? String {
                self.policyId = value
            }
            if let value = dict["Vip"] as? String {
                self.vip = value
            }
        }
    }
    public var objects: [DescribeSceneDefenseObjectsResponseBody.Objects]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.objects != nil {
            var tmp : [Any] = []
            for k in self.objects! {
                tmp.append(k.toMap())
            }
            map["Objects"] = tmp
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
        if let value = dict["Objects"] as? [Any?] {
            var tmp : [DescribeSceneDefenseObjectsResponseBody.Objects] = []
            for v in value {
                if v != nil {
                    var model = DescribeSceneDefenseObjectsResponseBody.Objects()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.objects = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeSceneDefenseObjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSceneDefenseObjectsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSceneDefenseObjectsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSceneDefensePoliciesRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public var status: String?

    public var template: String?

    public override init() {
        super.init()
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.template != nil {
            map["Template"] = self.template!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Template"] as? String {
            self.template = value
        }
    }
}

public class DescribeSceneDefensePoliciesResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public class RuntimePolicies : Tea.TeaModel {
            public var newValue: String?

            public var policyType: Int32?

            public var status: Int32?

            public var oldValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.newValue != nil {
                    map["NewValue"] = self.newValue!
                }
                if self.policyType != nil {
                    map["PolicyType"] = self.policyType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.oldValue != nil {
                    map["oldValue"] = self.oldValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NewValue"] as? String {
                    self.newValue = value
                }
                if let value = dict["PolicyType"] as? Int32 {
                    self.policyType = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["oldValue"] as? String {
                    self.oldValue = value
                }
            }
        }
        public var done: Int32?

        public var endTime: Int64?

        public var name: String?

        public var objectCount: Int32?

        public var policyId: String?

        public var runtimePolicies: [DescribeSceneDefensePoliciesResponseBody.Policies.RuntimePolicies]?

        public var startTime: Int64?

        public var status: Int32?

        public var template: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.done != nil {
                map["Done"] = self.done!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.objectCount != nil {
                map["ObjectCount"] = self.objectCount!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.runtimePolicies != nil {
                var tmp : [Any] = []
                for k in self.runtimePolicies! {
                    tmp.append(k.toMap())
                }
                map["RuntimePolicies"] = tmp
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.template != nil {
                map["Template"] = self.template!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Done"] as? Int32 {
                self.done = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ObjectCount"] as? Int32 {
                self.objectCount = value
            }
            if let value = dict["PolicyId"] as? String {
                self.policyId = value
            }
            if let value = dict["RuntimePolicies"] as? [Any?] {
                var tmp : [DescribeSceneDefensePoliciesResponseBody.Policies.RuntimePolicies] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSceneDefensePoliciesResponseBody.Policies.RuntimePolicies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.runtimePolicies = tmp
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["Template"] as? String {
                self.template = value
            }
        }
    }
    public var policies: [DescribeSceneDefensePoliciesResponseBody.Policies]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policies != nil {
            var tmp : [Any] = []
            for k in self.policies! {
                tmp.append(k.toMap())
            }
            map["Policies"] = tmp
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
        if let value = dict["Policies"] as? [Any?] {
            var tmp : [DescribeSceneDefensePoliciesResponseBody.Policies] = []
            for v in value {
                if v != nil {
                    var model = DescribeSceneDefensePoliciesResponseBody.Policies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policies = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeSceneDefensePoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSceneDefensePoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSceneDefensePoliciesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSchedulerRulesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
    }
}

public class DescribeSchedulerRulesResponseBody : Tea.TeaModel {
    public class SchedulerRules : Tea.TeaModel {
        public class Param : Tea.TeaModel {
            public class ParamData : Tea.TeaModel {
                public var cloudInstanceId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cloudInstanceId != nil {
                        map["CloudInstanceId"] = self.cloudInstanceId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CloudInstanceId"] as? String {
                        self.cloudInstanceId = value
                    }
                }
            }
            public var paramData: DescribeSchedulerRulesResponseBody.SchedulerRules.Param.ParamData?

            public var paramType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.paramData?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.paramData != nil {
                    map["ParamData"] = self.paramData?.toMap()
                }
                if self.paramType != nil {
                    map["ParamType"] = self.paramType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ParamData"] as? [String: Any?] {
                    var model = DescribeSchedulerRulesResponseBody.SchedulerRules.Param.ParamData()
                    model.fromMap(value)
                    self.paramData = model
                }
                if let value = dict["ParamType"] as? String {
                    self.paramType = value
                }
            }
        }
        public class Rules : Tea.TeaModel {
            public var line: String?

            public var priority: Int32?

            public var regionId: String?

            public var restoreDelay: Int32?

            public var status: Int32?

            public var type: String?

            public var value: String?

            public var valueType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.line != nil {
                    map["Line"] = self.line!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.restoreDelay != nil {
                    map["RestoreDelay"] = self.restoreDelay!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.type != nil {
                    map["Type"] = self.type!
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
                if let value = dict["Line"] as? String {
                    self.line = value
                }
                if let value = dict["Priority"] as? Int32 {
                    self.priority = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["RestoreDelay"] as? Int32 {
                    self.restoreDelay = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
                if let value = dict["ValueType"] as? Int32 {
                    self.valueType = value
                }
            }
        }
        public var cname: String?

        public var param: DescribeSchedulerRulesResponseBody.SchedulerRules.Param?

        public var ruleName: String?

        public var ruleType: String?

        public var rules: [DescribeSchedulerRulesResponseBody.SchedulerRules.Rules]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.param?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cname != nil {
                map["Cname"] = self.cname!
            }
            if self.param != nil {
                map["Param"] = self.param?.toMap()
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.ruleType != nil {
                map["RuleType"] = self.ruleType!
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
            if let value = dict["Cname"] as? String {
                self.cname = value
            }
            if let value = dict["Param"] as? [String: Any?] {
                var model = DescribeSchedulerRulesResponseBody.SchedulerRules.Param()
                model.fromMap(value)
                self.param = model
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["RuleType"] as? String {
                self.ruleType = value
            }
            if let value = dict["Rules"] as? [Any?] {
                var tmp : [DescribeSchedulerRulesResponseBody.SchedulerRules.Rules] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSchedulerRulesResponseBody.SchedulerRules.Rules()
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
    public var requestId: String?

    public var schedulerRules: [DescribeSchedulerRulesResponseBody.SchedulerRules]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.schedulerRules != nil {
            var tmp : [Any] = []
            for k in self.schedulerRules! {
                tmp.append(k.toMap())
            }
            map["SchedulerRules"] = tmp
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
        if let value = dict["SchedulerRules"] as? [Any?] {
            var tmp : [DescribeSchedulerRulesResponseBody.SchedulerRules] = []
            for v in value {
                if v != nil {
                    var model = DescribeSchedulerRulesResponseBody.SchedulerRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.schedulerRules = tmp
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class DescribeSchedulerRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSchedulerRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSchedulerRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSlaEventListRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var ip: String?

    public var page: Int64?

    public var pageSize: Int64?

    public var region: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["Page"] as? Int64 {
            self.page = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeSlaEventListResponseBody : Tea.TeaModel {
    public class SlaEvent : Tea.TeaModel {
        public var endTime: Int64?

        public var ip: String?

        public var region: String?

        public var startTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
        }
    }
    public var requestId: String?

    public var slaEvent: [DescribeSlaEventListResponseBody.SlaEvent]?

    public var total: Int64?

    public override init() {
        super.init()
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
        if self.slaEvent != nil {
            var tmp : [Any] = []
            for k in self.slaEvent! {
                tmp.append(k.toMap())
            }
            map["SlaEvent"] = tmp
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SlaEvent"] as? [Any?] {
            var tmp : [DescribeSlaEventListResponseBody.SlaEvent] = []
            for v in value {
                if v != nil {
                    var model = DescribeSlaEventListResponseBody.SlaEvent()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.slaEvent = tmp
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
        }
    }
}

public class DescribeSlaEventListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlaEventListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSlaEventListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSlsAuthStatusRequest : Tea.TeaModel {
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeSlsAuthStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var slsAuthStatus: Bool?

    public override init() {
        super.init()
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
        if self.slsAuthStatus != nil {
            map["SlsAuthStatus"] = self.slsAuthStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SlsAuthStatus"] as? Bool {
            self.slsAuthStatus = value
        }
    }
}

public class DescribeSlsAuthStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlsAuthStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSlsAuthStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSlsLogstoreInfoRequest : Tea.TeaModel {
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeSlsLogstoreInfoResponseBody : Tea.TeaModel {
    public var logStore: String?

    public var project: String?

    public var quota: Int64?

    public var requestId: String?

    public var ttl: Int32?

    public var used: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logStore != nil {
            map["LogStore"] = self.logStore!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.quota != nil {
            map["Quota"] = self.quota!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        if self.used != nil {
            map["Used"] = self.used!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogStore"] as? String {
            self.logStore = value
        }
        if let value = dict["Project"] as? String {
            self.project = value
        }
        if let value = dict["Quota"] as? Int64 {
            self.quota = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Ttl"] as? Int32 {
            self.ttl = value
        }
        if let value = dict["Used"] as? Int64 {
            self.used = value
        }
    }
}

public class DescribeSlsLogstoreInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlsLogstoreInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSlsLogstoreInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSlsOpenStatusRequest : Tea.TeaModel {
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeSlsOpenStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var slsOpenStatus: Bool?

    public override init() {
        super.init()
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
        if self.slsOpenStatus != nil {
            map["SlsOpenStatus"] = self.slsOpenStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SlsOpenStatus"] as? Bool {
            self.slsOpenStatus = value
        }
    }
}

public class DescribeSlsOpenStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlsOpenStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSlsOpenStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeStsGrantStatusRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public var role: String?

    public override init() {
        super.init()
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
        if self.role != nil {
            map["Role"] = self.role!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
    }
}

public class DescribeStsGrantStatusResponseBody : Tea.TeaModel {
    public class StsGrant : Tea.TeaModel {
        public var status: Int32?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var requestId: String?

    public var stsGrant: DescribeStsGrantStatusResponseBody.StsGrant?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stsGrant?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stsGrant != nil {
            map["StsGrant"] = self.stsGrant?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StsGrant"] as? [String: Any?] {
            var model = DescribeStsGrantStatusResponseBody.StsGrant()
            model.fromMap(value)
            self.stsGrant = model
        }
    }
}

public class DescribeStsGrantStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeStsGrantStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeStsGrantStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSystemLogRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var entityObject: String?

    public var entityType: Int32?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.entityObject != nil {
            map["EntityObject"] = self.entityObject!
        }
        if self.entityType != nil {
            map["EntityType"] = self.entityType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["EntityObject"] as? String {
            self.entityObject = value
        }
        if let value = dict["EntityType"] as? Int32 {
            self.entityType = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeSystemLogResponseBody : Tea.TeaModel {
    public class SystemLog : Tea.TeaModel {
        public var entityObject: String?

        public var entityType: Int32?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var opAccount: String?

        public var opAction: Int32?

        public var opDesc: String?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entityObject != nil {
                map["EntityObject"] = self.entityObject!
            }
            if self.entityType != nil {
                map["EntityType"] = self.entityType!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.opAccount != nil {
                map["OpAccount"] = self.opAccount!
            }
            if self.opAction != nil {
                map["OpAction"] = self.opAction!
            }
            if self.opDesc != nil {
                map["OpDesc"] = self.opDesc!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EntityObject"] as? String {
                self.entityObject = value
            }
            if let value = dict["EntityType"] as? Int32 {
                self.entityType = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["OpAccount"] as? String {
                self.opAccount = value
            }
            if let value = dict["OpAction"] as? Int32 {
                self.opAction = value
            }
            if let value = dict["OpDesc"] as? String {
                self.opDesc = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var requestId: String?

    public var systemLog: [DescribeSystemLogResponseBody.SystemLog]?

    public var total: Int64?

    public override init() {
        super.init()
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
        if self.systemLog != nil {
            var tmp : [Any] = []
            for k in self.systemLog! {
                tmp.append(k.toMap())
            }
            map["SystemLog"] = tmp
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SystemLog"] as? [Any?] {
            var tmp : [DescribeSystemLogResponseBody.SystemLog] = []
            for v in value {
                if v != nil {
                    var model = DescribeSystemLogResponseBody.SystemLog()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.systemLog = tmp
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
        }
    }
}

public class DescribeSystemLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSystemLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSystemLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTagKeysRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
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
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class DescribeTagKeysResponseBody : Tea.TeaModel {
    public class TagKeys : Tea.TeaModel {
        public var tagCount: Int32?

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
            if self.tagCount != nil {
                map["TagCount"] = self.tagCount!
            }
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagCount"] as? Int32 {
                self.tagCount = value
            }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var tagKeys: [DescribeTagKeysResponseBody.TagKeys]?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagKeys"] as? [Any?] {
            var tmp : [DescribeTagKeysResponseBody.TagKeys] = []
            for v in value {
                if v != nil {
                    var model = DescribeTagKeysResponseBody.TagKeys()
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

public class DescribeTagKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTagKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeTagKeysResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTagResourcesRequest : Tea.TeaModel {
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
    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceIds: [String]?

    public var resourceType: String?

    public var tags: [DescribeTagResourcesRequest.Tags]?

    public override init() {
        super.init()
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceIds"] as? [String] {
            self.resourceIds = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [DescribeTagResourcesRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = DescribeTagResourcesRequest.Tags()
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

public class DescribeTagResourcesResponseBody : Tea.TeaModel {
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
        public var tagResource: [DescribeTagResourcesResponseBody.TagResources.TagResource]?

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagResource"] as? [Any?] {
                var tmp : [DescribeTagResourcesResponseBody.TagResources.TagResource] = []
                for v in value {
                    if v != nil {
                        var model = DescribeTagResourcesResponseBody.TagResources.TagResource()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagResource = tmp
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: DescribeTagResourcesResponseBody.TagResources?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagResources"] as? [String: Any?] {
            var model = DescribeTagResourcesResponseBody.TagResources()
            model.fromMap(value)
            self.tagResources = model
        }
    }
}

public class DescribeTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTotalAttackMaxFlowRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var instanceIds: [String]?

    public var resourceGroupId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeTotalAttackMaxFlowResponseBody : Tea.TeaModel {
    public var bps: Int64?

    public var pps: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bps != nil {
            map["Bps"] = self.bps!
        }
        if self.pps != nil {
            map["Pps"] = self.pps!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bps"] as? Int64 {
            self.bps = value
        }
        if let value = dict["Pps"] as? Int64 {
            self.pps = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeTotalAttackMaxFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTotalAttackMaxFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeTotalAttackMaxFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUdpReflectRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
    }
}

public class DescribeUdpReflectResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var udpSports: [String]?

    public override init() {
        super.init()
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
        if self.udpSports != nil {
            map["UdpSports"] = self.udpSports!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UdpSports"] as? [String] {
            self.udpSports = value
        }
    }
}

public class DescribeUdpReflectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUdpReflectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeUdpReflectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUnBlackholeCountRequest : Tea.TeaModel {
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeUnBlackholeCountResponseBody : Tea.TeaModel {
    public var remainCount: Int32?

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
        if self.remainCount != nil {
            map["RemainCount"] = self.remainCount!
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
        if let value = dict["RemainCount"] as? Int32 {
            self.remainCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeUnBlackholeCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUnBlackholeCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeUnBlackholeCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUnBlockCountRequest : Tea.TeaModel {
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeUnBlockCountResponseBody : Tea.TeaModel {
    public var remainCount: Int32?

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
        if self.remainCount != nil {
            map["RemainCount"] = self.remainCount!
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
        if let value = dict["RemainCount"] as? Int32 {
            self.remainCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeUnBlockCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUnBlockCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeUnBlockCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWebAccessLogDispatchStatusRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeWebAccessLogDispatchStatusResponseBody : Tea.TeaModel {
    public class SlsConfigStatus : Tea.TeaModel {
        public var domain: String?

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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["Enable"] as? Bool {
                self.enable = value
            }
        }
    }
    public var requestId: String?

    public var slsConfigStatus: [DescribeWebAccessLogDispatchStatusResponseBody.SlsConfigStatus]?

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
        if self.slsConfigStatus != nil {
            var tmp : [Any] = []
            for k in self.slsConfigStatus! {
                tmp.append(k.toMap())
            }
            map["SlsConfigStatus"] = tmp
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
        if let value = dict["SlsConfigStatus"] as? [Any?] {
            var tmp : [DescribeWebAccessLogDispatchStatusResponseBody.SlsConfigStatus] = []
            for v in value {
                if v != nil {
                    var model = DescribeWebAccessLogDispatchStatusResponseBody.SlsConfigStatus()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.slsConfigStatus = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeWebAccessLogDispatchStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebAccessLogDispatchStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWebAccessLogDispatchStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWebAccessLogEmptyCountRequest : Tea.TeaModel {
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeWebAccessLogEmptyCountResponseBody : Tea.TeaModel {
    public var availableCount: Int32?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.availableCount != nil {
            map["AvailableCount"] = self.availableCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AvailableCount"] as? Int32 {
            self.availableCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeWebAccessLogEmptyCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebAccessLogEmptyCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWebAccessLogEmptyCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWebAccessLogStatusRequest : Tea.TeaModel {
    public var domain: String?

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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeWebAccessLogStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var slsLogstore: String?

    public var slsProject: String?

    public var slsStatus: Bool?

    public override init() {
        super.init()
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
        if self.slsLogstore != nil {
            map["SlsLogstore"] = self.slsLogstore!
        }
        if self.slsProject != nil {
            map["SlsProject"] = self.slsProject!
        }
        if self.slsStatus != nil {
            map["SlsStatus"] = self.slsStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SlsLogstore"] as? String {
            self.slsLogstore = value
        }
        if let value = dict["SlsProject"] as? String {
            self.slsProject = value
        }
        if let value = dict["SlsStatus"] as? Bool {
            self.slsStatus = value
        }
    }
}

public class DescribeWebAccessLogStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebAccessLogStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWebAccessLogStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWebAccessModeRequest : Tea.TeaModel {
    public var domains: [String]?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domains"] as? [String] {
            self.domains = value
        }
    }
}

public class DescribeWebAccessModeResponseBody : Tea.TeaModel {
    public class DomainModes : Tea.TeaModel {
        public var accessMode: Int32?

        public var domain: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessMode != nil {
                map["AccessMode"] = self.accessMode!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessMode"] as? Int32 {
                self.accessMode = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
        }
    }
    public var domainModes: [DescribeWebAccessModeResponseBody.DomainModes]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainModes != nil {
            var tmp : [Any] = []
            for k in self.domainModes! {
                tmp.append(k.toMap())
            }
            map["DomainModes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainModes"] as? [Any?] {
            var tmp : [DescribeWebAccessModeResponseBody.DomainModes] = []
            for v in value {
                if v != nil {
                    var model = DescribeWebAccessModeResponseBody.DomainModes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.domainModes = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeWebAccessModeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebAccessModeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWebAccessModeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWebAreaBlockConfigsRequest : Tea.TeaModel {
    public var domains: [String]?

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
        if self.domains != nil {
            map["Domains"] = self.domains!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domains"] as? [String] {
            self.domains = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeWebAreaBlockConfigsResponseBody : Tea.TeaModel {
    public class AreaBlockConfigs : Tea.TeaModel {
        public class RegionList : Tea.TeaModel {
            public var block: Int32?

            public var region: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.block != nil {
                    map["Block"] = self.block!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Block"] as? Int32 {
                    self.block = value
                }
                if let value = dict["Region"] as? String {
                    self.region = value
                }
            }
        }
        public var domain: String?

        public var regionList: [DescribeWebAreaBlockConfigsResponseBody.AreaBlockConfigs.RegionList]?

        public override init() {
            super.init()
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
            if self.regionList != nil {
                var tmp : [Any] = []
                for k in self.regionList! {
                    tmp.append(k.toMap())
                }
                map["RegionList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["RegionList"] as? [Any?] {
                var tmp : [DescribeWebAreaBlockConfigsResponseBody.AreaBlockConfigs.RegionList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeWebAreaBlockConfigsResponseBody.AreaBlockConfigs.RegionList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.regionList = tmp
            }
        }
    }
    public var areaBlockConfigs: [DescribeWebAreaBlockConfigsResponseBody.AreaBlockConfigs]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.areaBlockConfigs != nil {
            var tmp : [Any] = []
            for k in self.areaBlockConfigs! {
                tmp.append(k.toMap())
            }
            map["AreaBlockConfigs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AreaBlockConfigs"] as? [Any?] {
            var tmp : [DescribeWebAreaBlockConfigsResponseBody.AreaBlockConfigs] = []
            for v in value {
                if v != nil {
                    var model = DescribeWebAreaBlockConfigsResponseBody.AreaBlockConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.areaBlockConfigs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeWebAreaBlockConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebAreaBlockConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWebAreaBlockConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWebCCRulesRequest : Tea.TeaModel {
    public var domain: String?

    public var pageNumber: Int32?

    public var pageSize: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeWebCCRulesResponseBody : Tea.TeaModel {
    public class WebCCRules : Tea.TeaModel {
        public var act: String?

        public var count: Int32?

        public var interval: Int32?

        public var mode: String?

        public var name: String?

        public var ttl: Int32?

        public var uri: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.act != nil {
                map["Act"] = self.act!
            }
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.interval != nil {
                map["Interval"] = self.interval!
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.ttl != nil {
                map["Ttl"] = self.ttl!
            }
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Act"] as? String {
                self.act = value
            }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["Interval"] as? Int32 {
                self.interval = value
            }
            if let value = dict["Mode"] as? String {
                self.mode = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Ttl"] as? Int32 {
                self.ttl = value
            }
            if let value = dict["Uri"] as? String {
                self.uri = value
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int64?

    public var webCCRules: [DescribeWebCCRulesResponseBody.WebCCRules]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.webCCRules != nil {
            var tmp : [Any] = []
            for k in self.webCCRules! {
                tmp.append(k.toMap())
            }
            map["WebCCRules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["WebCCRules"] as? [Any?] {
            var tmp : [DescribeWebCCRulesResponseBody.WebCCRules] = []
            for v in value {
                if v != nil {
                    var model = DescribeWebCCRulesResponseBody.WebCCRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.webCCRules = tmp
        }
    }
}

public class DescribeWebCCRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebCCRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWebCCRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWebCCRulesV2Request : Tea.TeaModel {
    public var domain: String?

    public var offset: String?

    public var owner: String?

    public var pageSize: String?

    public override init() {
        super.init()
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
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Offset"] as? String {
            self.offset = value
        }
        if let value = dict["Owner"] as? String {
            self.owner = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
    }
}

public class DescribeWebCCRulesV2ResponseBody : Tea.TeaModel {
    public class WebCCRules : Tea.TeaModel {
        public class RuleDetail : Tea.TeaModel {
            public class Condition : Tea.TeaModel {
                public var content: String?

                public var contentList: String?

                public var field: String?

                public var headerName: String?

                public var matchMethod: String?

                public override init() {
                    super.init()
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
                    if self.contentList != nil {
                        map["ContentList"] = self.contentList!
                    }
                    if self.field != nil {
                        map["Field"] = self.field!
                    }
                    if self.headerName != nil {
                        map["HeaderName"] = self.headerName!
                    }
                    if self.matchMethod != nil {
                        map["MatchMethod"] = self.matchMethod!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Content"] as? String {
                        self.content = value
                    }
                    if let value = dict["ContentList"] as? String {
                        self.contentList = value
                    }
                    if let value = dict["Field"] as? String {
                        self.field = value
                    }
                    if let value = dict["HeaderName"] as? String {
                        self.headerName = value
                    }
                    if let value = dict["MatchMethod"] as? String {
                        self.matchMethod = value
                    }
                }
            }
            public class RateLimit : Tea.TeaModel {
                public var interval: Int32?

                public var subKey: String?

                public var target: String?

                public var threshold: Int32?

                public var ttl: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.interval != nil {
                        map["Interval"] = self.interval!
                    }
                    if self.subKey != nil {
                        map["SubKey"] = self.subKey!
                    }
                    if self.target != nil {
                        map["Target"] = self.target!
                    }
                    if self.threshold != nil {
                        map["Threshold"] = self.threshold!
                    }
                    if self.ttl != nil {
                        map["Ttl"] = self.ttl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Interval"] as? Int32 {
                        self.interval = value
                    }
                    if let value = dict["SubKey"] as? String {
                        self.subKey = value
                    }
                    if let value = dict["Target"] as? String {
                        self.target = value
                    }
                    if let value = dict["Threshold"] as? Int32 {
                        self.threshold = value
                    }
                    if let value = dict["Ttl"] as? Int32 {
                        self.ttl = value
                    }
                }
            }
            public class Statistics : Tea.TeaModel {
                public var field: String?

                public var headerName: String?

                public var mode: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.field != nil {
                        map["Field"] = self.field!
                    }
                    if self.headerName != nil {
                        map["HeaderName"] = self.headerName!
                    }
                    if self.mode != nil {
                        map["Mode"] = self.mode!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Field"] as? String {
                        self.field = value
                    }
                    if let value = dict["HeaderName"] as? String {
                        self.headerName = value
                    }
                    if let value = dict["Mode"] as? String {
                        self.mode = value
                    }
                }
            }
            public class StatusCode : Tea.TeaModel {
                public var code: Int32?

                public var countThreshold: Int32?

                public var enabled: Bool?

                public var ratioThreshold: Int32?

                public var useRatio: Bool?

                public override init() {
                    super.init()
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
                    if self.countThreshold != nil {
                        map["CountThreshold"] = self.countThreshold!
                    }
                    if self.enabled != nil {
                        map["Enabled"] = self.enabled!
                    }
                    if self.ratioThreshold != nil {
                        map["RatioThreshold"] = self.ratioThreshold!
                    }
                    if self.useRatio != nil {
                        map["UseRatio"] = self.useRatio!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Code"] as? Int32 {
                        self.code = value
                    }
                    if let value = dict["CountThreshold"] as? Int32 {
                        self.countThreshold = value
                    }
                    if let value = dict["Enabled"] as? Bool {
                        self.enabled = value
                    }
                    if let value = dict["RatioThreshold"] as? Int32 {
                        self.ratioThreshold = value
                    }
                    if let value = dict["UseRatio"] as? Bool {
                        self.useRatio = value
                    }
                }
            }
            public var action: String?

            public var condition: [DescribeWebCCRulesV2ResponseBody.WebCCRules.RuleDetail.Condition]?

            public var count: Int32?

            public var interval: Int32?

            public var mode: String?

            public var name: String?

            public var rateLimit: DescribeWebCCRulesV2ResponseBody.WebCCRules.RuleDetail.RateLimit?

            public var statistics: DescribeWebCCRulesV2ResponseBody.WebCCRules.RuleDetail.Statistics?

            public var statusCode: DescribeWebCCRulesV2ResponseBody.WebCCRules.RuleDetail.StatusCode?

            public var ttl: Int32?

            public var uri: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.rateLimit?.validate()
                try self.statistics?.validate()
                try self.statusCode?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.condition != nil {
                    var tmp : [Any] = []
                    for k in self.condition! {
                        tmp.append(k.toMap())
                    }
                    map["Condition"] = tmp
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.interval != nil {
                    map["Interval"] = self.interval!
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.rateLimit != nil {
                    map["RateLimit"] = self.rateLimit?.toMap()
                }
                if self.statistics != nil {
                    map["Statistics"] = self.statistics?.toMap()
                }
                if self.statusCode != nil {
                    map["StatusCode"] = self.statusCode?.toMap()
                }
                if self.ttl != nil {
                    map["Ttl"] = self.ttl!
                }
                if self.uri != nil {
                    map["Uri"] = self.uri!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Action"] as? String {
                    self.action = value
                }
                if let value = dict["Condition"] as? [Any?] {
                    var tmp : [DescribeWebCCRulesV2ResponseBody.WebCCRules.RuleDetail.Condition] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeWebCCRulesV2ResponseBody.WebCCRules.RuleDetail.Condition()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.condition = tmp
                }
                if let value = dict["Count"] as? Int32 {
                    self.count = value
                }
                if let value = dict["Interval"] as? Int32 {
                    self.interval = value
                }
                if let value = dict["Mode"] as? String {
                    self.mode = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RateLimit"] as? [String: Any?] {
                    var model = DescribeWebCCRulesV2ResponseBody.WebCCRules.RuleDetail.RateLimit()
                    model.fromMap(value)
                    self.rateLimit = model
                }
                if let value = dict["Statistics"] as? [String: Any?] {
                    var model = DescribeWebCCRulesV2ResponseBody.WebCCRules.RuleDetail.Statistics()
                    model.fromMap(value)
                    self.statistics = model
                }
                if let value = dict["StatusCode"] as? [String: Any?] {
                    var model = DescribeWebCCRulesV2ResponseBody.WebCCRules.RuleDetail.StatusCode()
                    model.fromMap(value)
                    self.statusCode = model
                }
                if let value = dict["Ttl"] as? Int32 {
                    self.ttl = value
                }
                if let value = dict["Uri"] as? String {
                    self.uri = value
                }
            }
        }
        public var expires: Int64?

        public var name: String?

        public var owner: String?

        public var ruleDetail: DescribeWebCCRulesV2ResponseBody.WebCCRules.RuleDetail?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.ruleDetail?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expires != nil {
                map["Expires"] = self.expires!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.ruleDetail != nil {
                map["RuleDetail"] = self.ruleDetail?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Expires"] as? Int64 {
                self.expires = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["RuleDetail"] as? [String: Any?] {
                var model = DescribeWebCCRulesV2ResponseBody.WebCCRules.RuleDetail()
                model.fromMap(value)
                self.ruleDetail = model
            }
        }
    }
    public var domain: String?

    public var requestId: String?

    public var totalCount: String?

    public var webCCRules: [DescribeWebCCRulesV2ResponseBody.WebCCRules]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.webCCRules != nil {
            var tmp : [Any] = []
            for k in self.webCCRules! {
                tmp.append(k.toMap())
            }
            map["WebCCRules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
        if let value = dict["WebCCRules"] as? [Any?] {
            var tmp : [DescribeWebCCRulesV2ResponseBody.WebCCRules] = []
            for v in value {
                if v != nil {
                    var model = DescribeWebCCRulesV2ResponseBody.WebCCRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.webCCRules = tmp
        }
    }
}

public class DescribeWebCCRulesV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebCCRulesV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWebCCRulesV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWebCacheConfigsRequest : Tea.TeaModel {
    public var domains: [String]?

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
        if self.domains != nil {
            map["Domains"] = self.domains!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domains"] as? [String] {
            self.domains = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeWebCacheConfigsResponseBody : Tea.TeaModel {
    public class DomainCacheConfigs : Tea.TeaModel {
        public class CustomRules : Tea.TeaModel {
            public var cacheTtl: Int64?

            public var mode: String?

            public var name: String?

            public var uri: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cacheTtl != nil {
                    map["CacheTtl"] = self.cacheTtl!
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.uri != nil {
                    map["Uri"] = self.uri!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CacheTtl"] as? Int64 {
                    self.cacheTtl = value
                }
                if let value = dict["Mode"] as? String {
                    self.mode = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Uri"] as? String {
                    self.uri = value
                }
            }
        }
        public var customRules: [DescribeWebCacheConfigsResponseBody.DomainCacheConfigs.CustomRules]?

        public var domain: String?

        public var enable: Int32?

        public var mode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customRules != nil {
                var tmp : [Any] = []
                for k in self.customRules! {
                    tmp.append(k.toMap())
                }
                map["CustomRules"] = tmp
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomRules"] as? [Any?] {
                var tmp : [DescribeWebCacheConfigsResponseBody.DomainCacheConfigs.CustomRules] = []
                for v in value {
                    if v != nil {
                        var model = DescribeWebCacheConfigsResponseBody.DomainCacheConfigs.CustomRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.customRules = tmp
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["Enable"] as? Int32 {
                self.enable = value
            }
            if let value = dict["Mode"] as? String {
                self.mode = value
            }
        }
    }
    public var domainCacheConfigs: [DescribeWebCacheConfigsResponseBody.DomainCacheConfigs]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainCacheConfigs != nil {
            var tmp : [Any] = []
            for k in self.domainCacheConfigs! {
                tmp.append(k.toMap())
            }
            map["DomainCacheConfigs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainCacheConfigs"] as? [Any?] {
            var tmp : [DescribeWebCacheConfigsResponseBody.DomainCacheConfigs] = []
            for v in value {
                if v != nil {
                    var model = DescribeWebCacheConfigsResponseBody.DomainCacheConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.domainCacheConfigs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeWebCacheConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebCacheConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWebCacheConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWebCcProtectSwitchRequest : Tea.TeaModel {
    public var domains: [String]?

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
        if self.domains != nil {
            map["Domains"] = self.domains!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domains"] as? [String] {
            self.domains = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeWebCcProtectSwitchResponseBody : Tea.TeaModel {
    public class ProtectSwitchList : Tea.TeaModel {
        public var aiMode: String?

        public var aiRuleEnable: Int32?

        public var aiTemplate: String?

        public var blackWhiteListEnable: Int32?

        public var ccCustomRuleEnable: Int32?

        public var ccEnable: Int32?

        public var ccGlobalSwitch: String?

        public var ccTemplate: String?

        public var domain: String?

        public var preciseRuleEnable: Int32?

        public var regionBlockEnable: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aiMode != nil {
                map["AiMode"] = self.aiMode!
            }
            if self.aiRuleEnable != nil {
                map["AiRuleEnable"] = self.aiRuleEnable!
            }
            if self.aiTemplate != nil {
                map["AiTemplate"] = self.aiTemplate!
            }
            if self.blackWhiteListEnable != nil {
                map["BlackWhiteListEnable"] = self.blackWhiteListEnable!
            }
            if self.ccCustomRuleEnable != nil {
                map["CcCustomRuleEnable"] = self.ccCustomRuleEnable!
            }
            if self.ccEnable != nil {
                map["CcEnable"] = self.ccEnable!
            }
            if self.ccGlobalSwitch != nil {
                map["CcGlobalSwitch"] = self.ccGlobalSwitch!
            }
            if self.ccTemplate != nil {
                map["CcTemplate"] = self.ccTemplate!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.preciseRuleEnable != nil {
                map["PreciseRuleEnable"] = self.preciseRuleEnable!
            }
            if self.regionBlockEnable != nil {
                map["RegionBlockEnable"] = self.regionBlockEnable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AiMode"] as? String {
                self.aiMode = value
            }
            if let value = dict["AiRuleEnable"] as? Int32 {
                self.aiRuleEnable = value
            }
            if let value = dict["AiTemplate"] as? String {
                self.aiTemplate = value
            }
            if let value = dict["BlackWhiteListEnable"] as? Int32 {
                self.blackWhiteListEnable = value
            }
            if let value = dict["CcCustomRuleEnable"] as? Int32 {
                self.ccCustomRuleEnable = value
            }
            if let value = dict["CcEnable"] as? Int32 {
                self.ccEnable = value
            }
            if let value = dict["CcGlobalSwitch"] as? String {
                self.ccGlobalSwitch = value
            }
            if let value = dict["CcTemplate"] as? String {
                self.ccTemplate = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["PreciseRuleEnable"] as? Int32 {
                self.preciseRuleEnable = value
            }
            if let value = dict["RegionBlockEnable"] as? Int32 {
                self.regionBlockEnable = value
            }
        }
    }
    public var protectSwitchList: [DescribeWebCcProtectSwitchResponseBody.ProtectSwitchList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.protectSwitchList != nil {
            var tmp : [Any] = []
            for k in self.protectSwitchList! {
                tmp.append(k.toMap())
            }
            map["ProtectSwitchList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProtectSwitchList"] as? [Any?] {
            var tmp : [DescribeWebCcProtectSwitchResponseBody.ProtectSwitchList] = []
            for v in value {
                if v != nil {
                    var model = DescribeWebCcProtectSwitchResponseBody.ProtectSwitchList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.protectSwitchList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeWebCcProtectSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebCcProtectSwitchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWebCcProtectSwitchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWebCustomPortsRequest : Tea.TeaModel {
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeWebCustomPortsResponseBody : Tea.TeaModel {
    public class WebCustomPorts : Tea.TeaModel {
        public var proxyPorts: [String]?

        public var proxyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.proxyPorts != nil {
                map["ProxyPorts"] = self.proxyPorts!
            }
            if self.proxyType != nil {
                map["ProxyType"] = self.proxyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProxyPorts"] as? [String] {
                self.proxyPorts = value
            }
            if let value = dict["ProxyType"] as? String {
                self.proxyType = value
            }
        }
    }
    public var requestId: String?

    public var webCustomPorts: [DescribeWebCustomPortsResponseBody.WebCustomPorts]?

    public override init() {
        super.init()
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
        if self.webCustomPorts != nil {
            var tmp : [Any] = []
            for k in self.webCustomPorts! {
                tmp.append(k.toMap())
            }
            map["WebCustomPorts"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WebCustomPorts"] as? [Any?] {
            var tmp : [DescribeWebCustomPortsResponseBody.WebCustomPorts] = []
            for v in value {
                if v != nil {
                    var model = DescribeWebCustomPortsResponseBody.WebCustomPorts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.webCustomPorts = tmp
        }
    }
}

public class DescribeWebCustomPortsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebCustomPortsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWebCustomPortsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWebInstanceRelationsRequest : Tea.TeaModel {
    public var domains: [String]?

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
        if self.domains != nil {
            map["Domains"] = self.domains!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domains"] as? [String] {
            self.domains = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeWebInstanceRelationsResponseBody : Tea.TeaModel {
    public class WebInstanceRelations : Tea.TeaModel {
        public class InstanceDetails : Tea.TeaModel {
            public var eipList: [String]?

            public var functionVersion: String?

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
                if self.eipList != nil {
                    map["EipList"] = self.eipList!
                }
                if self.functionVersion != nil {
                    map["FunctionVersion"] = self.functionVersion!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EipList"] as? [String] {
                    self.eipList = value
                }
                if let value = dict["FunctionVersion"] as? String {
                    self.functionVersion = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
            }
        }
        public var domain: String?

        public var instanceDetails: [DescribeWebInstanceRelationsResponseBody.WebInstanceRelations.InstanceDetails]?

        public override init() {
            super.init()
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
            if self.instanceDetails != nil {
                var tmp : [Any] = []
                for k in self.instanceDetails! {
                    tmp.append(k.toMap())
                }
                map["InstanceDetails"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["InstanceDetails"] as? [Any?] {
                var tmp : [DescribeWebInstanceRelationsResponseBody.WebInstanceRelations.InstanceDetails] = []
                for v in value {
                    if v != nil {
                        var model = DescribeWebInstanceRelationsResponseBody.WebInstanceRelations.InstanceDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instanceDetails = tmp
            }
        }
    }
    public var requestId: String?

    public var webInstanceRelations: [DescribeWebInstanceRelationsResponseBody.WebInstanceRelations]?

    public override init() {
        super.init()
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
        if self.webInstanceRelations != nil {
            var tmp : [Any] = []
            for k in self.webInstanceRelations! {
                tmp.append(k.toMap())
            }
            map["WebInstanceRelations"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WebInstanceRelations"] as? [Any?] {
            var tmp : [DescribeWebInstanceRelationsResponseBody.WebInstanceRelations] = []
            for v in value {
                if v != nil {
                    var model = DescribeWebInstanceRelationsResponseBody.WebInstanceRelations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.webInstanceRelations = tmp
        }
    }
}

public class DescribeWebInstanceRelationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebInstanceRelationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWebInstanceRelationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWebPreciseAccessRuleRequest : Tea.TeaModel {
    public var domains: [String]?

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
        if self.domains != nil {
            map["Domains"] = self.domains!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domains"] as? [String] {
            self.domains = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeWebPreciseAccessRuleResponseBody : Tea.TeaModel {
    public class PreciseAccessConfigList : Tea.TeaModel {
        public class RuleList : Tea.TeaModel {
            public class ConditionList : Tea.TeaModel {
                public var content: String?

                public var contentList: [String]?

                public var field: String?

                public var headerName: String?

                public var matchMethod: String?

                public override init() {
                    super.init()
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
                    if self.contentList != nil {
                        map["ContentList"] = self.contentList!
                    }
                    if self.field != nil {
                        map["Field"] = self.field!
                    }
                    if self.headerName != nil {
                        map["HeaderName"] = self.headerName!
                    }
                    if self.matchMethod != nil {
                        map["MatchMethod"] = self.matchMethod!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Content"] as? String {
                        self.content = value
                    }
                    if let value = dict["ContentList"] as? [String] {
                        self.contentList = value
                    }
                    if let value = dict["Field"] as? String {
                        self.field = value
                    }
                    if let value = dict["HeaderName"] as? String {
                        self.headerName = value
                    }
                    if let value = dict["MatchMethod"] as? String {
                        self.matchMethod = value
                    }
                }
            }
            public var action: String?

            public var conditionList: [DescribeWebPreciseAccessRuleResponseBody.PreciseAccessConfigList.RuleList.ConditionList]?

            public var expires: Int64?

            public var name: String?

            public var owner: String?

            public override init() {
                super.init()
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
                if self.conditionList != nil {
                    var tmp : [Any] = []
                    for k in self.conditionList! {
                        tmp.append(k.toMap())
                    }
                    map["ConditionList"] = tmp
                }
                if self.expires != nil {
                    map["Expires"] = self.expires!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.owner != nil {
                    map["Owner"] = self.owner!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Action"] as? String {
                    self.action = value
                }
                if let value = dict["ConditionList"] as? [Any?] {
                    var tmp : [DescribeWebPreciseAccessRuleResponseBody.PreciseAccessConfigList.RuleList.ConditionList] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeWebPreciseAccessRuleResponseBody.PreciseAccessConfigList.RuleList.ConditionList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.conditionList = tmp
                }
                if let value = dict["Expires"] as? Int64 {
                    self.expires = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Owner"] as? String {
                    self.owner = value
                }
            }
        }
        public var domain: String?

        public var ruleList: [DescribeWebPreciseAccessRuleResponseBody.PreciseAccessConfigList.RuleList]?

        public override init() {
            super.init()
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
            if self.ruleList != nil {
                var tmp : [Any] = []
                for k in self.ruleList! {
                    tmp.append(k.toMap())
                }
                map["RuleList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["RuleList"] as? [Any?] {
                var tmp : [DescribeWebPreciseAccessRuleResponseBody.PreciseAccessConfigList.RuleList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeWebPreciseAccessRuleResponseBody.PreciseAccessConfigList.RuleList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ruleList = tmp
            }
        }
    }
    public var preciseAccessConfigList: [DescribeWebPreciseAccessRuleResponseBody.PreciseAccessConfigList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.preciseAccessConfigList != nil {
            var tmp : [Any] = []
            for k in self.preciseAccessConfigList! {
                tmp.append(k.toMap())
            }
            map["PreciseAccessConfigList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PreciseAccessConfigList"] as? [Any?] {
            var tmp : [DescribeWebPreciseAccessRuleResponseBody.PreciseAccessConfigList] = []
            for v in value {
                if v != nil {
                    var model = DescribeWebPreciseAccessRuleResponseBody.PreciseAccessConfigList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.preciseAccessConfigList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeWebPreciseAccessRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebPreciseAccessRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWebPreciseAccessRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWebReportTopIpRequest : Tea.TeaModel {
    public var domain: String?

    public var endTime: Int64?

    public var interval: Int32?

    public var queryType: String?

    public var startTime: Int64?

    public var top: Int32?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.top != nil {
            map["Top"] = self.top!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Interval"] as? Int32 {
            self.interval = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Top"] as? Int32 {
            self.top = value
        }
    }
}

public class DescribeWebReportTopIpResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public var areaId: String?

        public var count: Int64?

        public var isp: String?

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
            if self.areaId != nil {
                map["AreaId"] = self.areaId!
            }
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.isp != nil {
                map["Isp"] = self.isp!
            }
            if self.sourceIp != nil {
                map["SourceIp"] = self.sourceIp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AreaId"] as? String {
                self.areaId = value
            }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["Isp"] as? String {
                self.isp = value
            }
            if let value = dict["SourceIp"] as? String {
                self.sourceIp = value
            }
        }
    }
    public var dataList: [DescribeWebReportTopIpResponseBody.DataList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataList != nil {
            var tmp : [Any] = []
            for k in self.dataList! {
                tmp.append(k.toMap())
            }
            map["DataList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataList"] as? [Any?] {
            var tmp : [DescribeWebReportTopIpResponseBody.DataList] = []
            for v in value {
                if v != nil {
                    var model = DescribeWebReportTopIpResponseBody.DataList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeWebReportTopIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebReportTopIpResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWebReportTopIpResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWebRulesRequest : Tea.TeaModel {
    public var cname: String?

    public var domain: String?

    public var instanceIds: [String]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryDomainPattern: String?

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
        if self.cname != nil {
            map["Cname"] = self.cname!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryDomainPattern != nil {
            map["QueryDomainPattern"] = self.queryDomainPattern!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cname"] as? String {
            self.cname = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueryDomainPattern"] as? String {
            self.queryDomainPattern = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeWebRulesResponseBody : Tea.TeaModel {
    public class WebRules : Tea.TeaModel {
        public class GmCert : Tea.TeaModel {
            public var certId: String?

            public var gmEnable: Int64?

            public var gmOnly: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.certId != nil {
                    map["CertId"] = self.certId!
                }
                if self.gmEnable != nil {
                    map["GmEnable"] = self.gmEnable!
                }
                if self.gmOnly != nil {
                    map["GmOnly"] = self.gmOnly!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CertId"] as? String {
                    self.certId = value
                }
                if let value = dict["GmEnable"] as? Int64 {
                    self.gmEnable = value
                }
                if let value = dict["GmOnly"] as? Int64 {
                    self.gmOnly = value
                }
            }
        }
        public class ProxyTypes : Tea.TeaModel {
            public var proxyPorts: [String]?

            public var proxyType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.proxyPorts != nil {
                    map["ProxyPorts"] = self.proxyPorts!
                }
                if self.proxyType != nil {
                    map["ProxyType"] = self.proxyType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ProxyPorts"] as? [String] {
                    self.proxyPorts = value
                }
                if let value = dict["ProxyType"] as? String {
                    self.proxyType = value
                }
            }
        }
        public class RealServers : Tea.TeaModel {
            public var realServer: String?

            public var rsType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.realServer != nil {
                    map["RealServer"] = self.realServer!
                }
                if self.rsType != nil {
                    map["RsType"] = self.rsType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RealServer"] as? String {
                    self.realServer = value
                }
                if let value = dict["RsType"] as? Int32 {
                    self.rsType = value
                }
            }
        }
        public var blackList: [String]?

        public var ccEnabled: Bool?

        public var ccRuleEnabled: Bool?

        public var ccTemplate: String?

        public var certExpireTime: Int64?

        public var certName: String?

        public var certRegion: String?

        public var cname: String?

        public var customCiphers: [String]?

        public var domain: String?

        public var gmCert: DescribeWebRulesResponseBody.WebRules.GmCert?

        public var http2Enable: Bool?

        public var http2HttpsEnable: Bool?

        public var https2HttpEnable: Bool?

        public var ocspEnabled: Bool?

        public var policyMode: String?

        public var proxyEnabled: Bool?

        public var proxyTypes: [DescribeWebRulesResponseBody.WebRules.ProxyTypes]?

        public var punishReason: Int32?

        public var punishStatus: Bool?

        public var realServers: [DescribeWebRulesResponseBody.WebRules.RealServers]?

        public var ssl13Enabled: Bool?

        public var sslCiphers: String?

        public var sslProtocols: String?

        public var tls13CustomCiphers: [String]?

        public var userCertName: String?

        public var whiteList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.gmCert?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blackList != nil {
                map["BlackList"] = self.blackList!
            }
            if self.ccEnabled != nil {
                map["CcEnabled"] = self.ccEnabled!
            }
            if self.ccRuleEnabled != nil {
                map["CcRuleEnabled"] = self.ccRuleEnabled!
            }
            if self.ccTemplate != nil {
                map["CcTemplate"] = self.ccTemplate!
            }
            if self.certExpireTime != nil {
                map["CertExpireTime"] = self.certExpireTime!
            }
            if self.certName != nil {
                map["CertName"] = self.certName!
            }
            if self.certRegion != nil {
                map["CertRegion"] = self.certRegion!
            }
            if self.cname != nil {
                map["Cname"] = self.cname!
            }
            if self.customCiphers != nil {
                map["CustomCiphers"] = self.customCiphers!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.gmCert != nil {
                map["GmCert"] = self.gmCert?.toMap()
            }
            if self.http2Enable != nil {
                map["Http2Enable"] = self.http2Enable!
            }
            if self.http2HttpsEnable != nil {
                map["Http2HttpsEnable"] = self.http2HttpsEnable!
            }
            if self.https2HttpEnable != nil {
                map["Https2HttpEnable"] = self.https2HttpEnable!
            }
            if self.ocspEnabled != nil {
                map["OcspEnabled"] = self.ocspEnabled!
            }
            if self.policyMode != nil {
                map["PolicyMode"] = self.policyMode!
            }
            if self.proxyEnabled != nil {
                map["ProxyEnabled"] = self.proxyEnabled!
            }
            if self.proxyTypes != nil {
                var tmp : [Any] = []
                for k in self.proxyTypes! {
                    tmp.append(k.toMap())
                }
                map["ProxyTypes"] = tmp
            }
            if self.punishReason != nil {
                map["PunishReason"] = self.punishReason!
            }
            if self.punishStatus != nil {
                map["PunishStatus"] = self.punishStatus!
            }
            if self.realServers != nil {
                var tmp : [Any] = []
                for k in self.realServers! {
                    tmp.append(k.toMap())
                }
                map["RealServers"] = tmp
            }
            if self.ssl13Enabled != nil {
                map["Ssl13Enabled"] = self.ssl13Enabled!
            }
            if self.sslCiphers != nil {
                map["SslCiphers"] = self.sslCiphers!
            }
            if self.sslProtocols != nil {
                map["SslProtocols"] = self.sslProtocols!
            }
            if self.tls13CustomCiphers != nil {
                map["Tls13CustomCiphers"] = self.tls13CustomCiphers!
            }
            if self.userCertName != nil {
                map["UserCertName"] = self.userCertName!
            }
            if self.whiteList != nil {
                map["WhiteList"] = self.whiteList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BlackList"] as? [String] {
                self.blackList = value
            }
            if let value = dict["CcEnabled"] as? Bool {
                self.ccEnabled = value
            }
            if let value = dict["CcRuleEnabled"] as? Bool {
                self.ccRuleEnabled = value
            }
            if let value = dict["CcTemplate"] as? String {
                self.ccTemplate = value
            }
            if let value = dict["CertExpireTime"] as? Int64 {
                self.certExpireTime = value
            }
            if let value = dict["CertName"] as? String {
                self.certName = value
            }
            if let value = dict["CertRegion"] as? String {
                self.certRegion = value
            }
            if let value = dict["Cname"] as? String {
                self.cname = value
            }
            if let value = dict["CustomCiphers"] as? [String] {
                self.customCiphers = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["GmCert"] as? [String: Any?] {
                var model = DescribeWebRulesResponseBody.WebRules.GmCert()
                model.fromMap(value)
                self.gmCert = model
            }
            if let value = dict["Http2Enable"] as? Bool {
                self.http2Enable = value
            }
            if let value = dict["Http2HttpsEnable"] as? Bool {
                self.http2HttpsEnable = value
            }
            if let value = dict["Https2HttpEnable"] as? Bool {
                self.https2HttpEnable = value
            }
            if let value = dict["OcspEnabled"] as? Bool {
                self.ocspEnabled = value
            }
            if let value = dict["PolicyMode"] as? String {
                self.policyMode = value
            }
            if let value = dict["ProxyEnabled"] as? Bool {
                self.proxyEnabled = value
            }
            if let value = dict["ProxyTypes"] as? [Any?] {
                var tmp : [DescribeWebRulesResponseBody.WebRules.ProxyTypes] = []
                for v in value {
                    if v != nil {
                        var model = DescribeWebRulesResponseBody.WebRules.ProxyTypes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.proxyTypes = tmp
            }
            if let value = dict["PunishReason"] as? Int32 {
                self.punishReason = value
            }
            if let value = dict["PunishStatus"] as? Bool {
                self.punishStatus = value
            }
            if let value = dict["RealServers"] as? [Any?] {
                var tmp : [DescribeWebRulesResponseBody.WebRules.RealServers] = []
                for v in value {
                    if v != nil {
                        var model = DescribeWebRulesResponseBody.WebRules.RealServers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.realServers = tmp
            }
            if let value = dict["Ssl13Enabled"] as? Bool {
                self.ssl13Enabled = value
            }
            if let value = dict["SslCiphers"] as? String {
                self.sslCiphers = value
            }
            if let value = dict["SslProtocols"] as? String {
                self.sslProtocols = value
            }
            if let value = dict["Tls13CustomCiphers"] as? [String] {
                self.tls13CustomCiphers = value
            }
            if let value = dict["UserCertName"] as? String {
                self.userCertName = value
            }
            if let value = dict["WhiteList"] as? [String] {
                self.whiteList = value
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int64?

    public var webRules: [DescribeWebRulesResponseBody.WebRules]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.webRules != nil {
            var tmp : [Any] = []
            for k in self.webRules! {
                tmp.append(k.toMap())
            }
            map["WebRules"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["WebRules"] as? [Any?] {
            var tmp : [DescribeWebRulesResponseBody.WebRules] = []
            for v in value {
                if v != nil {
                    var model = DescribeWebRulesResponseBody.WebRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.webRules = tmp
        }
    }
}

public class DescribeWebRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWebRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetachSceneDefenseObjectRequest : Tea.TeaModel {
    public var objectType: String?

    public var objects: String?

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
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        if self.objects != nil {
            map["Objects"] = self.objects!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ObjectType"] as? String {
            self.objectType = value
        }
        if let value = dict["Objects"] as? String {
            self.objects = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
    }
}

public class DetachSceneDefenseObjectResponseBody : Tea.TeaModel {
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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DetachSceneDefenseObjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachSceneDefenseObjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetachSceneDefenseObjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableSceneDefensePolicyRequest : Tea.TeaModel {
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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
    }
}

public class DisableSceneDefensePolicyResponseBody : Tea.TeaModel {
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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DisableSceneDefensePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableSceneDefensePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisableSceneDefensePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableWebAccessLogConfigRequest : Tea.TeaModel {
    public var domain: String?

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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DisableWebAccessLogConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DisableWebAccessLogConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableWebAccessLogConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisableWebAccessLogConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableWebCCRequest : Tea.TeaModel {
    public var domain: String?

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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DisableWebCCResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DisableWebCCResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableWebCCResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisableWebCCResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableWebCCRuleRequest : Tea.TeaModel {
    public var domain: String?

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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DisableWebCCRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DisableWebCCRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableWebCCRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisableWebCCRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EmptyAutoCcBlacklistRequest : Tea.TeaModel {
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
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class EmptyAutoCcBlacklistResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class EmptyAutoCcBlacklistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EmptyAutoCcBlacklistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EmptyAutoCcBlacklistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EmptyAutoCcWhitelistRequest : Tea.TeaModel {
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
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class EmptyAutoCcWhitelistResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class EmptyAutoCcWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EmptyAutoCcWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EmptyAutoCcWhitelistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EmptySlsLogstoreRequest : Tea.TeaModel {
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class EmptySlsLogstoreResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class EmptySlsLogstoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EmptySlsLogstoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EmptySlsLogstoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableSceneDefensePolicyRequest : Tea.TeaModel {
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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
    }
}

public class EnableSceneDefensePolicyResponseBody : Tea.TeaModel {
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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnableSceneDefensePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableSceneDefensePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableSceneDefensePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableWebAccessLogConfigRequest : Tea.TeaModel {
    public var domain: String?

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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class EnableWebAccessLogConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class EnableWebAccessLogConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableWebAccessLogConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableWebAccessLogConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableWebCCRequest : Tea.TeaModel {
    public var domain: String?

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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class EnableWebCCResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class EnableWebCCResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableWebCCResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableWebCCResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableWebCCRuleRequest : Tea.TeaModel {
    public var domain: String?

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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class EnableWebCCRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class EnableWebCCRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableWebCCRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableWebCCRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyBizBandWidthModeRequest : Tea.TeaModel {
    public var instanceId: String?

    public var mode: String?

    public override init() {
        super.init()
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
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
    }
}

public class ModifyBizBandWidthModeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyBizBandWidthModeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBizBandWidthModeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyBizBandWidthModeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyBlackholeStatusRequest : Tea.TeaModel {
    public var blackholeStatus: String?

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
        if self.blackholeStatus != nil {
            map["BlackholeStatus"] = self.blackholeStatus!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BlackholeStatus"] as? String {
            self.blackholeStatus = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ModifyBlackholeStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyBlackholeStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBlackholeStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyBlackholeStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyBlockStatusRequest : Tea.TeaModel {
    public var duration: Int32?

    public var instanceId: String?

    public var lines: [String]?

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
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lines != nil {
            map["Lines"] = self.lines!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lines"] as? [String] {
            self.lines = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ModifyBlockStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyBlockStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBlockStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyBlockStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyCnameReuseRequest : Tea.TeaModel {
    public var cname: String?

    public var domain: String?

    public var enable: Int32?

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
        if self.cname != nil {
            map["Cname"] = self.cname!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cname"] as? String {
            self.cname = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Enable"] as? Int32 {
            self.enable = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ModifyCnameReuseResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyCnameReuseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCnameReuseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyCnameReuseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDomainResourceRequest : Tea.TeaModel {
    public class ProxyTypes : Tea.TeaModel {
        public var proxyPorts: [Int32]?

        public var proxyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.proxyPorts != nil {
                map["ProxyPorts"] = self.proxyPorts!
            }
            if self.proxyType != nil {
                map["ProxyType"] = self.proxyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProxyPorts"] as? [Int32] {
                self.proxyPorts = value
            }
            if let value = dict["ProxyType"] as? String {
                self.proxyType = value
            }
        }
    }
    public var domain: String?

    public var httpsExt: String?

    public var instanceIds: [String]?

    public var proxyTypes: [ModifyDomainResourceRequest.ProxyTypes]?

    public var realServers: [String]?

    public var rsType: Int32?

    public override init() {
        super.init()
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
        if self.httpsExt != nil {
            map["HttpsExt"] = self.httpsExt!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.proxyTypes != nil {
            var tmp : [Any] = []
            for k in self.proxyTypes! {
                tmp.append(k.toMap())
            }
            map["ProxyTypes"] = tmp
        }
        if self.realServers != nil {
            map["RealServers"] = self.realServers!
        }
        if self.rsType != nil {
            map["RsType"] = self.rsType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["HttpsExt"] as? String {
            self.httpsExt = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["ProxyTypes"] as? [Any?] {
            var tmp : [ModifyDomainResourceRequest.ProxyTypes] = []
            for v in value {
                if v != nil {
                    var model = ModifyDomainResourceRequest.ProxyTypes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.proxyTypes = tmp
        }
        if let value = dict["RealServers"] as? [String] {
            self.realServers = value
        }
        if let value = dict["RsType"] as? Int32 {
            self.rsType = value
        }
    }
}

public class ModifyDomainResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyDomainResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDomainResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDomainResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyElasticBandWidthRequest : Tea.TeaModel {
    public var elasticBandwidth: Int32?

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
        if self.elasticBandwidth != nil {
            map["ElasticBandwidth"] = self.elasticBandwidth!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ElasticBandwidth"] as? Int32 {
            self.elasticBandwidth = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ModifyElasticBandWidthResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyElasticBandWidthResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyElasticBandWidthResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyElasticBandWidthResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyElasticBizBandWidthRequest : Tea.TeaModel {
    public var elasticBizBandwidth: Int32?

    public var instanceId: String?

    public var mode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.elasticBizBandwidth != nil {
            map["ElasticBizBandwidth"] = self.elasticBizBandwidth!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ElasticBizBandwidth"] as? Int32 {
            self.elasticBizBandwidth = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
    }
}

public class ModifyElasticBizBandWidthResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyElasticBizBandWidthResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyElasticBizBandWidthResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyElasticBizBandWidthResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyElasticBizQpsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var mode: String?

    public var opsElasticQps: Int64?

    public override init() {
        super.init()
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
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.opsElasticQps != nil {
            map["OpsElasticQps"] = self.opsElasticQps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["OpsElasticQps"] as? Int64 {
            self.opsElasticQps = value
        }
    }
}

public class ModifyElasticBizQpsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyElasticBizQpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyElasticBizQpsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyElasticBizQpsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyFullLogTtlRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public var ttl: Int32?

    public override init() {
        super.init()
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
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Ttl"] as? Int32 {
            self.ttl = value
        }
    }
}

public class ModifyFullLogTtlResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyFullLogTtlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFullLogTtlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyFullLogTtlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyHeadersRequest : Tea.TeaModel {
    public var customHeaders: String?

    public var domain: String?

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
        if self.customHeaders != nil {
            map["CustomHeaders"] = self.customHeaders!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomHeaders"] as? String {
            self.customHeaders = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ModifyHeadersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyHeadersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyHeadersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyHeadersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyHealthCheckConfigRequest : Tea.TeaModel {
    public var forwardProtocol: String?

    public var frontendPort: Int32?

    public var healthCheck: String?

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
        if self.forwardProtocol != nil {
            map["ForwardProtocol"] = self.forwardProtocol!
        }
        if self.frontendPort != nil {
            map["FrontendPort"] = self.frontendPort!
        }
        if self.healthCheck != nil {
            map["HealthCheck"] = self.healthCheck!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ForwardProtocol"] as? String {
            self.forwardProtocol = value
        }
        if let value = dict["FrontendPort"] as? Int32 {
            self.frontendPort = value
        }
        if let value = dict["HealthCheck"] as? String {
            self.healthCheck = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ModifyHealthCheckConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyHealthCheckConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyHealthCheckConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyHealthCheckConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyHttp2EnableRequest : Tea.TeaModel {
    public var domain: String?

    public var enable: Int32?

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
        if self.enable != nil {
            map["Enable"] = self.enable!
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
        if let value = dict["Enable"] as? Int32 {
            self.enable = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ModifyHttp2EnableResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyHttp2EnableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyHttp2EnableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyHttp2EnableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstanceRequest : Tea.TeaModel {
    public var addressType: String?

    public var bandwidth: String?

    public var baseBandwidth: String?

    public var domainCount: String?

    public var editionSale: String?

    public var functionVersion: String?

    public var instanceId: String?

    public var modifyType: String?

    public var normalBandwidth: String?

    public var normalQps: String?

    public var portCount: String?

    public var productPlan: String?

    public var productType: String?

    public var serviceBandwidth: String?

    public var servicePartner: String?

    public override init() {
        super.init()
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
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.baseBandwidth != nil {
            map["BaseBandwidth"] = self.baseBandwidth!
        }
        if self.domainCount != nil {
            map["DomainCount"] = self.domainCount!
        }
        if self.editionSale != nil {
            map["EditionSale"] = self.editionSale!
        }
        if self.functionVersion != nil {
            map["FunctionVersion"] = self.functionVersion!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.modifyType != nil {
            map["ModifyType"] = self.modifyType!
        }
        if self.normalBandwidth != nil {
            map["NormalBandwidth"] = self.normalBandwidth!
        }
        if self.normalQps != nil {
            map["NormalQps"] = self.normalQps!
        }
        if self.portCount != nil {
            map["PortCount"] = self.portCount!
        }
        if self.productPlan != nil {
            map["ProductPlan"] = self.productPlan!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.serviceBandwidth != nil {
            map["ServiceBandwidth"] = self.serviceBandwidth!
        }
        if self.servicePartner != nil {
            map["ServicePartner"] = self.servicePartner!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressType"] as? String {
            self.addressType = value
        }
        if let value = dict["Bandwidth"] as? String {
            self.bandwidth = value
        }
        if let value = dict["BaseBandwidth"] as? String {
            self.baseBandwidth = value
        }
        if let value = dict["DomainCount"] as? String {
            self.domainCount = value
        }
        if let value = dict["EditionSale"] as? String {
            self.editionSale = value
        }
        if let value = dict["FunctionVersion"] as? String {
            self.functionVersion = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ModifyType"] as? String {
            self.modifyType = value
        }
        if let value = dict["NormalBandwidth"] as? String {
            self.normalBandwidth = value
        }
        if let value = dict["NormalQps"] as? String {
            self.normalQps = value
        }
        if let value = dict["PortCount"] as? String {
            self.portCount = value
        }
        if let value = dict["ProductPlan"] as? String {
            self.productPlan = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["ServiceBandwidth"] as? String {
            self.serviceBandwidth = value
        }
        if let value = dict["ServicePartner"] as? String {
            self.servicePartner = value
        }
    }
}

public class ModifyInstanceResponseBody : Tea.TeaModel {
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
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstanceRemarkRequest : Tea.TeaModel {
    public var instanceId: String?

    public var remark: String?

    public override init() {
        super.init()
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
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
    }
}

public class ModifyInstanceRemarkResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyInstanceRemarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceRemarkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyInstanceRemarkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyNetworkRuleAttributeRequest : Tea.TeaModel {
    public var config: String?

    public var forwardProtocol: String?

    public var frontendPort: Int32?

    public var instanceId: String?

    public var module: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.forwardProtocol != nil {
            map["ForwardProtocol"] = self.forwardProtocol!
        }
        if self.frontendPort != nil {
            map["FrontendPort"] = self.frontendPort!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.module != nil {
            map["Module"] = self.module!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["ForwardProtocol"] as? String {
            self.forwardProtocol = value
        }
        if let value = dict["FrontendPort"] as? Int32 {
            self.frontendPort = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Module"] as? String {
            self.module = value
        }
    }
}

public class ModifyNetworkRuleAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyNetworkRuleAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyNetworkRuleAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyNetworkRuleAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyOcspStatusRequest : Tea.TeaModel {
    public var domain: String?

    public var enable: Int32?

    public override init() {
        super.init()
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
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Enable"] as? Int32 {
            self.enable = value
        }
    }
}

public class ModifyOcspStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyOcspStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyOcspStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyOcspStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyPortRequest : Tea.TeaModel {
    public var backendPort: String?

    public var frontendPort: String?

    public var frontendProtocol: String?

    public var instanceId: String?

    public var proxyEnable: Int64?

    public var realServers: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendPort != nil {
            map["BackendPort"] = self.backendPort!
        }
        if self.frontendPort != nil {
            map["FrontendPort"] = self.frontendPort!
        }
        if self.frontendProtocol != nil {
            map["FrontendProtocol"] = self.frontendProtocol!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.proxyEnable != nil {
            map["ProxyEnable"] = self.proxyEnable!
        }
        if self.realServers != nil {
            map["RealServers"] = self.realServers!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendPort"] as? String {
            self.backendPort = value
        }
        if let value = dict["FrontendPort"] as? String {
            self.frontendPort = value
        }
        if let value = dict["FrontendProtocol"] as? String {
            self.frontendProtocol = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ProxyEnable"] as? Int64 {
            self.proxyEnable = value
        }
        if let value = dict["RealServers"] as? [String] {
            self.realServers = value
        }
    }
}

public class ModifyPortResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyPortResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPortResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyPortResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyPortAutoCcStatusRequest : Tea.TeaModel {
    public var instanceId: String?

    public var mode: String?

    public var switch_: String?

    public override init() {
        super.init()
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
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.switch_ != nil {
            map["Switch"] = self.switch_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["Switch"] as? String {
            self.switch_ = value
        }
    }
}

public class ModifyPortAutoCcStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyPortAutoCcStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPortAutoCcStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyPortAutoCcStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyQpsModeRequest : Tea.TeaModel {
    public var instanceId: String?

    public var mode: String?

    public override init() {
        super.init()
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
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
    }
}

public class ModifyQpsModeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyQpsModeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyQpsModeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyQpsModeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifySceneDefensePolicyRequest : Tea.TeaModel {
    public var endTime: Int64?

    public var name: String?

    public var policyId: String?

    public var startTime: Int64?

    public var template: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.template != nil {
            map["Template"] = self.template!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Template"] as? String {
            self.template = value
        }
    }
}

public class ModifySceneDefensePolicyResponseBody : Tea.TeaModel {
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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifySceneDefensePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySceneDefensePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifySceneDefensePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifySchedulerRuleRequest : Tea.TeaModel {
    public var param: String?

    public var resourceGroupId: String?

    public var ruleName: String?

    public var ruleType: Int32?

    public var rules: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.param != nil {
            map["Param"] = self.param!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.rules != nil {
            map["Rules"] = self.rules!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Param"] as? String {
            self.param = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["RuleType"] as? Int32 {
            self.ruleType = value
        }
        if let value = dict["Rules"] as? String {
            self.rules = value
        }
    }
}

public class ModifySchedulerRuleResponseBody : Tea.TeaModel {
    public var cname: String?

    public var requestId: String?

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
        if self.cname != nil {
            map["Cname"] = self.cname!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
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
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
    }
}

public class ModifySchedulerRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySchedulerRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifySchedulerRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyTlsConfigRequest : Tea.TeaModel {
    public var config: String?

    public var domain: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ModifyTlsConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyTlsConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTlsConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyTlsConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyWebAIProtectModeRequest : Tea.TeaModel {
    public var config: String?

    public var domain: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ModifyWebAIProtectModeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyWebAIProtectModeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyWebAIProtectModeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyWebAIProtectModeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyWebAIProtectSwitchRequest : Tea.TeaModel {
    public var config: String?

    public var domain: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ModifyWebAIProtectSwitchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyWebAIProtectSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyWebAIProtectSwitchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyWebAIProtectSwitchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyWebAccessModeRequest : Tea.TeaModel {
    public var accessMode: Int32?

    public var domain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessMode != nil {
            map["AccessMode"] = self.accessMode!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessMode"] as? Int32 {
            self.accessMode = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
    }
}

public class ModifyWebAccessModeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyWebAccessModeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyWebAccessModeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyWebAccessModeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyWebAreaBlockRequest : Tea.TeaModel {
    public var domain: String?

    public var regions: [String]?

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
        if self.regions != nil {
            map["Regions"] = self.regions!
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
        if let value = dict["Regions"] as? [String] {
            self.regions = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ModifyWebAreaBlockResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyWebAreaBlockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyWebAreaBlockResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyWebAreaBlockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyWebAreaBlockSwitchRequest : Tea.TeaModel {
    public var config: String?

    public var domain: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ModifyWebAreaBlockSwitchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyWebAreaBlockSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyWebAreaBlockSwitchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyWebAreaBlockSwitchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyWebCCGlobalSwitchRequest : Tea.TeaModel {
    public var ccGlobalSwitch: String?

    public var domain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ccGlobalSwitch != nil {
            map["CcGlobalSwitch"] = self.ccGlobalSwitch!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CcGlobalSwitch"] as? String {
            self.ccGlobalSwitch = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
    }
}

public class ModifyWebCCGlobalSwitchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyWebCCGlobalSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyWebCCGlobalSwitchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyWebCCGlobalSwitchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyWebCCRuleRequest : Tea.TeaModel {
    public var act: String?

    public var count: Int32?

    public var domain: String?

    public var interval: Int32?

    public var mode: String?

    public var name: String?

    public var resourceGroupId: String?

    public var ttl: Int32?

    public var uri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.act != nil {
            map["Act"] = self.act!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Act"] as? String {
            self.act = value
        }
        if let value = dict["Count"] as? Int32 {
            self.count = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Interval"] as? Int32 {
            self.interval = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Ttl"] as? Int32 {
            self.ttl = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
    }
}

public class ModifyWebCCRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyWebCCRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyWebCCRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyWebCCRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyWebCacheCustomRuleRequest : Tea.TeaModel {
    public var domain: String?

    public var resourceGroupId: String?

    public var rules: String?

    public override init() {
        super.init()
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.rules != nil {
            map["Rules"] = self.rules!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Rules"] as? String {
            self.rules = value
        }
    }
}

public class ModifyWebCacheCustomRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyWebCacheCustomRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyWebCacheCustomRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyWebCacheCustomRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyWebCacheModeRequest : Tea.TeaModel {
    public var domain: String?

    public var mode: String?

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
        if self.mode != nil {
            map["Mode"] = self.mode!
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
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ModifyWebCacheModeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyWebCacheModeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyWebCacheModeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyWebCacheModeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyWebCacheSwitchRequest : Tea.TeaModel {
    public var domain: String?

    public var enable: Int32?

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
        if self.enable != nil {
            map["Enable"] = self.enable!
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
        if let value = dict["Enable"] as? Int32 {
            self.enable = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ModifyWebCacheSwitchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyWebCacheSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyWebCacheSwitchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyWebCacheSwitchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyWebIpSetSwitchRequest : Tea.TeaModel {
    public var config: String?

    public var domain: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ModifyWebIpSetSwitchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyWebIpSetSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyWebIpSetSwitchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyWebIpSetSwitchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyWebPreciseAccessRuleRequest : Tea.TeaModel {
    public var domain: String?

    public var expires: Int32?

    public var resourceGroupId: String?

    public var rules: String?

    public override init() {
        super.init()
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
        if self.expires != nil {
            map["Expires"] = self.expires!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.rules != nil {
            map["Rules"] = self.rules!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Expires"] as? Int32 {
            self.expires = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Rules"] as? String {
            self.rules = value
        }
    }
}

public class ModifyWebPreciseAccessRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyWebPreciseAccessRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyWebPreciseAccessRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyWebPreciseAccessRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyWebPreciseAccessSwitchRequest : Tea.TeaModel {
    public var config: String?

    public var domain: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ModifyWebPreciseAccessSwitchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyWebPreciseAccessSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyWebPreciseAccessSwitchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyWebPreciseAccessSwitchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyWebRuleRequest : Tea.TeaModel {
    public var domain: String?

    public var httpsExt: String?

    public var instanceIds: [String]?

    public var proxyTypes: String?

    public var realServers: [String]?

    public var resourceGroupId: String?

    public var rsType: Int32?

    public override init() {
        super.init()
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
        if self.httpsExt != nil {
            map["HttpsExt"] = self.httpsExt!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.proxyTypes != nil {
            map["ProxyTypes"] = self.proxyTypes!
        }
        if self.realServers != nil {
            map["RealServers"] = self.realServers!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.rsType != nil {
            map["RsType"] = self.rsType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["HttpsExt"] as? String {
            self.httpsExt = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["ProxyTypes"] as? String {
            self.proxyTypes = value
        }
        if let value = dict["RealServers"] as? [String] {
            self.realServers = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RsType"] as? Int32 {
            self.rsType = value
        }
    }
}

public class ModifyWebRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyWebRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyWebRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyWebRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseInstanceRequest : Tea.TeaModel {
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
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class ReleaseInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ReleaseInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ReleaseInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SwitchSchedulerRuleRequest : Tea.TeaModel {
    public var ruleName: String?

    public var ruleType: Int32?

    public var switchData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.switchData != nil {
            map["SwitchData"] = self.switchData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["RuleType"] as? Int32 {
            self.ruleType = value
        }
        if let value = dict["SwitchData"] as? String {
            self.switchData = value
        }
    }
}

public class SwitchSchedulerRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class SwitchSchedulerRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchSchedulerRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SwitchSchedulerRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
