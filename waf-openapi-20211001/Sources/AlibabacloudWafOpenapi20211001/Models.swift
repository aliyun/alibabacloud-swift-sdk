import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ClearMajorProtectionBlackIpRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var ruleId: Int64?

    public var templateId: Int64?

    public override init() {
        super.init()
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
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class ClearMajorProtectionBlackIpResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ClearMajorProtectionBlackIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ClearMajorProtectionBlackIpResponseBody?

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
            var model = ClearMajorProtectionBlackIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDefenseResourceGroupRequest : Tea.TeaModel {
    public var addList: String?

    public var description_: String?

    public var groupName: String?

    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addList != nil {
            map["AddList"] = self.addList!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddList") && dict["AddList"] != nil {
            self.addList = dict["AddList"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class CreateDefenseResourceGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class CreateDefenseResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDefenseResourceGroupResponseBody?

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
            var model = CreateDefenseResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDefenseRuleRequest : Tea.TeaModel {
    public var defenseScene: String?

    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var rules: String?

    public var templateId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defenseScene != nil {
            map["DefenseScene"] = self.defenseScene!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.rules != nil {
            map["Rules"] = self.rules!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefenseScene") && dict["DefenseScene"] != nil {
            self.defenseScene = dict["DefenseScene"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("Rules") && dict["Rules"] != nil {
            self.rules = dict["Rules"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class CreateDefenseRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class CreateDefenseRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDefenseRuleResponseBody?

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
            var model = CreateDefenseRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDefenseTemplateRequest : Tea.TeaModel {
    public var defenseScene: String?

    public var description_: String?

    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var templateName: String?

    public var templateOrigin: String?

    public var templateStatus: Int32?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defenseScene != nil {
            map["DefenseScene"] = self.defenseScene!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateOrigin != nil {
            map["TemplateOrigin"] = self.templateOrigin!
        }
        if self.templateStatus != nil {
            map["TemplateStatus"] = self.templateStatus!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefenseScene") && dict["DefenseScene"] != nil {
            self.defenseScene = dict["DefenseScene"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateOrigin") && dict["TemplateOrigin"] != nil {
            self.templateOrigin = dict["TemplateOrigin"] as! String
        }
        if dict.keys.contains("TemplateStatus") && dict["TemplateStatus"] != nil {
            self.templateStatus = dict["TemplateStatus"] as! Int32
        }
        if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class CreateDefenseTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var templateId: Int64?

    public override init() {
        super.init()
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class CreateDefenseTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDefenseTemplateResponseBody?

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
            var model = CreateDefenseTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDomainRequest : Tea.TeaModel {
    public class Listen : Tea.TeaModel {
        public var certId: String?

        public var cipherSuite: Int32?

        public var customCiphers: [String]?

        public var enableTLSv3: Bool?

        public var exclusiveIp: Bool?

        public var focusHttps: Bool?

        public var http2Enabled: Bool?

        public var httpPorts: [Int32]?

        public var httpsPorts: [Int32]?

        public var IPv6Enabled: Bool?

        public var protectionResource: String?

        public var SM2AccessOnly: Bool?

        public var SM2CertId: String?

        public var SM2Enabled: Bool?

        public var TLSVersion: String?

        public var xffHeaderMode: Int32?

        public var xffHeaders: [String]?

        public override init() {
            super.init()
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
            if self.cipherSuite != nil {
                map["CipherSuite"] = self.cipherSuite!
            }
            if self.customCiphers != nil {
                map["CustomCiphers"] = self.customCiphers!
            }
            if self.enableTLSv3 != nil {
                map["EnableTLSv3"] = self.enableTLSv3!
            }
            if self.exclusiveIp != nil {
                map["ExclusiveIp"] = self.exclusiveIp!
            }
            if self.focusHttps != nil {
                map["FocusHttps"] = self.focusHttps!
            }
            if self.http2Enabled != nil {
                map["Http2Enabled"] = self.http2Enabled!
            }
            if self.httpPorts != nil {
                map["HttpPorts"] = self.httpPorts!
            }
            if self.httpsPorts != nil {
                map["HttpsPorts"] = self.httpsPorts!
            }
            if self.IPv6Enabled != nil {
                map["IPv6Enabled"] = self.IPv6Enabled!
            }
            if self.protectionResource != nil {
                map["ProtectionResource"] = self.protectionResource!
            }
            if self.SM2AccessOnly != nil {
                map["SM2AccessOnly"] = self.SM2AccessOnly!
            }
            if self.SM2CertId != nil {
                map["SM2CertId"] = self.SM2CertId!
            }
            if self.SM2Enabled != nil {
                map["SM2Enabled"] = self.SM2Enabled!
            }
            if self.TLSVersion != nil {
                map["TLSVersion"] = self.TLSVersion!
            }
            if self.xffHeaderMode != nil {
                map["XffHeaderMode"] = self.xffHeaderMode!
            }
            if self.xffHeaders != nil {
                map["XffHeaders"] = self.xffHeaders!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertId") && dict["CertId"] != nil {
                self.certId = dict["CertId"] as! String
            }
            if dict.keys.contains("CipherSuite") && dict["CipherSuite"] != nil {
                self.cipherSuite = dict["CipherSuite"] as! Int32
            }
            if dict.keys.contains("CustomCiphers") && dict["CustomCiphers"] != nil {
                self.customCiphers = dict["CustomCiphers"] as! [String]
            }
            if dict.keys.contains("EnableTLSv3") && dict["EnableTLSv3"] != nil {
                self.enableTLSv3 = dict["EnableTLSv3"] as! Bool
            }
            if dict.keys.contains("ExclusiveIp") && dict["ExclusiveIp"] != nil {
                self.exclusiveIp = dict["ExclusiveIp"] as! Bool
            }
            if dict.keys.contains("FocusHttps") && dict["FocusHttps"] != nil {
                self.focusHttps = dict["FocusHttps"] as! Bool
            }
            if dict.keys.contains("Http2Enabled") && dict["Http2Enabled"] != nil {
                self.http2Enabled = dict["Http2Enabled"] as! Bool
            }
            if dict.keys.contains("HttpPorts") && dict["HttpPorts"] != nil {
                self.httpPorts = dict["HttpPorts"] as! [Int32]
            }
            if dict.keys.contains("HttpsPorts") && dict["HttpsPorts"] != nil {
                self.httpsPorts = dict["HttpsPorts"] as! [Int32]
            }
            if dict.keys.contains("IPv6Enabled") && dict["IPv6Enabled"] != nil {
                self.IPv6Enabled = dict["IPv6Enabled"] as! Bool
            }
            if dict.keys.contains("ProtectionResource") && dict["ProtectionResource"] != nil {
                self.protectionResource = dict["ProtectionResource"] as! String
            }
            if dict.keys.contains("SM2AccessOnly") && dict["SM2AccessOnly"] != nil {
                self.SM2AccessOnly = dict["SM2AccessOnly"] as! Bool
            }
            if dict.keys.contains("SM2CertId") && dict["SM2CertId"] != nil {
                self.SM2CertId = dict["SM2CertId"] as! String
            }
            if dict.keys.contains("SM2Enabled") && dict["SM2Enabled"] != nil {
                self.SM2Enabled = dict["SM2Enabled"] as! Bool
            }
            if dict.keys.contains("TLSVersion") && dict["TLSVersion"] != nil {
                self.TLSVersion = dict["TLSVersion"] as! String
            }
            if dict.keys.contains("XffHeaderMode") && dict["XffHeaderMode"] != nil {
                self.xffHeaderMode = dict["XffHeaderMode"] as! Int32
            }
            if dict.keys.contains("XffHeaders") && dict["XffHeaders"] != nil {
                self.xffHeaders = dict["XffHeaders"] as! [String]
            }
        }
    }
    public class Redirect : Tea.TeaModel {
        public class RequestHeaders : Tea.TeaModel {
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
        public var backends: [String]?

        public var cnameEnabled: Bool?

        public var connectTimeout: Int32?

        public var focusHttpBackend: Bool?

        public var keepalive: Bool?

        public var keepaliveRequests: Int32?

        public var keepaliveTimeout: Int32?

        public var loadbalance: String?

        public var readTimeout: Int32?

        public var requestHeaders: [CreateDomainRequest.Redirect.RequestHeaders]?

        public var retry: Bool?

        public var routingRules: String?

        public var sniEnabled: Bool?

        public var sniHost: String?

        public var writeTimeout: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backends != nil {
                map["Backends"] = self.backends!
            }
            if self.cnameEnabled != nil {
                map["CnameEnabled"] = self.cnameEnabled!
            }
            if self.connectTimeout != nil {
                map["ConnectTimeout"] = self.connectTimeout!
            }
            if self.focusHttpBackend != nil {
                map["FocusHttpBackend"] = self.focusHttpBackend!
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
            if self.loadbalance != nil {
                map["Loadbalance"] = self.loadbalance!
            }
            if self.readTimeout != nil {
                map["ReadTimeout"] = self.readTimeout!
            }
            if self.requestHeaders != nil {
                var tmp : [Any] = []
                for k in self.requestHeaders! {
                    tmp.append(k.toMap())
                }
                map["RequestHeaders"] = tmp
            }
            if self.retry != nil {
                map["Retry"] = self.retry!
            }
            if self.routingRules != nil {
                map["RoutingRules"] = self.routingRules!
            }
            if self.sniEnabled != nil {
                map["SniEnabled"] = self.sniEnabled!
            }
            if self.sniHost != nil {
                map["SniHost"] = self.sniHost!
            }
            if self.writeTimeout != nil {
                map["WriteTimeout"] = self.writeTimeout!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Backends") && dict["Backends"] != nil {
                self.backends = dict["Backends"] as! [String]
            }
            if dict.keys.contains("CnameEnabled") && dict["CnameEnabled"] != nil {
                self.cnameEnabled = dict["CnameEnabled"] as! Bool
            }
            if dict.keys.contains("ConnectTimeout") && dict["ConnectTimeout"] != nil {
                self.connectTimeout = dict["ConnectTimeout"] as! Int32
            }
            if dict.keys.contains("FocusHttpBackend") && dict["FocusHttpBackend"] != nil {
                self.focusHttpBackend = dict["FocusHttpBackend"] as! Bool
            }
            if dict.keys.contains("Keepalive") && dict["Keepalive"] != nil {
                self.keepalive = dict["Keepalive"] as! Bool
            }
            if dict.keys.contains("KeepaliveRequests") && dict["KeepaliveRequests"] != nil {
                self.keepaliveRequests = dict["KeepaliveRequests"] as! Int32
            }
            if dict.keys.contains("KeepaliveTimeout") && dict["KeepaliveTimeout"] != nil {
                self.keepaliveTimeout = dict["KeepaliveTimeout"] as! Int32
            }
            if dict.keys.contains("Loadbalance") && dict["Loadbalance"] != nil {
                self.loadbalance = dict["Loadbalance"] as! String
            }
            if dict.keys.contains("ReadTimeout") && dict["ReadTimeout"] != nil {
                self.readTimeout = dict["ReadTimeout"] as! Int32
            }
            if dict.keys.contains("RequestHeaders") && dict["RequestHeaders"] != nil {
                var tmp : [CreateDomainRequest.Redirect.RequestHeaders] = []
                for v in dict["RequestHeaders"] as! [Any] {
                    var model = CreateDomainRequest.Redirect.RequestHeaders()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestHeaders = tmp
            }
            if dict.keys.contains("Retry") && dict["Retry"] != nil {
                self.retry = dict["Retry"] as! Bool
            }
            if dict.keys.contains("RoutingRules") && dict["RoutingRules"] != nil {
                self.routingRules = dict["RoutingRules"] as! String
            }
            if dict.keys.contains("SniEnabled") && dict["SniEnabled"] != nil {
                self.sniEnabled = dict["SniEnabled"] as! Bool
            }
            if dict.keys.contains("SniHost") && dict["SniHost"] != nil {
                self.sniHost = dict["SniHost"] as! String
            }
            if dict.keys.contains("WriteTimeout") && dict["WriteTimeout"] != nil {
                self.writeTimeout = dict["WriteTimeout"] as! Int32
            }
        }
    }
    public var accessType: String?

    public var domain: String?

    public var instanceId: String?

    public var listen: CreateDomainRequest.Listen?

    public var redirect: CreateDomainRequest.Redirect?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listen?.validate()
        try self.redirect?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessType != nil {
            map["AccessType"] = self.accessType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.listen != nil {
            map["Listen"] = self.listen?.toMap()
        }
        if self.redirect != nil {
            map["Redirect"] = self.redirect?.toMap()
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessType") && dict["AccessType"] != nil {
            self.accessType = dict["AccessType"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Listen") && dict["Listen"] != nil {
            var model = CreateDomainRequest.Listen()
            model.fromMap(dict["Listen"] as! [String: Any])
            self.listen = model
        }
        if dict.keys.contains("Redirect") && dict["Redirect"] != nil {
            var model = CreateDomainRequest.Redirect()
            model.fromMap(dict["Redirect"] as! [String: Any])
            self.redirect = model
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class CreateDomainShrinkRequest : Tea.TeaModel {
    public var accessType: String?

    public var domain: String?

    public var instanceId: String?

    public var listenShrink: String?

    public var redirectShrink: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

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
        if self.accessType != nil {
            map["AccessType"] = self.accessType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.listenShrink != nil {
            map["Listen"] = self.listenShrink!
        }
        if self.redirectShrink != nil {
            map["Redirect"] = self.redirectShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessType") && dict["AccessType"] != nil {
            self.accessType = dict["AccessType"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Listen") && dict["Listen"] != nil {
            self.listenShrink = dict["Listen"] as! String
        }
        if dict.keys.contains("Redirect") && dict["Redirect"] != nil {
            self.redirectShrink = dict["Redirect"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class CreateDomainResponseBody : Tea.TeaModel {
    public class DomainInfo : Tea.TeaModel {
        public var cname: String?

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
            if self.cname != nil {
                map["Cname"] = self.cname!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cname") && dict["Cname"] != nil {
                self.cname = dict["Cname"] as! String
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
        }
    }
    public var domainInfo: CreateDomainResponseBody.DomainInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainInfo != nil {
            map["DomainInfo"] = self.domainInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainInfo") && dict["DomainInfo"] != nil {
            var model = CreateDomainResponseBody.DomainInfo()
            model.fromMap(dict["DomainInfo"] as! [String: Any])
            self.domainInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
            var model = CreateDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMajorProtectionBlackIpRequest : Tea.TeaModel {
    public var description_: String?

    public var expiredTime: Int64?

    public var instanceId: String?

    public var ipList: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var ruleId: Int64?

    public var templateId: Int64?

    public override init() {
        super.init()
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
        if self.expiredTime != nil {
            map["ExpiredTime"] = self.expiredTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ipList != nil {
            map["IpList"] = self.ipList!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
            self.expiredTime = dict["ExpiredTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IpList") && dict["IpList"] != nil {
            self.ipList = dict["IpList"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class CreateMajorProtectionBlackIpResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class CreateMajorProtectionBlackIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMajorProtectionBlackIpResponseBody?

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
            var model = CreateMajorProtectionBlackIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDefenseResourceGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DeleteDefenseResourceGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteDefenseResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDefenseResourceGroupResponseBody?

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
            var model = DeleteDefenseResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDefenseRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var ruleIds: String?

    public var templateId: Int64?

    public override init() {
        super.init()
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
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.ruleIds != nil {
            map["RuleIds"] = self.ruleIds!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleIds") && dict["RuleIds"] != nil {
            self.ruleIds = dict["RuleIds"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class DeleteDefenseRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteDefenseRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDefenseRuleResponseBody?

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
            var model = DeleteDefenseRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDefenseTemplateRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var templateId: Int64?

    public override init() {
        super.init()
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
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class DeleteDefenseTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteDefenseTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDefenseTemplateResponseBody?

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
            var model = DeleteDefenseTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDomainRequest : Tea.TeaModel {
    public var accessType: String?

    public var domain: String?

    public var domainId: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.accessType != nil {
            map["AccessType"] = self.accessType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessType") && dict["AccessType"] != nil {
            self.accessType = dict["AccessType"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("DomainId") && dict["DomainId"] != nil {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
            var model = DeleteDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteMajorProtectionBlackIpRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ipList: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var ruleId: Int64?

    public var templateId: Int64?

    public override init() {
        super.init()
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
        if self.ipList != nil {
            map["IpList"] = self.ipList!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IpList") && dict["IpList"] != nil {
            self.ipList = dict["IpList"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class DeleteMajorProtectionBlackIpResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteMajorProtectionBlackIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMajorProtectionBlackIpResponseBody?

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
            var model = DeleteMajorProtectionBlackIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDefenseResourceGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeDefenseResourceGroupResponseBody : Tea.TeaModel {
    public class Group : Tea.TeaModel {
        public var description_: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var groupName: String?

        public var resourceList: String?

        public override init() {
            super.init()
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
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.resourceList != nil {
                map["ResourceList"] = self.resourceList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("ResourceList") && dict["ResourceList"] != nil {
                self.resourceList = dict["ResourceList"] as! String
            }
        }
    }
    public var group: DescribeDefenseResourceGroupResponseBody.Group?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.group?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.group != nil {
            map["Group"] = self.group?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Group") && dict["Group"] != nil {
            var model = DescribeDefenseResourceGroupResponseBody.Group()
            model.fromMap(dict["Group"] as! [String: Any])
            self.group = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDefenseResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDefenseResourceGroupResponseBody?

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
            var model = DescribeDefenseResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDefenseResourcesRequest : Tea.TeaModel {
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
    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var sourceIp: String?

    public var tag: [DescribeDefenseResourcesRequest.Tag]?

    public override init() {
        super.init()
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
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [DescribeDefenseResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeDefenseResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class DescribeDefenseResourcesResponseBody : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var acwCookieStatus: Int32?

        public var acwSecureStatus: Int32?

        public var acwV3SecureStatus: Int32?

        public var customHeaders: [String]?

        public var description_: String?

        public var detail: [String: Any]?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var pattern: String?

        public var product: String?

        public var resource: String?

        public var resourceGroup: String?

        public var resourceManagerResourceGroupId: String?

        public var resourceOrigin: String?

        public var xffStatus: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acwCookieStatus != nil {
                map["AcwCookieStatus"] = self.acwCookieStatus!
            }
            if self.acwSecureStatus != nil {
                map["AcwSecureStatus"] = self.acwSecureStatus!
            }
            if self.acwV3SecureStatus != nil {
                map["AcwV3SecureStatus"] = self.acwV3SecureStatus!
            }
            if self.customHeaders != nil {
                map["CustomHeaders"] = self.customHeaders!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.detail != nil {
                map["Detail"] = self.detail!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.pattern != nil {
                map["Pattern"] = self.pattern!
            }
            if self.product != nil {
                map["Product"] = self.product!
            }
            if self.resource != nil {
                map["Resource"] = self.resource!
            }
            if self.resourceGroup != nil {
                map["ResourceGroup"] = self.resourceGroup!
            }
            if self.resourceManagerResourceGroupId != nil {
                map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
            }
            if self.resourceOrigin != nil {
                map["ResourceOrigin"] = self.resourceOrigin!
            }
            if self.xffStatus != nil {
                map["XffStatus"] = self.xffStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcwCookieStatus") && dict["AcwCookieStatus"] != nil {
                self.acwCookieStatus = dict["AcwCookieStatus"] as! Int32
            }
            if dict.keys.contains("AcwSecureStatus") && dict["AcwSecureStatus"] != nil {
                self.acwSecureStatus = dict["AcwSecureStatus"] as! Int32
            }
            if dict.keys.contains("AcwV3SecureStatus") && dict["AcwV3SecureStatus"] != nil {
                self.acwV3SecureStatus = dict["AcwV3SecureStatus"] as! Int32
            }
            if dict.keys.contains("CustomHeaders") && dict["CustomHeaders"] != nil {
                self.customHeaders = dict["CustomHeaders"] as! [String]
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Detail") && dict["Detail"] != nil {
                self.detail = dict["Detail"] as! [String: Any]
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("Pattern") && dict["Pattern"] != nil {
                self.pattern = dict["Pattern"] as! String
            }
            if dict.keys.contains("Product") && dict["Product"] != nil {
                self.product = dict["Product"] as! String
            }
            if dict.keys.contains("Resource") && dict["Resource"] != nil {
                self.resource = dict["Resource"] as! String
            }
            if dict.keys.contains("ResourceGroup") && dict["ResourceGroup"] != nil {
                self.resourceGroup = dict["ResourceGroup"] as! String
            }
            if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
                self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
            }
            if dict.keys.contains("ResourceOrigin") && dict["ResourceOrigin"] != nil {
                self.resourceOrigin = dict["ResourceOrigin"] as! String
            }
            if dict.keys.contains("XffStatus") && dict["XffStatus"] != nil {
                self.xffStatus = dict["XffStatus"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var resources: [DescribeDefenseResourcesResponseBody.Resources]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") && dict["Resources"] != nil {
            var tmp : [DescribeDefenseResourcesResponseBody.Resources] = []
            for v in dict["Resources"] as! [Any] {
                var model = DescribeDefenseResourcesResponseBody.Resources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resources = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDefenseResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDefenseResourcesResponseBody?

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
            var model = DescribeDefenseResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDefenseRuleRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var ruleId: Int64?

    public var templateId: Int64?

    public override init() {
        super.init()
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
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class DescribeDefenseRuleResponseBody : Tea.TeaModel {
    public class Rule : Tea.TeaModel {
        public var config: String?

        public var defenseOrigin: String?

        public var defenseScene: String?

        public var gmtModified: Int64?

        public var ruleId: Int64?

        public var ruleName: String?

        public var status: Int32?

        public var templateId: Int64?

        public override init() {
            super.init()
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
            if self.defenseOrigin != nil {
                map["DefenseOrigin"] = self.defenseOrigin!
            }
            if self.defenseScene != nil {
                map["DefenseScene"] = self.defenseScene!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") && dict["Config"] != nil {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("DefenseOrigin") && dict["DefenseOrigin"] != nil {
                self.defenseOrigin = dict["DefenseOrigin"] as! String
            }
            if dict.keys.contains("DefenseScene") && dict["DefenseScene"] != nil {
                self.defenseScene = dict["DefenseScene"] as! String
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! Int64
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var rule: DescribeDefenseRuleResponseBody.Rule?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.rule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rule != nil {
            map["Rule"] = self.rule?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Rule") && dict["Rule"] != nil {
            var model = DescribeDefenseRuleResponseBody.Rule()
            model.fromMap(dict["Rule"] as! [String: Any])
            self.rule = model
        }
    }
}

public class DescribeDefenseRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDefenseRuleResponseBody?

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
            var model = DescribeDefenseRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDefenseRulesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var ruleType: String?

    public override init() {
        super.init()
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
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! String
        }
    }
}

public class DescribeDefenseRulesResponseBody : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public var config: String?

        public var defenseOrigin: String?

        public var defenseScene: String?

        public var gmtModified: Int64?

        public var ruleId: Int64?

        public var ruleName: String?

        public var status: Int32?

        public var templateId: Int64?

        public override init() {
            super.init()
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
            if self.defenseOrigin != nil {
                map["DefenseOrigin"] = self.defenseOrigin!
            }
            if self.defenseScene != nil {
                map["DefenseScene"] = self.defenseScene!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") && dict["Config"] != nil {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("DefenseOrigin") && dict["DefenseOrigin"] != nil {
                self.defenseOrigin = dict["DefenseOrigin"] as! String
            }
            if dict.keys.contains("DefenseScene") && dict["DefenseScene"] != nil {
                self.defenseScene = dict["DefenseScene"] as! String
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! Int64
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var rules: [DescribeDefenseRulesResponseBody.Rules]?

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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Rules") && dict["Rules"] != nil {
            var tmp : [DescribeDefenseRulesResponseBody.Rules] = []
            for v in dict["Rules"] as! [Any] {
                var model = DescribeDefenseRulesResponseBody.Rules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rules = tmp
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDefenseRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDefenseRulesResponseBody?

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
            var model = DescribeDefenseRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDefenseTemplateRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var templateId: Int64?

    public override init() {
        super.init()
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
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class DescribeDefenseTemplateResponseBody : Tea.TeaModel {
    public class Template : Tea.TeaModel {
        public var defenseScene: String?

        public var defenseSubScene: String?

        public var description_: String?

        public var gmtModified: Int64?

        public var templateId: Int64?

        public var templateName: String?

        public var templateOrigin: String?

        public var templateStatus: Int32?

        public var templateType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.defenseScene != nil {
                map["DefenseScene"] = self.defenseScene!
            }
            if self.defenseSubScene != nil {
                map["DefenseSubScene"] = self.defenseSubScene!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateOrigin != nil {
                map["TemplateOrigin"] = self.templateOrigin!
            }
            if self.templateStatus != nil {
                map["TemplateStatus"] = self.templateStatus!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefenseScene") && dict["DefenseScene"] != nil {
                self.defenseScene = dict["DefenseScene"] as! String
            }
            if dict.keys.contains("DefenseSubScene") && dict["DefenseSubScene"] != nil {
                self.defenseSubScene = dict["DefenseSubScene"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! Int64
            }
            if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateOrigin") && dict["TemplateOrigin"] != nil {
                self.templateOrigin = dict["TemplateOrigin"] as! String
            }
            if dict.keys.contains("TemplateStatus") && dict["TemplateStatus"] != nil {
                self.templateStatus = dict["TemplateStatus"] as! Int32
            }
            if dict.keys.contains("TemplateType") && dict["TemplateType"] != nil {
                self.templateType = dict["TemplateType"] as! String
            }
        }
    }
    public var requestId: String?

    public var template: DescribeDefenseTemplateResponseBody.Template?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.template?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.template != nil {
            map["Template"] = self.template?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Template") && dict["Template"] != nil {
            var model = DescribeDefenseTemplateResponseBody.Template()
            model.fromMap(dict["Template"] as! [String: Any])
            self.template = model
        }
    }
}

public class DescribeDefenseTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDefenseTemplateResponseBody?

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
            var model = DescribeDefenseTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainDetailRequest : Tea.TeaModel {
    public var domain: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeDomainDetailResponseBody : Tea.TeaModel {
    public class CertDetail : Tea.TeaModel {
        public var commonName: String?

        public var endTime: Int64?

        public var id: String?

        public var name: String?

        public var sans: [String]?

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
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommonName") && dict["CommonName"] != nil {
                self.commonName = dict["CommonName"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Sans") && dict["Sans"] != nil {
                self.sans = dict["Sans"] as! [String]
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int64
            }
        }
    }
    public class Listen : Tea.TeaModel {
        public var certId: Int64?

        public var cipherSuite: Int64?

        public var customCiphers: [String]?

        public var enableTLSv3: Bool?

        public var exclusiveIp: Bool?

        public var focusHttps: Bool?

        public var http2Enabled: Bool?

        public var httpPorts: [Int64]?

        public var httpsPorts: [Int64]?

        public var IPv6Enabled: Bool?

        public var protectionResource: String?

        public var SM2AccessOnly: Bool?

        public var SM2CertId: Bool?

        public var SM2Enabled: Bool?

        public var TLSVersion: String?

        public var xffHeaderMode: Int64?

        public var xffHeaders: [String]?

        public override init() {
            super.init()
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
            if self.cipherSuite != nil {
                map["CipherSuite"] = self.cipherSuite!
            }
            if self.customCiphers != nil {
                map["CustomCiphers"] = self.customCiphers!
            }
            if self.enableTLSv3 != nil {
                map["EnableTLSv3"] = self.enableTLSv3!
            }
            if self.exclusiveIp != nil {
                map["ExclusiveIp"] = self.exclusiveIp!
            }
            if self.focusHttps != nil {
                map["FocusHttps"] = self.focusHttps!
            }
            if self.http2Enabled != nil {
                map["Http2Enabled"] = self.http2Enabled!
            }
            if self.httpPorts != nil {
                map["HttpPorts"] = self.httpPorts!
            }
            if self.httpsPorts != nil {
                map["HttpsPorts"] = self.httpsPorts!
            }
            if self.IPv6Enabled != nil {
                map["IPv6Enabled"] = self.IPv6Enabled!
            }
            if self.protectionResource != nil {
                map["ProtectionResource"] = self.protectionResource!
            }
            if self.SM2AccessOnly != nil {
                map["SM2AccessOnly"] = self.SM2AccessOnly!
            }
            if self.SM2CertId != nil {
                map["SM2CertId"] = self.SM2CertId!
            }
            if self.SM2Enabled != nil {
                map["SM2Enabled"] = self.SM2Enabled!
            }
            if self.TLSVersion != nil {
                map["TLSVersion"] = self.TLSVersion!
            }
            if self.xffHeaderMode != nil {
                map["XffHeaderMode"] = self.xffHeaderMode!
            }
            if self.xffHeaders != nil {
                map["XffHeaders"] = self.xffHeaders!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertId") && dict["CertId"] != nil {
                self.certId = dict["CertId"] as! Int64
            }
            if dict.keys.contains("CipherSuite") && dict["CipherSuite"] != nil {
                self.cipherSuite = dict["CipherSuite"] as! Int64
            }
            if dict.keys.contains("CustomCiphers") && dict["CustomCiphers"] != nil {
                self.customCiphers = dict["CustomCiphers"] as! [String]
            }
            if dict.keys.contains("EnableTLSv3") && dict["EnableTLSv3"] != nil {
                self.enableTLSv3 = dict["EnableTLSv3"] as! Bool
            }
            if dict.keys.contains("ExclusiveIp") && dict["ExclusiveIp"] != nil {
                self.exclusiveIp = dict["ExclusiveIp"] as! Bool
            }
            if dict.keys.contains("FocusHttps") && dict["FocusHttps"] != nil {
                self.focusHttps = dict["FocusHttps"] as! Bool
            }
            if dict.keys.contains("Http2Enabled") && dict["Http2Enabled"] != nil {
                self.http2Enabled = dict["Http2Enabled"] as! Bool
            }
            if dict.keys.contains("HttpPorts") && dict["HttpPorts"] != nil {
                self.httpPorts = dict["HttpPorts"] as! [Int64]
            }
            if dict.keys.contains("HttpsPorts") && dict["HttpsPorts"] != nil {
                self.httpsPorts = dict["HttpsPorts"] as! [Int64]
            }
            if dict.keys.contains("IPv6Enabled") && dict["IPv6Enabled"] != nil {
                self.IPv6Enabled = dict["IPv6Enabled"] as! Bool
            }
            if dict.keys.contains("ProtectionResource") && dict["ProtectionResource"] != nil {
                self.protectionResource = dict["ProtectionResource"] as! String
            }
            if dict.keys.contains("SM2AccessOnly") && dict["SM2AccessOnly"] != nil {
                self.SM2AccessOnly = dict["SM2AccessOnly"] as! Bool
            }
            if dict.keys.contains("SM2CertId") && dict["SM2CertId"] != nil {
                self.SM2CertId = dict["SM2CertId"] as! Bool
            }
            if dict.keys.contains("SM2Enabled") && dict["SM2Enabled"] != nil {
                self.SM2Enabled = dict["SM2Enabled"] as! Bool
            }
            if dict.keys.contains("TLSVersion") && dict["TLSVersion"] != nil {
                self.TLSVersion = dict["TLSVersion"] as! String
            }
            if dict.keys.contains("XffHeaderMode") && dict["XffHeaderMode"] != nil {
                self.xffHeaderMode = dict["XffHeaderMode"] as! Int64
            }
            if dict.keys.contains("XffHeaders") && dict["XffHeaders"] != nil {
                self.xffHeaders = dict["XffHeaders"] as! [String]
            }
        }
    }
    public class Redirect : Tea.TeaModel {
        public class Backends : Tea.TeaModel {
            public var backend: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backend != nil {
                    map["Backend"] = self.backend!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Backend") && dict["Backend"] != nil {
                    self.backend = dict["Backend"] as! String
                }
            }
        }
        public class RequestHeaders : Tea.TeaModel {
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
        public var backends: [DescribeDomainDetailResponseBody.Redirect.Backends]?

        public var connectTimeout: Int32?

        public var focusHttpBackend: Bool?

        public var keepalive: Bool?

        public var keepaliveRequests: Int32?

        public var keepaliveTimeout: Int32?

        public var loadbalance: String?

        public var readTimeout: Int32?

        public var requestHeaders: [DescribeDomainDetailResponseBody.Redirect.RequestHeaders]?

        public var retry: Bool?

        public var sniEnabled: Bool?

        public var sniHost: String?

        public var writeTimeout: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backends != nil {
                var tmp : [Any] = []
                for k in self.backends! {
                    tmp.append(k.toMap())
                }
                map["Backends"] = tmp
            }
            if self.connectTimeout != nil {
                map["ConnectTimeout"] = self.connectTimeout!
            }
            if self.focusHttpBackend != nil {
                map["FocusHttpBackend"] = self.focusHttpBackend!
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
            if self.loadbalance != nil {
                map["Loadbalance"] = self.loadbalance!
            }
            if self.readTimeout != nil {
                map["ReadTimeout"] = self.readTimeout!
            }
            if self.requestHeaders != nil {
                var tmp : [Any] = []
                for k in self.requestHeaders! {
                    tmp.append(k.toMap())
                }
                map["RequestHeaders"] = tmp
            }
            if self.retry != nil {
                map["Retry"] = self.retry!
            }
            if self.sniEnabled != nil {
                map["SniEnabled"] = self.sniEnabled!
            }
            if self.sniHost != nil {
                map["SniHost"] = self.sniHost!
            }
            if self.writeTimeout != nil {
                map["WriteTimeout"] = self.writeTimeout!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Backends") && dict["Backends"] != nil {
                var tmp : [DescribeDomainDetailResponseBody.Redirect.Backends] = []
                for v in dict["Backends"] as! [Any] {
                    var model = DescribeDomainDetailResponseBody.Redirect.Backends()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.backends = tmp
            }
            if dict.keys.contains("ConnectTimeout") && dict["ConnectTimeout"] != nil {
                self.connectTimeout = dict["ConnectTimeout"] as! Int32
            }
            if dict.keys.contains("FocusHttpBackend") && dict["FocusHttpBackend"] != nil {
                self.focusHttpBackend = dict["FocusHttpBackend"] as! Bool
            }
            if dict.keys.contains("Keepalive") && dict["Keepalive"] != nil {
                self.keepalive = dict["Keepalive"] as! Bool
            }
            if dict.keys.contains("KeepaliveRequests") && dict["KeepaliveRequests"] != nil {
                self.keepaliveRequests = dict["KeepaliveRequests"] as! Int32
            }
            if dict.keys.contains("KeepaliveTimeout") && dict["KeepaliveTimeout"] != nil {
                self.keepaliveTimeout = dict["KeepaliveTimeout"] as! Int32
            }
            if dict.keys.contains("Loadbalance") && dict["Loadbalance"] != nil {
                self.loadbalance = dict["Loadbalance"] as! String
            }
            if dict.keys.contains("ReadTimeout") && dict["ReadTimeout"] != nil {
                self.readTimeout = dict["ReadTimeout"] as! Int32
            }
            if dict.keys.contains("RequestHeaders") && dict["RequestHeaders"] != nil {
                var tmp : [DescribeDomainDetailResponseBody.Redirect.RequestHeaders] = []
                for v in dict["RequestHeaders"] as! [Any] {
                    var model = DescribeDomainDetailResponseBody.Redirect.RequestHeaders()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestHeaders = tmp
            }
            if dict.keys.contains("Retry") && dict["Retry"] != nil {
                self.retry = dict["Retry"] as! Bool
            }
            if dict.keys.contains("SniEnabled") && dict["SniEnabled"] != nil {
                self.sniEnabled = dict["SniEnabled"] as! Bool
            }
            if dict.keys.contains("SniHost") && dict["SniHost"] != nil {
                self.sniHost = dict["SniHost"] as! String
            }
            if dict.keys.contains("WriteTimeout") && dict["WriteTimeout"] != nil {
                self.writeTimeout = dict["WriteTimeout"] as! Int32
            }
        }
    }
    public class SM2CertDetail : Tea.TeaModel {
        public var commonName: String?

        public var endTime: Int64?

        public var id: String?

        public var name: String?

        public var sans: [String]?

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
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommonName") && dict["CommonName"] != nil {
                self.commonName = dict["CommonName"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Sans") && dict["Sans"] != nil {
                self.sans = dict["Sans"] as! [String]
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int64
            }
        }
    }
    public var certDetail: DescribeDomainDetailResponseBody.CertDetail?

    public var cname: String?

    public var domain: String?

    public var listen: DescribeDomainDetailResponseBody.Listen?

    public var redirect: DescribeDomainDetailResponseBody.Redirect?

    public var requestId: String?

    public var resourceManagerResourceGroupId: String?

    public var SM2CertDetail: DescribeDomainDetailResponseBody.SM2CertDetail?

    public var status: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.certDetail?.validate()
        try self.listen?.validate()
        try self.redirect?.validate()
        try self.SM2CertDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certDetail != nil {
            map["CertDetail"] = self.certDetail?.toMap()
        }
        if self.cname != nil {
            map["Cname"] = self.cname!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.listen != nil {
            map["Listen"] = self.listen?.toMap()
        }
        if self.redirect != nil {
            map["Redirect"] = self.redirect?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.SM2CertDetail != nil {
            map["SM2CertDetail"] = self.SM2CertDetail?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertDetail") && dict["CertDetail"] != nil {
            var model = DescribeDomainDetailResponseBody.CertDetail()
            model.fromMap(dict["CertDetail"] as! [String: Any])
            self.certDetail = model
        }
        if dict.keys.contains("Cname") && dict["Cname"] != nil {
            self.cname = dict["Cname"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Listen") && dict["Listen"] != nil {
            var model = DescribeDomainDetailResponseBody.Listen()
            model.fromMap(dict["Listen"] as! [String: Any])
            self.listen = model
        }
        if dict.keys.contains("Redirect") && dict["Redirect"] != nil {
            var model = DescribeDomainDetailResponseBody.Redirect()
            model.fromMap(dict["Redirect"] as! [String: Any])
            self.redirect = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("SM2CertDetail") && dict["SM2CertDetail"] != nil {
            var model = DescribeDomainDetailResponseBody.SM2CertDetail()
            model.fromMap(dict["SM2CertDetail"] as! [String: Any])
            self.SM2CertDetail = model
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int64
        }
    }
}

public class DescribeDomainDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainDetailResponseBody?

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
            var model = DescribeDomainDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainsRequest : Tea.TeaModel {
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
    public var backend: String?

    public var domain: String?

    public var instanceId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var sourceIp: String?

    public var tag: [DescribeDomainsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backend != nil {
            map["Backend"] = self.backend!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
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
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
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
        if dict.keys.contains("Backend") && dict["Backend"] != nil {
            self.backend = dict["Backend"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [DescribeDomainsRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeDomainsRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class DescribeDomainsResponseBody : Tea.TeaModel {
    public class Domains : Tea.TeaModel {
        public class Backeds : Tea.TeaModel {
            public class Http : Tea.TeaModel {
                public var backend: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.backend != nil {
                        map["Backend"] = self.backend!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Backend") && dict["Backend"] != nil {
                        self.backend = dict["Backend"] as! String
                    }
                }
            }
            public class Https : Tea.TeaModel {
                public var backend: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.backend != nil {
                        map["Backend"] = self.backend!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Backend") && dict["Backend"] != nil {
                        self.backend = dict["Backend"] as! String
                    }
                }
            }
            public var http: [DescribeDomainsResponseBody.Domains.Backeds.Http]?

            public var https: [DescribeDomainsResponseBody.Domains.Backeds.Https]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.http != nil {
                    var tmp : [Any] = []
                    for k in self.http! {
                        tmp.append(k.toMap())
                    }
                    map["Http"] = tmp
                }
                if self.https != nil {
                    var tmp : [Any] = []
                    for k in self.https! {
                        tmp.append(k.toMap())
                    }
                    map["Https"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Http") && dict["Http"] != nil {
                    var tmp : [DescribeDomainsResponseBody.Domains.Backeds.Http] = []
                    for v in dict["Http"] as! [Any] {
                        var model = DescribeDomainsResponseBody.Domains.Backeds.Http()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.http = tmp
                }
                if dict.keys.contains("Https") && dict["Https"] != nil {
                    var tmp : [DescribeDomainsResponseBody.Domains.Backeds.Https] = []
                    for v in dict["Https"] as! [Any] {
                        var model = DescribeDomainsResponseBody.Domains.Backeds.Https()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.https = tmp
                }
            }
        }
        public class ListenPorts : Tea.TeaModel {
            public var http: [Int64]?

            public var https: [Int64]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.http != nil {
                    map["Http"] = self.http!
                }
                if self.https != nil {
                    map["Https"] = self.https!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Http") && dict["Http"] != nil {
                    self.http = dict["Http"] as! [Int64]
                }
                if dict.keys.contains("Https") && dict["Https"] != nil {
                    self.https = dict["Https"] as! [Int64]
                }
            }
        }
        public var backeds: DescribeDomainsResponseBody.Domains.Backeds?

        public var cname: String?

        public var domain: String?

        public var listenPorts: DescribeDomainsResponseBody.Domains.ListenPorts?

        public var resourceManagerResourceGroupId: String?

        public var status: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.backeds?.validate()
            try self.listenPorts?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backeds != nil {
                map["Backeds"] = self.backeds?.toMap()
            }
            if self.cname != nil {
                map["Cname"] = self.cname!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.listenPorts != nil {
                map["ListenPorts"] = self.listenPorts?.toMap()
            }
            if self.resourceManagerResourceGroupId != nil {
                map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Backeds") && dict["Backeds"] != nil {
                var model = DescribeDomainsResponseBody.Domains.Backeds()
                model.fromMap(dict["Backeds"] as! [String: Any])
                self.backeds = model
            }
            if dict.keys.contains("Cname") && dict["Cname"] != nil {
                self.cname = dict["Cname"] as! String
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("ListenPorts") && dict["ListenPorts"] != nil {
                var model = DescribeDomainsResponseBody.Domains.ListenPorts()
                model.fromMap(dict["ListenPorts"] as! [String: Any])
                self.listenPorts = model
            }
            if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
                self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
        }
    }
    public var domains: [DescribeDomainsResponseBody.Domains]?

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
        if self.domains != nil {
            var tmp : [Any] = []
            for k in self.domains! {
                tmp.append(k.toMap())
            }
            map["Domains"] = tmp
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
        if dict.keys.contains("Domains") && dict["Domains"] != nil {
            var tmp : [DescribeDomainsResponseBody.Domains] = []
            for v in dict["Domains"] as! [Any] {
                var model = DescribeDomainsResponseBody.Domains()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.domains = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
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
            var model = DescribeDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFlowChartRequest : Tea.TeaModel {
    public var endTimestamp: String?

    public var instanceId: String?

    public var interval: String?

    public var regionId: String?

    public var resource: String?

    public var resourceManagerResourceGroupId: String?

    public var startTimestamp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Interval") && dict["Interval"] != nil {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") && dict["Resource"] != nil {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
            self.startTimestamp = dict["StartTimestamp"] as! String
        }
    }
}

public class DescribeFlowChartResponseBody : Tea.TeaModel {
    public class FlowChart : Tea.TeaModel {
        public var aclCustomBlockSum: Int64?

        public var aclCustomReportsSum: Int64?

        public var antiScanBlockSum: Int64?

        public var antibotBlockSum: Int64?

        public var antibotReportSum: String?

        public var antiscanReportsSum: Int64?

        public var blacklistBlockSum: String?

        public var blacklistReportsSum: Int64?

        public var ccCustomBlockSum: Int64?

        public var ccCustomReportsSum: Int64?

        public var ccSystemBlocksSum: Int64?

        public var ccSystemReportsSum: Int64?

        public var count: Int64?

        public var inBytes: Int64?

        public var index: Int64?

        public var maxPv: Int64?

        public var outBytes: Int64?

        public var ratelimitBlockSum: Int64?

        public var ratelimitReportSum: Int64?

        public var regionBlockBlocksSum: Int64?

        public var regionBlockReportsSum: Int64?

        public var robotCount: Int64?

        public var wafBlockSum: Int64?

        public var wafReportSum: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclCustomBlockSum != nil {
                map["AclCustomBlockSum"] = self.aclCustomBlockSum!
            }
            if self.aclCustomReportsSum != nil {
                map["AclCustomReportsSum"] = self.aclCustomReportsSum!
            }
            if self.antiScanBlockSum != nil {
                map["AntiScanBlockSum"] = self.antiScanBlockSum!
            }
            if self.antibotBlockSum != nil {
                map["AntibotBlockSum"] = self.antibotBlockSum!
            }
            if self.antibotReportSum != nil {
                map["AntibotReportSum"] = self.antibotReportSum!
            }
            if self.antiscanReportsSum != nil {
                map["AntiscanReportsSum"] = self.antiscanReportsSum!
            }
            if self.blacklistBlockSum != nil {
                map["BlacklistBlockSum"] = self.blacklistBlockSum!
            }
            if self.blacklistReportsSum != nil {
                map["BlacklistReportsSum"] = self.blacklistReportsSum!
            }
            if self.ccCustomBlockSum != nil {
                map["CcCustomBlockSum"] = self.ccCustomBlockSum!
            }
            if self.ccCustomReportsSum != nil {
                map["CcCustomReportsSum"] = self.ccCustomReportsSum!
            }
            if self.ccSystemBlocksSum != nil {
                map["CcSystemBlocksSum"] = self.ccSystemBlocksSum!
            }
            if self.ccSystemReportsSum != nil {
                map["CcSystemReportsSum"] = self.ccSystemReportsSum!
            }
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.inBytes != nil {
                map["InBytes"] = self.inBytes!
            }
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.maxPv != nil {
                map["MaxPv"] = self.maxPv!
            }
            if self.outBytes != nil {
                map["OutBytes"] = self.outBytes!
            }
            if self.ratelimitBlockSum != nil {
                map["RatelimitBlockSum"] = self.ratelimitBlockSum!
            }
            if self.ratelimitReportSum != nil {
                map["RatelimitReportSum"] = self.ratelimitReportSum!
            }
            if self.regionBlockBlocksSum != nil {
                map["RegionBlockBlocksSum"] = self.regionBlockBlocksSum!
            }
            if self.regionBlockReportsSum != nil {
                map["RegionBlockReportsSum"] = self.regionBlockReportsSum!
            }
            if self.robotCount != nil {
                map["RobotCount"] = self.robotCount!
            }
            if self.wafBlockSum != nil {
                map["WafBlockSum"] = self.wafBlockSum!
            }
            if self.wafReportSum != nil {
                map["WafReportSum"] = self.wafReportSum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclCustomBlockSum") && dict["AclCustomBlockSum"] != nil {
                self.aclCustomBlockSum = dict["AclCustomBlockSum"] as! Int64
            }
            if dict.keys.contains("AclCustomReportsSum") && dict["AclCustomReportsSum"] != nil {
                self.aclCustomReportsSum = dict["AclCustomReportsSum"] as! Int64
            }
            if dict.keys.contains("AntiScanBlockSum") && dict["AntiScanBlockSum"] != nil {
                self.antiScanBlockSum = dict["AntiScanBlockSum"] as! Int64
            }
            if dict.keys.contains("AntibotBlockSum") && dict["AntibotBlockSum"] != nil {
                self.antibotBlockSum = dict["AntibotBlockSum"] as! Int64
            }
            if dict.keys.contains("AntibotReportSum") && dict["AntibotReportSum"] != nil {
                self.antibotReportSum = dict["AntibotReportSum"] as! String
            }
            if dict.keys.contains("AntiscanReportsSum") && dict["AntiscanReportsSum"] != nil {
                self.antiscanReportsSum = dict["AntiscanReportsSum"] as! Int64
            }
            if dict.keys.contains("BlacklistBlockSum") && dict["BlacklistBlockSum"] != nil {
                self.blacklistBlockSum = dict["BlacklistBlockSum"] as! String
            }
            if dict.keys.contains("BlacklistReportsSum") && dict["BlacklistReportsSum"] != nil {
                self.blacklistReportsSum = dict["BlacklistReportsSum"] as! Int64
            }
            if dict.keys.contains("CcCustomBlockSum") && dict["CcCustomBlockSum"] != nil {
                self.ccCustomBlockSum = dict["CcCustomBlockSum"] as! Int64
            }
            if dict.keys.contains("CcCustomReportsSum") && dict["CcCustomReportsSum"] != nil {
                self.ccCustomReportsSum = dict["CcCustomReportsSum"] as! Int64
            }
            if dict.keys.contains("CcSystemBlocksSum") && dict["CcSystemBlocksSum"] != nil {
                self.ccSystemBlocksSum = dict["CcSystemBlocksSum"] as! Int64
            }
            if dict.keys.contains("CcSystemReportsSum") && dict["CcSystemReportsSum"] != nil {
                self.ccSystemReportsSum = dict["CcSystemReportsSum"] as! Int64
            }
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("InBytes") && dict["InBytes"] != nil {
                self.inBytes = dict["InBytes"] as! Int64
            }
            if dict.keys.contains("Index") && dict["Index"] != nil {
                self.index = dict["Index"] as! Int64
            }
            if dict.keys.contains("MaxPv") && dict["MaxPv"] != nil {
                self.maxPv = dict["MaxPv"] as! Int64
            }
            if dict.keys.contains("OutBytes") && dict["OutBytes"] != nil {
                self.outBytes = dict["OutBytes"] as! Int64
            }
            if dict.keys.contains("RatelimitBlockSum") && dict["RatelimitBlockSum"] != nil {
                self.ratelimitBlockSum = dict["RatelimitBlockSum"] as! Int64
            }
            if dict.keys.contains("RatelimitReportSum") && dict["RatelimitReportSum"] != nil {
                self.ratelimitReportSum = dict["RatelimitReportSum"] as! Int64
            }
            if dict.keys.contains("RegionBlockBlocksSum") && dict["RegionBlockBlocksSum"] != nil {
                self.regionBlockBlocksSum = dict["RegionBlockBlocksSum"] as! Int64
            }
            if dict.keys.contains("RegionBlockReportsSum") && dict["RegionBlockReportsSum"] != nil {
                self.regionBlockReportsSum = dict["RegionBlockReportsSum"] as! Int64
            }
            if dict.keys.contains("RobotCount") && dict["RobotCount"] != nil {
                self.robotCount = dict["RobotCount"] as! Int64
            }
            if dict.keys.contains("WafBlockSum") && dict["WafBlockSum"] != nil {
                self.wafBlockSum = dict["WafBlockSum"] as! Int64
            }
            if dict.keys.contains("WafReportSum") && dict["WafReportSum"] != nil {
                self.wafReportSum = dict["WafReportSum"] as! String
            }
        }
    }
    public var flowChart: [DescribeFlowChartResponseBody.FlowChart]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowChart != nil {
            var tmp : [Any] = []
            for k in self.flowChart! {
                tmp.append(k.toMap())
            }
            map["FlowChart"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FlowChart") && dict["FlowChart"] != nil {
            var tmp : [DescribeFlowChartResponseBody.FlowChart] = []
            for v in dict["FlowChart"] as! [Any] {
                var model = DescribeFlowChartResponseBody.FlowChart()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.flowChart = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeFlowChartResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFlowChartResponseBody?

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
            var model = DescribeFlowChartResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFlowTopResourceRequest : Tea.TeaModel {
    public var endTimestamp: String?

    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var startTimestamp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
            self.startTimestamp = dict["StartTimestamp"] as! String
        }
    }
}

public class DescribeFlowTopResourceResponseBody : Tea.TeaModel {
    public class RuleHitsTopResource : Tea.TeaModel {
        public var count: Int64?

        public var resource: String?

        public override init() {
            super.init()
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
            if self.resource != nil {
                map["Resource"] = self.resource!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("Resource") && dict["Resource"] != nil {
                self.resource = dict["Resource"] as! String
            }
        }
    }
    public var requestId: String?

    public var ruleHitsTopResource: [DescribeFlowTopResourceResponseBody.RuleHitsTopResource]?

    public override init() {
        super.init()
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
        if self.ruleHitsTopResource != nil {
            var tmp : [Any] = []
            for k in self.ruleHitsTopResource! {
                tmp.append(k.toMap())
            }
            map["RuleHitsTopResource"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleHitsTopResource") && dict["RuleHitsTopResource"] != nil {
            var tmp : [DescribeFlowTopResourceResponseBody.RuleHitsTopResource] = []
            for v in dict["RuleHitsTopResource"] as! [Any] {
                var model = DescribeFlowTopResourceResponseBody.RuleHitsTopResource()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ruleHitsTopResource = tmp
        }
    }
}

public class DescribeFlowTopResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFlowTopResourceResponseBody?

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
            var model = DescribeFlowTopResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFlowTopUrlRequest : Tea.TeaModel {
    public var endTimestamp: String?

    public var instanceId: String?

    public var regionId: String?

    public var resource: String?

    public var resourceManagerResourceGroupId: String?

    public var startTimestamp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") && dict["Resource"] != nil {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
            self.startTimestamp = dict["StartTimestamp"] as! String
        }
    }
}

public class DescribeFlowTopUrlResponseBody : Tea.TeaModel {
    public class RuleHitsTopUrl : Tea.TeaModel {
        public var count: Int64?

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
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var requestId: String?

    public var ruleHitsTopUrl: [DescribeFlowTopUrlResponseBody.RuleHitsTopUrl]?

    public override init() {
        super.init()
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
        if self.ruleHitsTopUrl != nil {
            var tmp : [Any] = []
            for k in self.ruleHitsTopUrl! {
                tmp.append(k.toMap())
            }
            map["RuleHitsTopUrl"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleHitsTopUrl") && dict["RuleHitsTopUrl"] != nil {
            var tmp : [DescribeFlowTopUrlResponseBody.RuleHitsTopUrl] = []
            for v in dict["RuleHitsTopUrl"] as! [Any] {
                var model = DescribeFlowTopUrlResponseBody.RuleHitsTopUrl()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ruleHitsTopUrl = tmp
        }
    }
}

public class DescribeFlowTopUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFlowTopUrlResponseBody?

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
            var model = DescribeFlowTopUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHybridCloudGroupsRequest : Tea.TeaModel {
    public var clusterId: Int64?

    public var clusterProxyType: String?

    public var groupName: Int32?

    public var groupType: String?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterProxyType != nil {
            map["ClusterProxyType"] = self.clusterProxyType!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.groupType != nil {
            map["GroupType"] = self.groupType!
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
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! Int64
        }
        if dict.keys.contains("ClusterProxyType") && dict["ClusterProxyType"] != nil {
            self.clusterProxyType = dict["ClusterProxyType"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! Int32
        }
        if dict.keys.contains("GroupType") && dict["GroupType"] != nil {
            self.groupType = dict["GroupType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeHybridCloudGroupsResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public var backSourceMark: String?

        public var continentsValue: Int32?

        public var groupId: Int32?

        public var groupName: String?

        public var groupType: String?

        public var loadBalanceIp: String?

        public var locationId: Int64?

        public var operatorValue: Int32?

        public var ports: String?

        public var regionCodeValue: Int32?

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
            if self.backSourceMark != nil {
                map["BackSourceMark"] = self.backSourceMark!
            }
            if self.continentsValue != nil {
                map["ContinentsValue"] = self.continentsValue!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.groupType != nil {
                map["GroupType"] = self.groupType!
            }
            if self.loadBalanceIp != nil {
                map["LoadBalanceIp"] = self.loadBalanceIp!
            }
            if self.locationId != nil {
                map["LocationId"] = self.locationId!
            }
            if self.operatorValue != nil {
                map["OperatorValue"] = self.operatorValue!
            }
            if self.ports != nil {
                map["Ports"] = self.ports!
            }
            if self.regionCodeValue != nil {
                map["RegionCodeValue"] = self.regionCodeValue!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackSourceMark") && dict["BackSourceMark"] != nil {
                self.backSourceMark = dict["BackSourceMark"] as! String
            }
            if dict.keys.contains("ContinentsValue") && dict["ContinentsValue"] != nil {
                self.continentsValue = dict["ContinentsValue"] as! Int32
            }
            if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                self.groupId = dict["GroupId"] as! Int32
            }
            if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("GroupType") && dict["GroupType"] != nil {
                self.groupType = dict["GroupType"] as! String
            }
            if dict.keys.contains("LoadBalanceIp") && dict["LoadBalanceIp"] != nil {
                self.loadBalanceIp = dict["LoadBalanceIp"] as! String
            }
            if dict.keys.contains("LocationId") && dict["LocationId"] != nil {
                self.locationId = dict["LocationId"] as! Int64
            }
            if dict.keys.contains("OperatorValue") && dict["OperatorValue"] != nil {
                self.operatorValue = dict["OperatorValue"] as! Int32
            }
            if dict.keys.contains("Ports") && dict["Ports"] != nil {
                self.ports = dict["Ports"] as! String
            }
            if dict.keys.contains("RegionCodeValue") && dict["RegionCodeValue"] != nil {
                self.regionCodeValue = dict["RegionCodeValue"] as! Int32
            }
            if dict.keys.contains("Remark") && dict["Remark"] != nil {
                self.remark = dict["Remark"] as! String
            }
        }
    }
    public var groups: [DescribeHybridCloudGroupsResponseBody.Groups]?

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
        if self.groups != nil {
            var tmp : [Any] = []
            for k in self.groups! {
                tmp.append(k.toMap())
            }
            map["Groups"] = tmp
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
        if dict.keys.contains("Groups") && dict["Groups"] != nil {
            var tmp : [DescribeHybridCloudGroupsResponseBody.Groups] = []
            for v in dict["Groups"] as! [Any] {
                var model = DescribeHybridCloudGroupsResponseBody.Groups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.groups = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeHybridCloudGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHybridCloudGroupsResponseBody?

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
            var model = DescribeHybridCloudGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHybridCloudResourcesRequest : Tea.TeaModel {
    public var backend: String?

    public var cnameEnabled: Bool?

    public var domain: String?

    public var instanceId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

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
        if self.backend != nil {
            map["Backend"] = self.backend!
        }
        if self.cnameEnabled != nil {
            map["CnameEnabled"] = self.cnameEnabled!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
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
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Backend") && dict["Backend"] != nil {
            self.backend = dict["Backend"] as! String
        }
        if dict.keys.contains("CnameEnabled") && dict["CnameEnabled"] != nil {
            self.cnameEnabled = dict["CnameEnabled"] as! Bool
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeHybridCloudResourcesResponseBody : Tea.TeaModel {
    public class Domains : Tea.TeaModel {
        public class Listen : Tea.TeaModel {
            public var certId: String?

            public var cipherSuite: Int32?

            public var customCiphers: [String]?

            public var enableTLSv3: Bool?

            public var exclusiveIp: Bool?

            public var focusHttps: Bool?

            public var http2Enabled: Bool?

            public var httpPorts: [Int64]?

            public var httpsPorts: [Int64]?

            public var ipv6Enabled: Bool?

            public var protectionResource: String?

            public var TLSVersion: String?

            public var xffHeaderMode: Int32?

            public var xffHeaders: [String]?

            public override init() {
                super.init()
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
                if self.cipherSuite != nil {
                    map["CipherSuite"] = self.cipherSuite!
                }
                if self.customCiphers != nil {
                    map["CustomCiphers"] = self.customCiphers!
                }
                if self.enableTLSv3 != nil {
                    map["EnableTLSv3"] = self.enableTLSv3!
                }
                if self.exclusiveIp != nil {
                    map["ExclusiveIp"] = self.exclusiveIp!
                }
                if self.focusHttps != nil {
                    map["FocusHttps"] = self.focusHttps!
                }
                if self.http2Enabled != nil {
                    map["Http2Enabled"] = self.http2Enabled!
                }
                if self.httpPorts != nil {
                    map["HttpPorts"] = self.httpPorts!
                }
                if self.httpsPorts != nil {
                    map["HttpsPorts"] = self.httpsPorts!
                }
                if self.ipv6Enabled != nil {
                    map["Ipv6Enabled"] = self.ipv6Enabled!
                }
                if self.protectionResource != nil {
                    map["ProtectionResource"] = self.protectionResource!
                }
                if self.TLSVersion != nil {
                    map["TLSVersion"] = self.TLSVersion!
                }
                if self.xffHeaderMode != nil {
                    map["XffHeaderMode"] = self.xffHeaderMode!
                }
                if self.xffHeaders != nil {
                    map["XffHeaders"] = self.xffHeaders!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CertId") && dict["CertId"] != nil {
                    self.certId = dict["CertId"] as! String
                }
                if dict.keys.contains("CipherSuite") && dict["CipherSuite"] != nil {
                    self.cipherSuite = dict["CipherSuite"] as! Int32
                }
                if dict.keys.contains("CustomCiphers") && dict["CustomCiphers"] != nil {
                    self.customCiphers = dict["CustomCiphers"] as! [String]
                }
                if dict.keys.contains("EnableTLSv3") && dict["EnableTLSv3"] != nil {
                    self.enableTLSv3 = dict["EnableTLSv3"] as! Bool
                }
                if dict.keys.contains("ExclusiveIp") && dict["ExclusiveIp"] != nil {
                    self.exclusiveIp = dict["ExclusiveIp"] as! Bool
                }
                if dict.keys.contains("FocusHttps") && dict["FocusHttps"] != nil {
                    self.focusHttps = dict["FocusHttps"] as! Bool
                }
                if dict.keys.contains("Http2Enabled") && dict["Http2Enabled"] != nil {
                    self.http2Enabled = dict["Http2Enabled"] as! Bool
                }
                if dict.keys.contains("HttpPorts") && dict["HttpPorts"] != nil {
                    self.httpPorts = dict["HttpPorts"] as! [Int64]
                }
                if dict.keys.contains("HttpsPorts") && dict["HttpsPorts"] != nil {
                    self.httpsPorts = dict["HttpsPorts"] as! [Int64]
                }
                if dict.keys.contains("Ipv6Enabled") && dict["Ipv6Enabled"] != nil {
                    self.ipv6Enabled = dict["Ipv6Enabled"] as! Bool
                }
                if dict.keys.contains("ProtectionResource") && dict["ProtectionResource"] != nil {
                    self.protectionResource = dict["ProtectionResource"] as! String
                }
                if dict.keys.contains("TLSVersion") && dict["TLSVersion"] != nil {
                    self.TLSVersion = dict["TLSVersion"] as! String
                }
                if dict.keys.contains("XffHeaderMode") && dict["XffHeaderMode"] != nil {
                    self.xffHeaderMode = dict["XffHeaderMode"] as! Int32
                }
                if dict.keys.contains("XffHeaders") && dict["XffHeaders"] != nil {
                    self.xffHeaders = dict["XffHeaders"] as! [String]
                }
            }
        }
        public class Redirect : Tea.TeaModel {
            public class RequestHeaders : Tea.TeaModel {
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
            public var backends: [String]?

            public var cnameEnabled: Bool?

            public var connectTimeout: Int64?

            public var focusHttpBackend: Bool?

            public var keepalive: Bool?

            public var keepaliveRequests: Int64?

            public var keepaliveTimeout: Int64?

            public var loadbalance: String?

            public var readTimeout: Int64?

            public var requestHeaders: [DescribeHybridCloudResourcesResponseBody.Domains.Redirect.RequestHeaders]?

            public var retry: Bool?

            public var routingRules: String?

            public var sniEnabled: Bool?

            public var sniHost: String?

            public var writeTimeout: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backends != nil {
                    map["Backends"] = self.backends!
                }
                if self.cnameEnabled != nil {
                    map["CnameEnabled"] = self.cnameEnabled!
                }
                if self.connectTimeout != nil {
                    map["ConnectTimeout"] = self.connectTimeout!
                }
                if self.focusHttpBackend != nil {
                    map["FocusHttpBackend"] = self.focusHttpBackend!
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
                if self.loadbalance != nil {
                    map["Loadbalance"] = self.loadbalance!
                }
                if self.readTimeout != nil {
                    map["ReadTimeout"] = self.readTimeout!
                }
                if self.requestHeaders != nil {
                    var tmp : [Any] = []
                    for k in self.requestHeaders! {
                        tmp.append(k.toMap())
                    }
                    map["RequestHeaders"] = tmp
                }
                if self.retry != nil {
                    map["Retry"] = self.retry!
                }
                if self.routingRules != nil {
                    map["RoutingRules"] = self.routingRules!
                }
                if self.sniEnabled != nil {
                    map["SniEnabled"] = self.sniEnabled!
                }
                if self.sniHost != nil {
                    map["SniHost"] = self.sniHost!
                }
                if self.writeTimeout != nil {
                    map["WriteTimeout"] = self.writeTimeout!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Backends") && dict["Backends"] != nil {
                    self.backends = dict["Backends"] as! [String]
                }
                if dict.keys.contains("CnameEnabled") && dict["CnameEnabled"] != nil {
                    self.cnameEnabled = dict["CnameEnabled"] as! Bool
                }
                if dict.keys.contains("ConnectTimeout") && dict["ConnectTimeout"] != nil {
                    self.connectTimeout = dict["ConnectTimeout"] as! Int64
                }
                if dict.keys.contains("FocusHttpBackend") && dict["FocusHttpBackend"] != nil {
                    self.focusHttpBackend = dict["FocusHttpBackend"] as! Bool
                }
                if dict.keys.contains("Keepalive") && dict["Keepalive"] != nil {
                    self.keepalive = dict["Keepalive"] as! Bool
                }
                if dict.keys.contains("KeepaliveRequests") && dict["KeepaliveRequests"] != nil {
                    self.keepaliveRequests = dict["KeepaliveRequests"] as! Int64
                }
                if dict.keys.contains("KeepaliveTimeout") && dict["KeepaliveTimeout"] != nil {
                    self.keepaliveTimeout = dict["KeepaliveTimeout"] as! Int64
                }
                if dict.keys.contains("Loadbalance") && dict["Loadbalance"] != nil {
                    self.loadbalance = dict["Loadbalance"] as! String
                }
                if dict.keys.contains("ReadTimeout") && dict["ReadTimeout"] != nil {
                    self.readTimeout = dict["ReadTimeout"] as! Int64
                }
                if dict.keys.contains("RequestHeaders") && dict["RequestHeaders"] != nil {
                    var tmp : [DescribeHybridCloudResourcesResponseBody.Domains.Redirect.RequestHeaders] = []
                    for v in dict["RequestHeaders"] as! [Any] {
                        var model = DescribeHybridCloudResourcesResponseBody.Domains.Redirect.RequestHeaders()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.requestHeaders = tmp
                }
                if dict.keys.contains("Retry") && dict["Retry"] != nil {
                    self.retry = dict["Retry"] as! Bool
                }
                if dict.keys.contains("RoutingRules") && dict["RoutingRules"] != nil {
                    self.routingRules = dict["RoutingRules"] as! String
                }
                if dict.keys.contains("SniEnabled") && dict["SniEnabled"] != nil {
                    self.sniEnabled = dict["SniEnabled"] as! Bool
                }
                if dict.keys.contains("SniHost") && dict["SniHost"] != nil {
                    self.sniHost = dict["SniHost"] as! String
                }
                if dict.keys.contains("WriteTimeout") && dict["WriteTimeout"] != nil {
                    self.writeTimeout = dict["WriteTimeout"] as! Int64
                }
            }
        }
        public var cname: String?

        public var domain: String?

        public var id: Int64?

        public var listen: DescribeHybridCloudResourcesResponseBody.Domains.Listen?

        public var redirect: DescribeHybridCloudResourcesResponseBody.Domains.Redirect?

        public var resourceManagerResourceGroupId: String?

        public var status: Int32?

        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.listen?.validate()
            try self.redirect?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cname != nil {
                map["Cname"] = self.cname!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.listen != nil {
                map["Listen"] = self.listen?.toMap()
            }
            if self.redirect != nil {
                map["Redirect"] = self.redirect?.toMap()
            }
            if self.resourceManagerResourceGroupId != nil {
                map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cname") && dict["Cname"] != nil {
                self.cname = dict["Cname"] as! String
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Listen") && dict["Listen"] != nil {
                var model = DescribeHybridCloudResourcesResponseBody.Domains.Listen()
                model.fromMap(dict["Listen"] as! [String: Any])
                self.listen = model
            }
            if dict.keys.contains("Redirect") && dict["Redirect"] != nil {
                var model = DescribeHybridCloudResourcesResponseBody.Domains.Redirect()
                model.fromMap(dict["Redirect"] as! [String: Any])
                self.redirect = model
            }
            if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
                self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Uid") && dict["Uid"] != nil {
                self.uid = dict["Uid"] as! String
            }
        }
    }
    public var domains: [DescribeHybridCloudResourcesResponseBody.Domains]?

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
        if self.domains != nil {
            var tmp : [Any] = []
            for k in self.domains! {
                tmp.append(k.toMap())
            }
            map["Domains"] = tmp
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
        if dict.keys.contains("Domains") && dict["Domains"] != nil {
            var tmp : [DescribeHybridCloudResourcesResponseBody.Domains] = []
            for v in dict["Domains"] as! [Any] {
                var model = DescribeHybridCloudResourcesResponseBody.Domains()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.domains = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeHybridCloudResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHybridCloudResourcesResponseBody?

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
            var model = DescribeHybridCloudResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHybridCloudUserRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public override init() {
        super.init()
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
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeHybridCloudUserResponseBody : Tea.TeaModel {
    public class UserInfo : Tea.TeaModel {
        public var httpPorts: String?

        public var httpsPorts: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.httpPorts != nil {
                map["HttpPorts"] = self.httpPorts!
            }
            if self.httpsPorts != nil {
                map["HttpsPorts"] = self.httpsPorts!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HttpPorts") && dict["HttpPorts"] != nil {
                self.httpPorts = dict["HttpPorts"] as! String
            }
            if dict.keys.contains("HttpsPorts") && dict["HttpsPorts"] != nil {
                self.httpsPorts = dict["HttpsPorts"] as! String
            }
        }
    }
    public var requestId: String?

    public var userInfo: DescribeHybridCloudUserResponseBody.UserInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userInfo != nil {
            map["UserInfo"] = self.userInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserInfo") && dict["UserInfo"] != nil {
            var model = DescribeHybridCloudUserResponseBody.UserInfo()
            model.fromMap(dict["UserInfo"] as! [String: Any])
            self.userInfo = model
        }
    }
}

public class DescribeHybridCloudUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHybridCloudUserResponseBody?

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
            var model = DescribeHybridCloudUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public override init() {
        super.init()
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
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeInstanceResponseBody : Tea.TeaModel {
    public class Details : Tea.TeaModel {
        public var aclRuleMaxIpCount: Int64?

        public var antiScan: Bool?

        public var antiScanTemplateMaxCount: Int64?

        public var backendMaxCount: Int64?

        public var baseWafGroup: Bool?

        public var baseWafGroupRuleInTemplateMaxCount: Int64?

        public var baseWafGroupRuleTemplateMaxCount: Int64?

        public var bot: Bool?

        public var botApp: String?

        public var botTemplateMaxCount: Int64?

        public var botWeb: String?

        public var cnameResourceMaxCount: Int64?

        public var customResponse: Bool?

        public var customResponseRuleInTemplateMaxCount: Int64?

        public var customResponseTemplateMaxCount: Int64?

        public var customRule: Bool?

        public var customRuleAction: String?

        public var customRuleCondition: String?

        public var customRuleInTemplateMaxCount: Int64?

        public var customRuleRatelimitor: String?

        public var customRuleTemplateMaxCount: Int64?

        public var defenseGroupMaxCount: Int64?

        public var defenseObjectInGroupMaxCount: Int64?

        public var defenseObjectInTemplateMaxCount: Int64?

        public var defenseObjectMaxCount: Int64?

        public var dlp: Bool?

        public var dlpRuleInTemplateMaxCount: Int64?

        public var dlpTemplateMaxCount: Int64?

        public var exclusiveIp: Bool?

        public var gslb: Bool?

        public var httpPorts: String?

        public var httpsPorts: String?

        public var ipBlacklist: Bool?

        public var ipBlacklistIpInRuleMaxCount: Int64?

        public var ipBlacklistRuleInTemplateMaxCount: Int64?

        public var ipBlacklistTemplateMaxCount: Int64?

        public var ipv6: Bool?

        public var logService: Bool?

        public var majorProtection: Bool?

        public var majorProtectionTemplateMaxCount: Int64?

        public var tamperproof: Bool?

        public var tamperproofRuleInTemplateMaxCount: Int64?

        public var tamperproofTemplateMaxCount: Int64?

        public var vastIpBlacklistInFileMaxCount: Int64?

        public var vastIpBlacklistInOperationMaxCount: Int64?

        public var vastIpBlacklistMaxCount: Int64?

        public var whitelist: Bool?

        public var whitelistLogical: String?

        public var whitelistRuleCondition: String?

        public var whitelistRuleInTemplateMaxCount: Int64?

        public var whitelistTemplateMaxCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclRuleMaxIpCount != nil {
                map["AclRuleMaxIpCount"] = self.aclRuleMaxIpCount!
            }
            if self.antiScan != nil {
                map["AntiScan"] = self.antiScan!
            }
            if self.antiScanTemplateMaxCount != nil {
                map["AntiScanTemplateMaxCount"] = self.antiScanTemplateMaxCount!
            }
            if self.backendMaxCount != nil {
                map["BackendMaxCount"] = self.backendMaxCount!
            }
            if self.baseWafGroup != nil {
                map["BaseWafGroup"] = self.baseWafGroup!
            }
            if self.baseWafGroupRuleInTemplateMaxCount != nil {
                map["BaseWafGroupRuleInTemplateMaxCount"] = self.baseWafGroupRuleInTemplateMaxCount!
            }
            if self.baseWafGroupRuleTemplateMaxCount != nil {
                map["BaseWafGroupRuleTemplateMaxCount"] = self.baseWafGroupRuleTemplateMaxCount!
            }
            if self.bot != nil {
                map["Bot"] = self.bot!
            }
            if self.botApp != nil {
                map["BotApp"] = self.botApp!
            }
            if self.botTemplateMaxCount != nil {
                map["BotTemplateMaxCount"] = self.botTemplateMaxCount!
            }
            if self.botWeb != nil {
                map["BotWeb"] = self.botWeb!
            }
            if self.cnameResourceMaxCount != nil {
                map["CnameResourceMaxCount"] = self.cnameResourceMaxCount!
            }
            if self.customResponse != nil {
                map["CustomResponse"] = self.customResponse!
            }
            if self.customResponseRuleInTemplateMaxCount != nil {
                map["CustomResponseRuleInTemplateMaxCount"] = self.customResponseRuleInTemplateMaxCount!
            }
            if self.customResponseTemplateMaxCount != nil {
                map["CustomResponseTemplateMaxCount"] = self.customResponseTemplateMaxCount!
            }
            if self.customRule != nil {
                map["CustomRule"] = self.customRule!
            }
            if self.customRuleAction != nil {
                map["CustomRuleAction"] = self.customRuleAction!
            }
            if self.customRuleCondition != nil {
                map["CustomRuleCondition"] = self.customRuleCondition!
            }
            if self.customRuleInTemplateMaxCount != nil {
                map["CustomRuleInTemplateMaxCount"] = self.customRuleInTemplateMaxCount!
            }
            if self.customRuleRatelimitor != nil {
                map["CustomRuleRatelimitor"] = self.customRuleRatelimitor!
            }
            if self.customRuleTemplateMaxCount != nil {
                map["CustomRuleTemplateMaxCount"] = self.customRuleTemplateMaxCount!
            }
            if self.defenseGroupMaxCount != nil {
                map["DefenseGroupMaxCount"] = self.defenseGroupMaxCount!
            }
            if self.defenseObjectInGroupMaxCount != nil {
                map["DefenseObjectInGroupMaxCount"] = self.defenseObjectInGroupMaxCount!
            }
            if self.defenseObjectInTemplateMaxCount != nil {
                map["DefenseObjectInTemplateMaxCount"] = self.defenseObjectInTemplateMaxCount!
            }
            if self.defenseObjectMaxCount != nil {
                map["DefenseObjectMaxCount"] = self.defenseObjectMaxCount!
            }
            if self.dlp != nil {
                map["Dlp"] = self.dlp!
            }
            if self.dlpRuleInTemplateMaxCount != nil {
                map["DlpRuleInTemplateMaxCount"] = self.dlpRuleInTemplateMaxCount!
            }
            if self.dlpTemplateMaxCount != nil {
                map["DlpTemplateMaxCount"] = self.dlpTemplateMaxCount!
            }
            if self.exclusiveIp != nil {
                map["ExclusiveIp"] = self.exclusiveIp!
            }
            if self.gslb != nil {
                map["Gslb"] = self.gslb!
            }
            if self.httpPorts != nil {
                map["HttpPorts"] = self.httpPorts!
            }
            if self.httpsPorts != nil {
                map["HttpsPorts"] = self.httpsPorts!
            }
            if self.ipBlacklist != nil {
                map["IpBlacklist"] = self.ipBlacklist!
            }
            if self.ipBlacklistIpInRuleMaxCount != nil {
                map["IpBlacklistIpInRuleMaxCount"] = self.ipBlacklistIpInRuleMaxCount!
            }
            if self.ipBlacklistRuleInTemplateMaxCount != nil {
                map["IpBlacklistRuleInTemplateMaxCount"] = self.ipBlacklistRuleInTemplateMaxCount!
            }
            if self.ipBlacklistTemplateMaxCount != nil {
                map["IpBlacklistTemplateMaxCount"] = self.ipBlacklistTemplateMaxCount!
            }
            if self.ipv6 != nil {
                map["Ipv6"] = self.ipv6!
            }
            if self.logService != nil {
                map["LogService"] = self.logService!
            }
            if self.majorProtection != nil {
                map["MajorProtection"] = self.majorProtection!
            }
            if self.majorProtectionTemplateMaxCount != nil {
                map["MajorProtectionTemplateMaxCount"] = self.majorProtectionTemplateMaxCount!
            }
            if self.tamperproof != nil {
                map["Tamperproof"] = self.tamperproof!
            }
            if self.tamperproofRuleInTemplateMaxCount != nil {
                map["TamperproofRuleInTemplateMaxCount"] = self.tamperproofRuleInTemplateMaxCount!
            }
            if self.tamperproofTemplateMaxCount != nil {
                map["TamperproofTemplateMaxCount"] = self.tamperproofTemplateMaxCount!
            }
            if self.vastIpBlacklistInFileMaxCount != nil {
                map["VastIpBlacklistInFileMaxCount"] = self.vastIpBlacklistInFileMaxCount!
            }
            if self.vastIpBlacklistInOperationMaxCount != nil {
                map["VastIpBlacklistInOperationMaxCount"] = self.vastIpBlacklistInOperationMaxCount!
            }
            if self.vastIpBlacklistMaxCount != nil {
                map["VastIpBlacklistMaxCount"] = self.vastIpBlacklistMaxCount!
            }
            if self.whitelist != nil {
                map["Whitelist"] = self.whitelist!
            }
            if self.whitelistLogical != nil {
                map["WhitelistLogical"] = self.whitelistLogical!
            }
            if self.whitelistRuleCondition != nil {
                map["WhitelistRuleCondition"] = self.whitelistRuleCondition!
            }
            if self.whitelistRuleInTemplateMaxCount != nil {
                map["WhitelistRuleInTemplateMaxCount"] = self.whitelistRuleInTemplateMaxCount!
            }
            if self.whitelistTemplateMaxCount != nil {
                map["WhitelistTemplateMaxCount"] = self.whitelistTemplateMaxCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclRuleMaxIpCount") && dict["AclRuleMaxIpCount"] != nil {
                self.aclRuleMaxIpCount = dict["AclRuleMaxIpCount"] as! Int64
            }
            if dict.keys.contains("AntiScan") && dict["AntiScan"] != nil {
                self.antiScan = dict["AntiScan"] as! Bool
            }
            if dict.keys.contains("AntiScanTemplateMaxCount") && dict["AntiScanTemplateMaxCount"] != nil {
                self.antiScanTemplateMaxCount = dict["AntiScanTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("BackendMaxCount") && dict["BackendMaxCount"] != nil {
                self.backendMaxCount = dict["BackendMaxCount"] as! Int64
            }
            if dict.keys.contains("BaseWafGroup") && dict["BaseWafGroup"] != nil {
                self.baseWafGroup = dict["BaseWafGroup"] as! Bool
            }
            if dict.keys.contains("BaseWafGroupRuleInTemplateMaxCount") && dict["BaseWafGroupRuleInTemplateMaxCount"] != nil {
                self.baseWafGroupRuleInTemplateMaxCount = dict["BaseWafGroupRuleInTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("BaseWafGroupRuleTemplateMaxCount") && dict["BaseWafGroupRuleTemplateMaxCount"] != nil {
                self.baseWafGroupRuleTemplateMaxCount = dict["BaseWafGroupRuleTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("Bot") && dict["Bot"] != nil {
                self.bot = dict["Bot"] as! Bool
            }
            if dict.keys.contains("BotApp") && dict["BotApp"] != nil {
                self.botApp = dict["BotApp"] as! String
            }
            if dict.keys.contains("BotTemplateMaxCount") && dict["BotTemplateMaxCount"] != nil {
                self.botTemplateMaxCount = dict["BotTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("BotWeb") && dict["BotWeb"] != nil {
                self.botWeb = dict["BotWeb"] as! String
            }
            if dict.keys.contains("CnameResourceMaxCount") && dict["CnameResourceMaxCount"] != nil {
                self.cnameResourceMaxCount = dict["CnameResourceMaxCount"] as! Int64
            }
            if dict.keys.contains("CustomResponse") && dict["CustomResponse"] != nil {
                self.customResponse = dict["CustomResponse"] as! Bool
            }
            if dict.keys.contains("CustomResponseRuleInTemplateMaxCount") && dict["CustomResponseRuleInTemplateMaxCount"] != nil {
                self.customResponseRuleInTemplateMaxCount = dict["CustomResponseRuleInTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("CustomResponseTemplateMaxCount") && dict["CustomResponseTemplateMaxCount"] != nil {
                self.customResponseTemplateMaxCount = dict["CustomResponseTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("CustomRule") && dict["CustomRule"] != nil {
                self.customRule = dict["CustomRule"] as! Bool
            }
            if dict.keys.contains("CustomRuleAction") && dict["CustomRuleAction"] != nil {
                self.customRuleAction = dict["CustomRuleAction"] as! String
            }
            if dict.keys.contains("CustomRuleCondition") && dict["CustomRuleCondition"] != nil {
                self.customRuleCondition = dict["CustomRuleCondition"] as! String
            }
            if dict.keys.contains("CustomRuleInTemplateMaxCount") && dict["CustomRuleInTemplateMaxCount"] != nil {
                self.customRuleInTemplateMaxCount = dict["CustomRuleInTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("CustomRuleRatelimitor") && dict["CustomRuleRatelimitor"] != nil {
                self.customRuleRatelimitor = dict["CustomRuleRatelimitor"] as! String
            }
            if dict.keys.contains("CustomRuleTemplateMaxCount") && dict["CustomRuleTemplateMaxCount"] != nil {
                self.customRuleTemplateMaxCount = dict["CustomRuleTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("DefenseGroupMaxCount") && dict["DefenseGroupMaxCount"] != nil {
                self.defenseGroupMaxCount = dict["DefenseGroupMaxCount"] as! Int64
            }
            if dict.keys.contains("DefenseObjectInGroupMaxCount") && dict["DefenseObjectInGroupMaxCount"] != nil {
                self.defenseObjectInGroupMaxCount = dict["DefenseObjectInGroupMaxCount"] as! Int64
            }
            if dict.keys.contains("DefenseObjectInTemplateMaxCount") && dict["DefenseObjectInTemplateMaxCount"] != nil {
                self.defenseObjectInTemplateMaxCount = dict["DefenseObjectInTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("DefenseObjectMaxCount") && dict["DefenseObjectMaxCount"] != nil {
                self.defenseObjectMaxCount = dict["DefenseObjectMaxCount"] as! Int64
            }
            if dict.keys.contains("Dlp") && dict["Dlp"] != nil {
                self.dlp = dict["Dlp"] as! Bool
            }
            if dict.keys.contains("DlpRuleInTemplateMaxCount") && dict["DlpRuleInTemplateMaxCount"] != nil {
                self.dlpRuleInTemplateMaxCount = dict["DlpRuleInTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("DlpTemplateMaxCount") && dict["DlpTemplateMaxCount"] != nil {
                self.dlpTemplateMaxCount = dict["DlpTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("ExclusiveIp") && dict["ExclusiveIp"] != nil {
                self.exclusiveIp = dict["ExclusiveIp"] as! Bool
            }
            if dict.keys.contains("Gslb") && dict["Gslb"] != nil {
                self.gslb = dict["Gslb"] as! Bool
            }
            if dict.keys.contains("HttpPorts") && dict["HttpPorts"] != nil {
                self.httpPorts = dict["HttpPorts"] as! String
            }
            if dict.keys.contains("HttpsPorts") && dict["HttpsPorts"] != nil {
                self.httpsPorts = dict["HttpsPorts"] as! String
            }
            if dict.keys.contains("IpBlacklist") && dict["IpBlacklist"] != nil {
                self.ipBlacklist = dict["IpBlacklist"] as! Bool
            }
            if dict.keys.contains("IpBlacklistIpInRuleMaxCount") && dict["IpBlacklistIpInRuleMaxCount"] != nil {
                self.ipBlacklistIpInRuleMaxCount = dict["IpBlacklistIpInRuleMaxCount"] as! Int64
            }
            if dict.keys.contains("IpBlacklistRuleInTemplateMaxCount") && dict["IpBlacklistRuleInTemplateMaxCount"] != nil {
                self.ipBlacklistRuleInTemplateMaxCount = dict["IpBlacklistRuleInTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("IpBlacklistTemplateMaxCount") && dict["IpBlacklistTemplateMaxCount"] != nil {
                self.ipBlacklistTemplateMaxCount = dict["IpBlacklistTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("Ipv6") && dict["Ipv6"] != nil {
                self.ipv6 = dict["Ipv6"] as! Bool
            }
            if dict.keys.contains("LogService") && dict["LogService"] != nil {
                self.logService = dict["LogService"] as! Bool
            }
            if dict.keys.contains("MajorProtection") && dict["MajorProtection"] != nil {
                self.majorProtection = dict["MajorProtection"] as! Bool
            }
            if dict.keys.contains("MajorProtectionTemplateMaxCount") && dict["MajorProtectionTemplateMaxCount"] != nil {
                self.majorProtectionTemplateMaxCount = dict["MajorProtectionTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("Tamperproof") && dict["Tamperproof"] != nil {
                self.tamperproof = dict["Tamperproof"] as! Bool
            }
            if dict.keys.contains("TamperproofRuleInTemplateMaxCount") && dict["TamperproofRuleInTemplateMaxCount"] != nil {
                self.tamperproofRuleInTemplateMaxCount = dict["TamperproofRuleInTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("TamperproofTemplateMaxCount") && dict["TamperproofTemplateMaxCount"] != nil {
                self.tamperproofTemplateMaxCount = dict["TamperproofTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("VastIpBlacklistInFileMaxCount") && dict["VastIpBlacklistInFileMaxCount"] != nil {
                self.vastIpBlacklistInFileMaxCount = dict["VastIpBlacklistInFileMaxCount"] as! Int64
            }
            if dict.keys.contains("VastIpBlacklistInOperationMaxCount") && dict["VastIpBlacklistInOperationMaxCount"] != nil {
                self.vastIpBlacklistInOperationMaxCount = dict["VastIpBlacklistInOperationMaxCount"] as! Int64
            }
            if dict.keys.contains("VastIpBlacklistMaxCount") && dict["VastIpBlacklistMaxCount"] != nil {
                self.vastIpBlacklistMaxCount = dict["VastIpBlacklistMaxCount"] as! Int64
            }
            if dict.keys.contains("Whitelist") && dict["Whitelist"] != nil {
                self.whitelist = dict["Whitelist"] as! Bool
            }
            if dict.keys.contains("WhitelistLogical") && dict["WhitelistLogical"] != nil {
                self.whitelistLogical = dict["WhitelistLogical"] as! String
            }
            if dict.keys.contains("WhitelistRuleCondition") && dict["WhitelistRuleCondition"] != nil {
                self.whitelistRuleCondition = dict["WhitelistRuleCondition"] as! String
            }
            if dict.keys.contains("WhitelistRuleInTemplateMaxCount") && dict["WhitelistRuleInTemplateMaxCount"] != nil {
                self.whitelistRuleInTemplateMaxCount = dict["WhitelistRuleInTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("WhitelistTemplateMaxCount") && dict["WhitelistTemplateMaxCount"] != nil {
                self.whitelistTemplateMaxCount = dict["WhitelistTemplateMaxCount"] as! Int64
            }
        }
    }
    public var details: DescribeInstanceResponseBody.Details?

    public var edition: String?

    public var endTime: Int64?

    public var inDebt: String?

    public var instanceId: String?

    public var payType: String?

    public var regionId: String?

    public var requestId: String?

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
        try self.details?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.details != nil {
            map["Details"] = self.details?.toMap()
        }
        if self.edition != nil {
            map["Edition"] = self.edition!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Details") && dict["Details"] != nil {
            var model = DescribeInstanceResponseBody.Details()
            model.fromMap(dict["Details"] as! [String: Any])
            self.details = model
        }
        if dict.keys.contains("Edition") && dict["Edition"] != nil {
            self.edition = dict["Edition"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InDebt") && dict["InDebt"] != nil {
            self.inDebt = dict["InDebt"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class DescribeInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceResponseBody?

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
            var model = DescribeInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMajorProtectionBlackIpsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ipLike: String?

    public var orderBy: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var ruleId: Int64?

    public var templateId: Int64?

    public override init() {
        super.init()
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
        if self.ipLike != nil {
            map["IpLike"] = self.ipLike!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
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
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IpLike") && dict["IpLike"] != nil {
            self.ipLike = dict["IpLike"] as! String
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class DescribeMajorProtectionBlackIpsResponseBody : Tea.TeaModel {
    public class IpList : Tea.TeaModel {
        public var description_: String?

        public var expiredTime: Int64?

        public var gmtModified: Int64?

        public var ip: String?

        public var ruleId: Int64?

        public var templateId: Int64?

        public override init() {
            super.init()
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
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
                self.expiredTime = dict["ExpiredTime"] as! Int64
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! Int64
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! Int64
            }
        }
    }
    public var ipList: [DescribeMajorProtectionBlackIpsResponseBody.IpList]?

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
        if self.ipList != nil {
            var tmp : [Any] = []
            for k in self.ipList! {
                tmp.append(k.toMap())
            }
            map["IpList"] = tmp
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
        if dict.keys.contains("IpList") && dict["IpList"] != nil {
            var tmp : [DescribeMajorProtectionBlackIpsResponseBody.IpList] = []
            for v in dict["IpList"] as! [Any] {
                var model = DescribeMajorProtectionBlackIpsResponseBody.IpList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ipList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeMajorProtectionBlackIpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMajorProtectionBlackIpsResponseBody?

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
            var model = DescribeMajorProtectionBlackIpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePeakTrendRequest : Tea.TeaModel {
    public var endTimestamp: String?

    public var instanceId: String?

    public var interval: String?

    public var regionId: String?

    public var resource: String?

    public var resourceManagerResourceGroupId: String?

    public var startTimestamp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Interval") && dict["Interval"] != nil {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") && dict["Resource"] != nil {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
            self.startTimestamp = dict["StartTimestamp"] as! String
        }
    }
}

public class DescribePeakTrendResponseBody : Tea.TeaModel {
    public class FlowChart : Tea.TeaModel {
        public var aclSum: Int64?

        public var antiScanSum: Int64?

        public var ccSum: Int64?

        public var count: Int64?

        public var index: Int64?

        public var wafSum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclSum != nil {
                map["AclSum"] = self.aclSum!
            }
            if self.antiScanSum != nil {
                map["AntiScanSum"] = self.antiScanSum!
            }
            if self.ccSum != nil {
                map["CcSum"] = self.ccSum!
            }
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.wafSum != nil {
                map["WafSum"] = self.wafSum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclSum") && dict["AclSum"] != nil {
                self.aclSum = dict["AclSum"] as! Int64
            }
            if dict.keys.contains("AntiScanSum") && dict["AntiScanSum"] != nil {
                self.antiScanSum = dict["AntiScanSum"] as! Int64
            }
            if dict.keys.contains("CcSum") && dict["CcSum"] != nil {
                self.ccSum = dict["CcSum"] as! Int64
            }
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("Index") && dict["Index"] != nil {
                self.index = dict["Index"] as! Int64
            }
            if dict.keys.contains("WafSum") && dict["WafSum"] != nil {
                self.wafSum = dict["WafSum"] as! Int64
            }
        }
    }
    public var flowChart: [DescribePeakTrendResponseBody.FlowChart]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flowChart != nil {
            var tmp : [Any] = []
            for k in self.flowChart! {
                tmp.append(k.toMap())
            }
            map["FlowChart"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FlowChart") && dict["FlowChart"] != nil {
            var tmp : [DescribePeakTrendResponseBody.FlowChart] = []
            for v in dict["FlowChart"] as! [Any] {
                var model = DescribePeakTrendResponseBody.FlowChart()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.flowChart = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribePeakTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePeakTrendResponseBody?

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
            var model = DescribePeakTrendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeResourceLogStatusRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var resources: String?

    public override init() {
        super.init()
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
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("Resources") && dict["Resources"] != nil {
            self.resources = dict["Resources"] as! String
        }
    }
}

public class DescribeResourceLogStatusResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var resource: String?

        public var status: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resource != nil {
                map["Resource"] = self.resource!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Resource") && dict["Resource"] != nil {
                self.resource = dict["Resource"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Bool
            }
        }
    }
    public var requestId: String?

    public var result: [DescribeResourceLogStatusResponseBody.Result]?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var tmp : [DescribeResourceLogStatusResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = DescribeResourceLogStatusResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
    }
}

public class DescribeResourceLogStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourceLogStatusResponseBody?

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
            var model = DescribeResourceLogStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeResourcePortRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var resourceInstanceId: String?

    public var resourceManagerResourceGroupId: String?

    public override init() {
        super.init()
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
        if self.resourceInstanceId != nil {
            map["ResourceInstanceId"] = self.resourceInstanceId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceInstanceId") && dict["ResourceInstanceId"] != nil {
            self.resourceInstanceId = dict["ResourceInstanceId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeResourcePortResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resourcePorts: [String]?

    public override init() {
        super.init()
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
        if self.resourcePorts != nil {
            map["ResourcePorts"] = self.resourcePorts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourcePorts") && dict["ResourcePorts"] != nil {
            self.resourcePorts = dict["ResourcePorts"] as! [String]
        }
    }
}

public class DescribeResourcePortResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourcePortResponseBody?

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
            var model = DescribeResourcePortResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeResponseCodeTrendGraphRequest : Tea.TeaModel {
    public var endTimestamp: String?

    public var instanceId: String?

    public var interval: String?

    public var regionId: String?

    public var resource: String?

    public var resourceManagerResourceGroupId: String?

    public var startTimestamp: String?

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
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Interval") && dict["Interval"] != nil {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") && dict["Resource"] != nil {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
            self.startTimestamp = dict["StartTimestamp"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeResponseCodeTrendGraphResponseBody : Tea.TeaModel {
    public class ResponseCodes : Tea.TeaModel {
        public var code302Pv: Int64?

        public var code405Pv: Int64?

        public var code499Pv: Int64?

        public var code5xxPv: Int64?

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
            if self.code302Pv != nil {
                map["302Pv"] = self.code302Pv!
            }
            if self.code405Pv != nil {
                map["405Pv"] = self.code405Pv!
            }
            if self.code499Pv != nil {
                map["499Pv"] = self.code499Pv!
            }
            if self.code5xxPv != nil {
                map["5xxPv"] = self.code5xxPv!
            }
            if self.index != nil {
                map["Index"] = self.index!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("302Pv") && dict["302Pv"] != nil {
                self.code302Pv = dict["302Pv"] as! Int64
            }
            if dict.keys.contains("405Pv") && dict["405Pv"] != nil {
                self.code405Pv = dict["405Pv"] as! Int64
            }
            if dict.keys.contains("499Pv") && dict["499Pv"] != nil {
                self.code499Pv = dict["499Pv"] as! Int64
            }
            if dict.keys.contains("5xxPv") && dict["5xxPv"] != nil {
                self.code5xxPv = dict["5xxPv"] as! Int64
            }
            if dict.keys.contains("Index") && dict["Index"] != nil {
                self.index = dict["Index"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var responseCodes: [DescribeResponseCodeTrendGraphResponseBody.ResponseCodes]?

    public override init() {
        super.init()
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
        if self.responseCodes != nil {
            var tmp : [Any] = []
            for k in self.responseCodes! {
                tmp.append(k.toMap())
            }
            map["ResponseCodes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResponseCodes") && dict["ResponseCodes"] != nil {
            var tmp : [DescribeResponseCodeTrendGraphResponseBody.ResponseCodes] = []
            for v in dict["ResponseCodes"] as! [Any] {
                var model = DescribeResponseCodeTrendGraphResponseBody.ResponseCodes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.responseCodes = tmp
        }
    }
}

public class DescribeResponseCodeTrendGraphResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResponseCodeTrendGraphResponseBody?

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
            var model = DescribeResponseCodeTrendGraphResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRuleGroupsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var searchType: String?

    public var searchValue: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.searchType != nil {
            map["SearchType"] = self.searchType!
        }
        if self.searchValue != nil {
            map["SearchValue"] = self.searchValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("SearchType") && dict["SearchType"] != nil {
            self.searchType = dict["SearchType"] as! String
        }
        if dict.keys.contains("SearchValue") && dict["SearchValue"] != nil {
            self.searchValue = dict["SearchValue"] as! String
        }
    }
}

public class DescribeRuleGroupsResponseBody : Tea.TeaModel {
    public class RuleGroups : Tea.TeaModel {
        public var gmtModified: Int64?

        public var isSubscribe: Int32?

        public var parentRuleGroupId: Int64?

        public var ruleGroupId: Int64?

        public var ruleGroupName: String?

        public var ruleTotalCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.isSubscribe != nil {
                map["IsSubscribe"] = self.isSubscribe!
            }
            if self.parentRuleGroupId != nil {
                map["ParentRuleGroupId"] = self.parentRuleGroupId!
            }
            if self.ruleGroupId != nil {
                map["RuleGroupId"] = self.ruleGroupId!
            }
            if self.ruleGroupName != nil {
                map["RuleGroupName"] = self.ruleGroupName!
            }
            if self.ruleTotalCount != nil {
                map["RuleTotalCount"] = self.ruleTotalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("IsSubscribe") && dict["IsSubscribe"] != nil {
                self.isSubscribe = dict["IsSubscribe"] as! Int32
            }
            if dict.keys.contains("ParentRuleGroupId") && dict["ParentRuleGroupId"] != nil {
                self.parentRuleGroupId = dict["ParentRuleGroupId"] as! Int64
            }
            if dict.keys.contains("RuleGroupId") && dict["RuleGroupId"] != nil {
                self.ruleGroupId = dict["RuleGroupId"] as! Int64
            }
            if dict.keys.contains("RuleGroupName") && dict["RuleGroupName"] != nil {
                self.ruleGroupName = dict["RuleGroupName"] as! String
            }
            if dict.keys.contains("RuleTotalCount") && dict["RuleTotalCount"] != nil {
                self.ruleTotalCount = dict["RuleTotalCount"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var ruleGroups: [DescribeRuleGroupsResponseBody.RuleGroups]?

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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleGroups") && dict["RuleGroups"] != nil {
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
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
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
            var model = DescribeRuleGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRuleHitsTopClientIpRequest : Tea.TeaModel {
    public var endTimestamp: String?

    public var instanceId: String?

    public var regionId: String?

    public var resource: String?

    public var resourceManagerResourceGroupId: String?

    public var ruleType: String?

    public var startTimestamp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") && dict["Resource"] != nil {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
            self.startTimestamp = dict["StartTimestamp"] as! String
        }
    }
}

public class DescribeRuleHitsTopClientIpResponseBody : Tea.TeaModel {
    public class RuleHitsTopClientIp : Tea.TeaModel {
        public var clientIp: String?

        public var count: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientIp != nil {
                map["ClientIp"] = self.clientIp!
            }
            if self.count != nil {
                map["Count"] = self.count!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientIp") && dict["ClientIp"] != nil {
                self.clientIp = dict["ClientIp"] as! String
            }
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var ruleHitsTopClientIp: [DescribeRuleHitsTopClientIpResponseBody.RuleHitsTopClientIp]?

    public override init() {
        super.init()
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
        if self.ruleHitsTopClientIp != nil {
            var tmp : [Any] = []
            for k in self.ruleHitsTopClientIp! {
                tmp.append(k.toMap())
            }
            map["RuleHitsTopClientIp"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleHitsTopClientIp") && dict["RuleHitsTopClientIp"] != nil {
            var tmp : [DescribeRuleHitsTopClientIpResponseBody.RuleHitsTopClientIp] = []
            for v in dict["RuleHitsTopClientIp"] as! [Any] {
                var model = DescribeRuleHitsTopClientIpResponseBody.RuleHitsTopClientIp()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ruleHitsTopClientIp = tmp
        }
    }
}

public class DescribeRuleHitsTopClientIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRuleHitsTopClientIpResponseBody?

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
            var model = DescribeRuleHitsTopClientIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRuleHitsTopResourceRequest : Tea.TeaModel {
    public var endTimestamp: String?

    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var ruleType: String?

    public var startTimestamp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
            self.startTimestamp = dict["StartTimestamp"] as! String
        }
    }
}

public class DescribeRuleHitsTopResourceResponseBody : Tea.TeaModel {
    public class RuleHitsTopResource : Tea.TeaModel {
        public var count: Int64?

        public var resource: String?

        public override init() {
            super.init()
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
            if self.resource != nil {
                map["Resource"] = self.resource!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("Resource") && dict["Resource"] != nil {
                self.resource = dict["Resource"] as! String
            }
        }
    }
    public var requestId: String?

    public var ruleHitsTopResource: [DescribeRuleHitsTopResourceResponseBody.RuleHitsTopResource]?

    public override init() {
        super.init()
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
        if self.ruleHitsTopResource != nil {
            var tmp : [Any] = []
            for k in self.ruleHitsTopResource! {
                tmp.append(k.toMap())
            }
            map["RuleHitsTopResource"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleHitsTopResource") && dict["RuleHitsTopResource"] != nil {
            var tmp : [DescribeRuleHitsTopResourceResponseBody.RuleHitsTopResource] = []
            for v in dict["RuleHitsTopResource"] as! [Any] {
                var model = DescribeRuleHitsTopResourceResponseBody.RuleHitsTopResource()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ruleHitsTopResource = tmp
        }
    }
}

public class DescribeRuleHitsTopResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRuleHitsTopResourceResponseBody?

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
            var model = DescribeRuleHitsTopResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRuleHitsTopRuleIdRequest : Tea.TeaModel {
    public var endTimestamp: String?

    public var instanceId: String?

    public var regionId: String?

    public var resource: String?

    public var resourceManagerResourceGroupId: String?

    public var ruleType: String?

    public var startTimestamp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") && dict["Resource"] != nil {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
            self.startTimestamp = dict["StartTimestamp"] as! String
        }
    }
}

public class DescribeRuleHitsTopRuleIdResponseBody : Tea.TeaModel {
    public class RuleHitsTopRuleId : Tea.TeaModel {
        public var count: Int64?

        public var resource: String?

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
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.resource != nil {
                map["Resource"] = self.resource!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("Resource") && dict["Resource"] != nil {
                self.resource = dict["Resource"] as! String
            }
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! String
            }
        }
    }
    public var requestId: String?

    public var ruleHitsTopRuleId: [DescribeRuleHitsTopRuleIdResponseBody.RuleHitsTopRuleId]?

    public override init() {
        super.init()
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
        if self.ruleHitsTopRuleId != nil {
            var tmp : [Any] = []
            for k in self.ruleHitsTopRuleId! {
                tmp.append(k.toMap())
            }
            map["RuleHitsTopRuleId"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleHitsTopRuleId") && dict["RuleHitsTopRuleId"] != nil {
            var tmp : [DescribeRuleHitsTopRuleIdResponseBody.RuleHitsTopRuleId] = []
            for v in dict["RuleHitsTopRuleId"] as! [Any] {
                var model = DescribeRuleHitsTopRuleIdResponseBody.RuleHitsTopRuleId()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ruleHitsTopRuleId = tmp
        }
    }
}

public class DescribeRuleHitsTopRuleIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRuleHitsTopRuleIdResponseBody?

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
            var model = DescribeRuleHitsTopRuleIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRuleHitsTopTuleTypeRequest : Tea.TeaModel {
    public var endTimestamp: String?

    public var instanceId: String?

    public var regionId: String?

    public var resource: String?

    public var startTimestamp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") && dict["Resource"] != nil {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
            self.startTimestamp = dict["StartTimestamp"] as! String
        }
    }
}

public class DescribeRuleHitsTopTuleTypeResponseBody : Tea.TeaModel {
    public class RuleHitsTopTuleType : Tea.TeaModel {
        public var count: Int64?

        public var ruleType: String?

        public override init() {
            super.init()
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
            if self.ruleType != nil {
                map["RuleType"] = self.ruleType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
                self.ruleType = dict["RuleType"] as! String
            }
        }
    }
    public var requestId: String?

    public var ruleHitsTopTuleType: [DescribeRuleHitsTopTuleTypeResponseBody.RuleHitsTopTuleType]?

    public override init() {
        super.init()
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
        if self.ruleHitsTopTuleType != nil {
            var tmp : [Any] = []
            for k in self.ruleHitsTopTuleType! {
                tmp.append(k.toMap())
            }
            map["RuleHitsTopTuleType"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleHitsTopTuleType") && dict["RuleHitsTopTuleType"] != nil {
            var tmp : [DescribeRuleHitsTopTuleTypeResponseBody.RuleHitsTopTuleType] = []
            for v in dict["RuleHitsTopTuleType"] as! [Any] {
                var model = DescribeRuleHitsTopTuleTypeResponseBody.RuleHitsTopTuleType()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ruleHitsTopTuleType = tmp
        }
    }
}

public class DescribeRuleHitsTopTuleTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRuleHitsTopTuleTypeResponseBody?

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
            var model = DescribeRuleHitsTopTuleTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRuleHitsTopUaRequest : Tea.TeaModel {
    public var endTimestamp: String?

    public var instanceId: String?

    public var regionId: String?

    public var resource: String?

    public var resourceManagerResourceGroupId: String?

    public var startTimestamp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") && dict["Resource"] != nil {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
            self.startTimestamp = dict["StartTimestamp"] as! String
        }
    }
}

public class DescribeRuleHitsTopUaResponseBody : Tea.TeaModel {
    public class RuleHitsTopUa : Tea.TeaModel {
        public var count: Int64?

        public var ua: String?

        public override init() {
            super.init()
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
            if self.ua != nil {
                map["Ua"] = self.ua!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("Ua") && dict["Ua"] != nil {
                self.ua = dict["Ua"] as! String
            }
        }
    }
    public var requestId: String?

    public var ruleHitsTopUa: [DescribeRuleHitsTopUaResponseBody.RuleHitsTopUa]?

    public override init() {
        super.init()
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
        if self.ruleHitsTopUa != nil {
            var tmp : [Any] = []
            for k in self.ruleHitsTopUa! {
                tmp.append(k.toMap())
            }
            map["RuleHitsTopUa"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleHitsTopUa") && dict["RuleHitsTopUa"] != nil {
            var tmp : [DescribeRuleHitsTopUaResponseBody.RuleHitsTopUa] = []
            for v in dict["RuleHitsTopUa"] as! [Any] {
                var model = DescribeRuleHitsTopUaResponseBody.RuleHitsTopUa()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ruleHitsTopUa = tmp
        }
    }
}

public class DescribeRuleHitsTopUaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRuleHitsTopUaResponseBody?

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
            var model = DescribeRuleHitsTopUaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRuleHitsTopUrlRequest : Tea.TeaModel {
    public var endTimestamp: String?

    public var instanceId: String?

    public var regionId: String?

    public var resource: String?

    public var resourceManagerResourceGroupId: String?

    public var ruleType: String?

    public var startTimestamp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") && dict["Resource"] != nil {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
            self.startTimestamp = dict["StartTimestamp"] as! String
        }
    }
}

public class DescribeRuleHitsTopUrlResponseBody : Tea.TeaModel {
    public class RuleHitsTopUrl : Tea.TeaModel {
        public var count: Int64?

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
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var requestId: String?

    public var ruleHitsTopUrl: [DescribeRuleHitsTopUrlResponseBody.RuleHitsTopUrl]?

    public override init() {
        super.init()
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
        if self.ruleHitsTopUrl != nil {
            var tmp : [Any] = []
            for k in self.ruleHitsTopUrl! {
                tmp.append(k.toMap())
            }
            map["RuleHitsTopUrl"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleHitsTopUrl") && dict["RuleHitsTopUrl"] != nil {
            var tmp : [DescribeRuleHitsTopUrlResponseBody.RuleHitsTopUrl] = []
            for v in dict["RuleHitsTopUrl"] as! [Any] {
                var model = DescribeRuleHitsTopUrlResponseBody.RuleHitsTopUrl()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ruleHitsTopUrl = tmp
        }
    }
}

public class DescribeRuleHitsTopUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRuleHitsTopUrlResponseBody?

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
            var model = DescribeRuleHitsTopUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTemplateResourcesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var resourceType: String?

    public var templateId: Int64?

    public override init() {
        super.init()
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
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class DescribeTemplateResourcesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resources: [String]?

    public override init() {
        super.init()
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
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") && dict["Resources"] != nil {
            self.resources = dict["Resources"] as! [String]
        }
    }
}

public class DescribeTemplateResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTemplateResourcesResponseBody?

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
            var model = DescribeTemplateResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVisitTopIpRequest : Tea.TeaModel {
    public var endTimestamp: String?

    public var instanceId: String?

    public var regionId: String?

    public var resource: String?

    public var resourceManagerResourceGroupId: String?

    public var startTimestamp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") && dict["Resource"] != nil {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
            self.startTimestamp = dict["StartTimestamp"] as! String
        }
    }
}

public class DescribeVisitTopIpResponseBody : Tea.TeaModel {
    public class TopIp : Tea.TeaModel {
        public var area: String?

        public var count: Int64?

        public var ip: String?

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
            if self.area != nil {
                map["Area"] = self.area!
            }
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.isp != nil {
                map["Isp"] = self.isp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Area") && dict["Area"] != nil {
                self.area = dict["Area"] as! String
            }
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("Isp") && dict["Isp"] != nil {
                self.isp = dict["Isp"] as! String
            }
        }
    }
    public var requestId: String?

    public var topIp: [DescribeVisitTopIpResponseBody.TopIp]?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TopIp") && dict["TopIp"] != nil {
            var tmp : [DescribeVisitTopIpResponseBody.TopIp] = []
            for v in dict["TopIp"] as! [Any] {
                var model = DescribeVisitTopIpResponseBody.TopIp()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.topIp = tmp
        }
    }
}

public class DescribeVisitTopIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVisitTopIpResponseBody?

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
            var model = DescribeVisitTopIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVisitUasRequest : Tea.TeaModel {
    public var endTimestamp: String?

    public var instanceId: String?

    public var regionId: String?

    public var resource: String?

    public var startTimestamp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") && dict["Resource"] != nil {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
            self.startTimestamp = dict["StartTimestamp"] as! String
        }
    }
}

public class DescribeVisitUasResponseBody : Tea.TeaModel {
    public class Uas : Tea.TeaModel {
        public var count: Int64?

        public var ua: String?

        public override init() {
            super.init()
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
            if self.ua != nil {
                map["Ua"] = self.ua!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("Ua") && dict["Ua"] != nil {
                self.ua = dict["Ua"] as! String
            }
        }
    }
    public var requestId: String?

    public var uas: [DescribeVisitUasResponseBody.Uas]?

    public override init() {
        super.init()
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
        if self.uas != nil {
            var tmp : [Any] = []
            for k in self.uas! {
                tmp.append(k.toMap())
            }
            map["Uas"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Uas") && dict["Uas"] != nil {
            var tmp : [DescribeVisitUasResponseBody.Uas] = []
            for v in dict["Uas"] as! [Any] {
                var model = DescribeVisitUasResponseBody.Uas()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.uas = tmp
        }
    }
}

public class DescribeVisitUasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVisitUasResponseBody?

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
            var model = DescribeVisitUasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeWafSourceIpSegmentRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public override init() {
        super.init()
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
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeWafSourceIpSegmentResponseBody : Tea.TeaModel {
    public class WafSourceIp : Tea.TeaModel {
        public var IPv4: [String]?

        public var IPv6: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.IPv4 != nil {
                map["IPv4"] = self.IPv4!
            }
            if self.IPv6 != nil {
                map["IPv6"] = self.IPv6!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IPv4") && dict["IPv4"] != nil {
                self.IPv4 = dict["IPv4"] as! [String]
            }
            if dict.keys.contains("IPv6") && dict["IPv6"] != nil {
                self.IPv6 = dict["IPv6"] as! [String]
            }
        }
    }
    public var requestId: String?

    public var wafSourceIp: DescribeWafSourceIpSegmentResponseBody.WafSourceIp?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.wafSourceIp?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.wafSourceIp != nil {
            map["WafSourceIp"] = self.wafSourceIp?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WafSourceIp") && dict["WafSourceIp"] != nil {
            var model = DescribeWafSourceIpSegmentResponseBody.WafSourceIp()
            model.fromMap(dict["WafSourceIp"] as! [String: Any])
            self.wafSourceIp = model
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
            var model = DescribeWafSourceIpSegmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDefenseResourceGroupRequest : Tea.TeaModel {
    public var addList: String?

    public var deleteList: String?

    public var description_: String?

    public var groupName: String?

    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addList != nil {
            map["AddList"] = self.addList!
        }
        if self.deleteList != nil {
            map["DeleteList"] = self.deleteList!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddList") && dict["AddList"] != nil {
            self.addList = dict["AddList"] as! String
        }
        if dict.keys.contains("DeleteList") && dict["DeleteList"] != nil {
            self.deleteList = dict["DeleteList"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class ModifyDefenseResourceGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyDefenseResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDefenseResourceGroupResponseBody?

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
            var model = ModifyDefenseResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDefenseRuleRequest : Tea.TeaModel {
    public var defenseScene: String?

    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var rules: String?

    public var templateId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defenseScene != nil {
            map["DefenseScene"] = self.defenseScene!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.rules != nil {
            map["Rules"] = self.rules!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefenseScene") && dict["DefenseScene"] != nil {
            self.defenseScene = dict["DefenseScene"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("Rules") && dict["Rules"] != nil {
            self.rules = dict["Rules"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class ModifyDefenseRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyDefenseRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDefenseRuleResponseBody?

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
            var model = ModifyDefenseRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDefenseRuleStatusRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var ruleId: Int64?

    public var ruleStatus: Int32?

    public var templateId: Int64?

    public override init() {
        super.init()
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
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleStatus != nil {
            map["RuleStatus"] = self.ruleStatus!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("RuleStatus") && dict["RuleStatus"] != nil {
            self.ruleStatus = dict["RuleStatus"] as! Int32
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class ModifyDefenseRuleStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyDefenseRuleStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDefenseRuleStatusResponseBody?

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
            var model = ModifyDefenseRuleStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDefenseTemplateRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var templateId: Int64?

    public var templateName: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
        if dict.keys.contains("TemplateName") && dict["TemplateName"] != nil {
            self.templateName = dict["TemplateName"] as! String
        }
    }
}

public class ModifyDefenseTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyDefenseTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDefenseTemplateResponseBody?

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
            var model = ModifyDefenseTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDefenseTemplateStatusRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var templateId: Int64?

    public var templateStatus: Int32?

    public override init() {
        super.init()
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
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateStatus != nil {
            map["TemplateStatus"] = self.templateStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
        if dict.keys.contains("TemplateStatus") && dict["TemplateStatus"] != nil {
            self.templateStatus = dict["TemplateStatus"] as! Int32
        }
    }
}

public class ModifyDefenseTemplateStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyDefenseTemplateStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDefenseTemplateStatusResponseBody?

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
            var model = ModifyDefenseTemplateStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDomainRequest : Tea.TeaModel {
    public class Listen : Tea.TeaModel {
        public var certId: String?

        public var cipherSuite: Int32?

        public var customCiphers: [String]?

        public var enableTLSv3: Bool?

        public var exclusiveIp: Bool?

        public var focusHttps: Bool?

        public var http2Enabled: Bool?

        public var httpPorts: [Int32]?

        public var httpsPorts: [Int32]?

        public var IPv6Enabled: Bool?

        public var protectionResource: String?

        public var SM2AccessOnly: Bool?

        public var SM2CertId: String?

        public var SM2Enabled: Bool?

        public var TLSVersion: String?

        public var xffHeaderMode: Int32?

        public var xffHeaders: [String]?

        public override init() {
            super.init()
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
            if self.cipherSuite != nil {
                map["CipherSuite"] = self.cipherSuite!
            }
            if self.customCiphers != nil {
                map["CustomCiphers"] = self.customCiphers!
            }
            if self.enableTLSv3 != nil {
                map["EnableTLSv3"] = self.enableTLSv3!
            }
            if self.exclusiveIp != nil {
                map["ExclusiveIp"] = self.exclusiveIp!
            }
            if self.focusHttps != nil {
                map["FocusHttps"] = self.focusHttps!
            }
            if self.http2Enabled != nil {
                map["Http2Enabled"] = self.http2Enabled!
            }
            if self.httpPorts != nil {
                map["HttpPorts"] = self.httpPorts!
            }
            if self.httpsPorts != nil {
                map["HttpsPorts"] = self.httpsPorts!
            }
            if self.IPv6Enabled != nil {
                map["IPv6Enabled"] = self.IPv6Enabled!
            }
            if self.protectionResource != nil {
                map["ProtectionResource"] = self.protectionResource!
            }
            if self.SM2AccessOnly != nil {
                map["SM2AccessOnly"] = self.SM2AccessOnly!
            }
            if self.SM2CertId != nil {
                map["SM2CertId"] = self.SM2CertId!
            }
            if self.SM2Enabled != nil {
                map["SM2Enabled"] = self.SM2Enabled!
            }
            if self.TLSVersion != nil {
                map["TLSVersion"] = self.TLSVersion!
            }
            if self.xffHeaderMode != nil {
                map["XffHeaderMode"] = self.xffHeaderMode!
            }
            if self.xffHeaders != nil {
                map["XffHeaders"] = self.xffHeaders!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertId") && dict["CertId"] != nil {
                self.certId = dict["CertId"] as! String
            }
            if dict.keys.contains("CipherSuite") && dict["CipherSuite"] != nil {
                self.cipherSuite = dict["CipherSuite"] as! Int32
            }
            if dict.keys.contains("CustomCiphers") && dict["CustomCiphers"] != nil {
                self.customCiphers = dict["CustomCiphers"] as! [String]
            }
            if dict.keys.contains("EnableTLSv3") && dict["EnableTLSv3"] != nil {
                self.enableTLSv3 = dict["EnableTLSv3"] as! Bool
            }
            if dict.keys.contains("ExclusiveIp") && dict["ExclusiveIp"] != nil {
                self.exclusiveIp = dict["ExclusiveIp"] as! Bool
            }
            if dict.keys.contains("FocusHttps") && dict["FocusHttps"] != nil {
                self.focusHttps = dict["FocusHttps"] as! Bool
            }
            if dict.keys.contains("Http2Enabled") && dict["Http2Enabled"] != nil {
                self.http2Enabled = dict["Http2Enabled"] as! Bool
            }
            if dict.keys.contains("HttpPorts") && dict["HttpPorts"] != nil {
                self.httpPorts = dict["HttpPorts"] as! [Int32]
            }
            if dict.keys.contains("HttpsPorts") && dict["HttpsPorts"] != nil {
                self.httpsPorts = dict["HttpsPorts"] as! [Int32]
            }
            if dict.keys.contains("IPv6Enabled") && dict["IPv6Enabled"] != nil {
                self.IPv6Enabled = dict["IPv6Enabled"] as! Bool
            }
            if dict.keys.contains("ProtectionResource") && dict["ProtectionResource"] != nil {
                self.protectionResource = dict["ProtectionResource"] as! String
            }
            if dict.keys.contains("SM2AccessOnly") && dict["SM2AccessOnly"] != nil {
                self.SM2AccessOnly = dict["SM2AccessOnly"] as! Bool
            }
            if dict.keys.contains("SM2CertId") && dict["SM2CertId"] != nil {
                self.SM2CertId = dict["SM2CertId"] as! String
            }
            if dict.keys.contains("SM2Enabled") && dict["SM2Enabled"] != nil {
                self.SM2Enabled = dict["SM2Enabled"] as! Bool
            }
            if dict.keys.contains("TLSVersion") && dict["TLSVersion"] != nil {
                self.TLSVersion = dict["TLSVersion"] as! String
            }
            if dict.keys.contains("XffHeaderMode") && dict["XffHeaderMode"] != nil {
                self.xffHeaderMode = dict["XffHeaderMode"] as! Int32
            }
            if dict.keys.contains("XffHeaders") && dict["XffHeaders"] != nil {
                self.xffHeaders = dict["XffHeaders"] as! [String]
            }
        }
    }
    public class Redirect : Tea.TeaModel {
        public class RequestHeaders : Tea.TeaModel {
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
        public var backends: [String]?

        public var cnameEnabled: Bool?

        public var connectTimeout: Int32?

        public var focusHttpBackend: Bool?

        public var keepalive: Bool?

        public var keepaliveRequests: Int32?

        public var keepaliveTimeout: Int32?

        public var loadbalance: String?

        public var readTimeout: Int32?

        public var requestHeaders: [ModifyDomainRequest.Redirect.RequestHeaders]?

        public var retry: Bool?

        public var routingRules: String?

        public var sniEnabled: Bool?

        public var sniHost: String?

        public var writeTimeout: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backends != nil {
                map["Backends"] = self.backends!
            }
            if self.cnameEnabled != nil {
                map["CnameEnabled"] = self.cnameEnabled!
            }
            if self.connectTimeout != nil {
                map["ConnectTimeout"] = self.connectTimeout!
            }
            if self.focusHttpBackend != nil {
                map["FocusHttpBackend"] = self.focusHttpBackend!
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
            if self.loadbalance != nil {
                map["Loadbalance"] = self.loadbalance!
            }
            if self.readTimeout != nil {
                map["ReadTimeout"] = self.readTimeout!
            }
            if self.requestHeaders != nil {
                var tmp : [Any] = []
                for k in self.requestHeaders! {
                    tmp.append(k.toMap())
                }
                map["RequestHeaders"] = tmp
            }
            if self.retry != nil {
                map["Retry"] = self.retry!
            }
            if self.routingRules != nil {
                map["RoutingRules"] = self.routingRules!
            }
            if self.sniEnabled != nil {
                map["SniEnabled"] = self.sniEnabled!
            }
            if self.sniHost != nil {
                map["SniHost"] = self.sniHost!
            }
            if self.writeTimeout != nil {
                map["WriteTimeout"] = self.writeTimeout!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Backends") && dict["Backends"] != nil {
                self.backends = dict["Backends"] as! [String]
            }
            if dict.keys.contains("CnameEnabled") && dict["CnameEnabled"] != nil {
                self.cnameEnabled = dict["CnameEnabled"] as! Bool
            }
            if dict.keys.contains("ConnectTimeout") && dict["ConnectTimeout"] != nil {
                self.connectTimeout = dict["ConnectTimeout"] as! Int32
            }
            if dict.keys.contains("FocusHttpBackend") && dict["FocusHttpBackend"] != nil {
                self.focusHttpBackend = dict["FocusHttpBackend"] as! Bool
            }
            if dict.keys.contains("Keepalive") && dict["Keepalive"] != nil {
                self.keepalive = dict["Keepalive"] as! Bool
            }
            if dict.keys.contains("KeepaliveRequests") && dict["KeepaliveRequests"] != nil {
                self.keepaliveRequests = dict["KeepaliveRequests"] as! Int32
            }
            if dict.keys.contains("KeepaliveTimeout") && dict["KeepaliveTimeout"] != nil {
                self.keepaliveTimeout = dict["KeepaliveTimeout"] as! Int32
            }
            if dict.keys.contains("Loadbalance") && dict["Loadbalance"] != nil {
                self.loadbalance = dict["Loadbalance"] as! String
            }
            if dict.keys.contains("ReadTimeout") && dict["ReadTimeout"] != nil {
                self.readTimeout = dict["ReadTimeout"] as! Int32
            }
            if dict.keys.contains("RequestHeaders") && dict["RequestHeaders"] != nil {
                var tmp : [ModifyDomainRequest.Redirect.RequestHeaders] = []
                for v in dict["RequestHeaders"] as! [Any] {
                    var model = ModifyDomainRequest.Redirect.RequestHeaders()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.requestHeaders = tmp
            }
            if dict.keys.contains("Retry") && dict["Retry"] != nil {
                self.retry = dict["Retry"] as! Bool
            }
            if dict.keys.contains("RoutingRules") && dict["RoutingRules"] != nil {
                self.routingRules = dict["RoutingRules"] as! String
            }
            if dict.keys.contains("SniEnabled") && dict["SniEnabled"] != nil {
                self.sniEnabled = dict["SniEnabled"] as! Bool
            }
            if dict.keys.contains("SniHost") && dict["SniHost"] != nil {
                self.sniHost = dict["SniHost"] as! String
            }
            if dict.keys.contains("WriteTimeout") && dict["WriteTimeout"] != nil {
                self.writeTimeout = dict["WriteTimeout"] as! Int32
            }
        }
    }
    public var accessType: String?

    public var domain: String?

    public var instanceId: String?

    public var listen: ModifyDomainRequest.Listen?

    public var redirect: ModifyDomainRequest.Redirect?

    public var regionId: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.listen?.validate()
        try self.redirect?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessType != nil {
            map["AccessType"] = self.accessType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.listen != nil {
            map["Listen"] = self.listen?.toMap()
        }
        if self.redirect != nil {
            map["Redirect"] = self.redirect?.toMap()
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessType") && dict["AccessType"] != nil {
            self.accessType = dict["AccessType"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Listen") && dict["Listen"] != nil {
            var model = ModifyDomainRequest.Listen()
            model.fromMap(dict["Listen"] as! [String: Any])
            self.listen = model
        }
        if dict.keys.contains("Redirect") && dict["Redirect"] != nil {
            var model = ModifyDomainRequest.Redirect()
            model.fromMap(dict["Redirect"] as! [String: Any])
            self.redirect = model
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class ModifyDomainShrinkRequest : Tea.TeaModel {
    public var accessType: String?

    public var domain: String?

    public var instanceId: String?

    public var listenShrink: String?

    public var redirectShrink: String?

    public var regionId: String?

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
        if self.accessType != nil {
            map["AccessType"] = self.accessType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.listenShrink != nil {
            map["Listen"] = self.listenShrink!
        }
        if self.redirectShrink != nil {
            map["Redirect"] = self.redirectShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessType") && dict["AccessType"] != nil {
            self.accessType = dict["AccessType"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Listen") && dict["Listen"] != nil {
            self.listenShrink = dict["Listen"] as! String
        }
        if dict.keys.contains("Redirect") && dict["Redirect"] != nil {
            self.redirectShrink = dict["Redirect"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class ModifyDomainResponseBody : Tea.TeaModel {
    public class DomainInfo : Tea.TeaModel {
        public var cname: String?

        public var domain: String?

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
            if self.cname != nil {
                map["Cname"] = self.cname!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.domainId != nil {
                map["DomainId"] = self.domainId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cname") && dict["Cname"] != nil {
                self.cname = dict["Cname"] as! String
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("DomainId") && dict["DomainId"] != nil {
                self.domainId = dict["DomainId"] as! String
            }
        }
    }
    public var domainInfo: ModifyDomainResponseBody.DomainInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainInfo != nil {
            map["DomainInfo"] = self.domainInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainInfo") && dict["DomainInfo"] != nil {
            var model = ModifyDomainResponseBody.DomainInfo()
            model.fromMap(dict["DomainInfo"] as! [String: Any])
            self.domainInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
            var model = ModifyDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyHybridCloudClusterBypassStatusRequest : Tea.TeaModel {
    public var clusterResourceId: String?

    public var instanceId: String?

    public var ruleStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterResourceId != nil {
            map["ClusterResourceId"] = self.clusterResourceId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ruleStatus != nil {
            map["RuleStatus"] = self.ruleStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterResourceId") && dict["ClusterResourceId"] != nil {
            self.clusterResourceId = dict["ClusterResourceId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RuleStatus") && dict["RuleStatus"] != nil {
            self.ruleStatus = dict["RuleStatus"] as! String
        }
    }
}

public class ModifyHybridCloudClusterBypassStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyHybridCloudClusterBypassStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyHybridCloudClusterBypassStatusResponseBody?

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
            var model = ModifyHybridCloudClusterBypassStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyMajorProtectionBlackIpRequest : Tea.TeaModel {
    public var description_: String?

    public var expiredTime: Int64?

    public var instanceId: String?

    public var ipList: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var ruleId: Int64?

    public var templateId: Int64?

    public override init() {
        super.init()
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
        if self.expiredTime != nil {
            map["ExpiredTime"] = self.expiredTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ipList != nil {
            map["IpList"] = self.ipList!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
            self.expiredTime = dict["ExpiredTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IpList") && dict["IpList"] != nil {
            self.ipList = dict["IpList"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class ModifyMajorProtectionBlackIpResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyMajorProtectionBlackIpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyMajorProtectionBlackIpResponseBody?

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
            var model = ModifyMajorProtectionBlackIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyResourceLogStatusRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var resource: String?

    public var resourceManagerResourceGroupId: String?

    public var status: Bool?

    public override init() {
        super.init()
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
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") && dict["Resource"] != nil {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Bool
        }
    }
}

public class ModifyResourceLogStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var status: Bool?

    public override init() {
        super.init()
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
            self.status = dict["Status"] as! Bool
        }
    }
}

public class ModifyResourceLogStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyResourceLogStatusResponseBody?

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
            var model = ModifyResourceLogStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTemplateResourcesRequest : Tea.TeaModel {
    public var bindResourceGroups: [String]?

    public var bindResources: [String]?

    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var templateId: Int64?

    public var unbindResourceGroups: [String]?

    public var unbindResources: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bindResourceGroups != nil {
            map["BindResourceGroups"] = self.bindResourceGroups!
        }
        if self.bindResources != nil {
            map["BindResources"] = self.bindResources!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.unbindResourceGroups != nil {
            map["UnbindResourceGroups"] = self.unbindResourceGroups!
        }
        if self.unbindResources != nil {
            map["UnbindResources"] = self.unbindResources!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BindResourceGroups") && dict["BindResourceGroups"] != nil {
            self.bindResourceGroups = dict["BindResourceGroups"] as! [String]
        }
        if dict.keys.contains("BindResources") && dict["BindResources"] != nil {
            self.bindResources = dict["BindResources"] as! [String]
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") && dict["ResourceManagerResourceGroupId"] != nil {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
        if dict.keys.contains("UnbindResourceGroups") && dict["UnbindResourceGroups"] != nil {
            self.unbindResourceGroups = dict["UnbindResourceGroups"] as! [String]
        }
        if dict.keys.contains("UnbindResources") && dict["UnbindResources"] != nil {
            self.unbindResources = dict["UnbindResources"] as! [String]
        }
    }
}

public class ModifyTemplateResourcesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyTemplateResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTemplateResourcesResponseBody?

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
            var model = ModifyTemplateResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
