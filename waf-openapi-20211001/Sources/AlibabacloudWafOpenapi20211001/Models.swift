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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ClearMajorProtectionBlackIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CopyDefenseTemplateRequest : Tea.TeaModel {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class CopyDefenseTemplateResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class CopyDefenseTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CopyDefenseTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CopyDefenseTemplateResponseBody()
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
        if dict.keys.contains("AddList") {
            self.addList = dict["AddList"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("DefenseScene") {
            self.defenseScene = dict["DefenseScene"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("Rules") {
            self.rules = dict["Rules"] as! String
        }
        if dict.keys.contains("TemplateId") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("DefenseScene") {
            self.defenseScene = dict["DefenseScene"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("TemplateOrigin") {
            self.templateOrigin = dict["TemplateOrigin"] as! String
        }
        if dict.keys.contains("TemplateStatus") {
            self.templateStatus = dict["TemplateStatus"] as! Int32
        }
        if dict.keys.contains("TemplateType") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            if dict.keys.contains("CertId") {
                self.certId = dict["CertId"] as! String
            }
            if dict.keys.contains("CipherSuite") {
                self.cipherSuite = dict["CipherSuite"] as! Int32
            }
            if dict.keys.contains("CustomCiphers") {
                self.customCiphers = dict["CustomCiphers"] as! [String]
            }
            if dict.keys.contains("EnableTLSv3") {
                self.enableTLSv3 = dict["EnableTLSv3"] as! Bool
            }
            if dict.keys.contains("ExclusiveIp") {
                self.exclusiveIp = dict["ExclusiveIp"] as! Bool
            }
            if dict.keys.contains("FocusHttps") {
                self.focusHttps = dict["FocusHttps"] as! Bool
            }
            if dict.keys.contains("Http2Enabled") {
                self.http2Enabled = dict["Http2Enabled"] as! Bool
            }
            if dict.keys.contains("HttpPorts") {
                self.httpPorts = dict["HttpPorts"] as! [Int32]
            }
            if dict.keys.contains("HttpsPorts") {
                self.httpsPorts = dict["HttpsPorts"] as! [Int32]
            }
            if dict.keys.contains("IPv6Enabled") {
                self.IPv6Enabled = dict["IPv6Enabled"] as! Bool
            }
            if dict.keys.contains("ProtectionResource") {
                self.protectionResource = dict["ProtectionResource"] as! String
            }
            if dict.keys.contains("SM2AccessOnly") {
                self.SM2AccessOnly = dict["SM2AccessOnly"] as! Bool
            }
            if dict.keys.contains("SM2CertId") {
                self.SM2CertId = dict["SM2CertId"] as! String
            }
            if dict.keys.contains("SM2Enabled") {
                self.SM2Enabled = dict["SM2Enabled"] as! Bool
            }
            if dict.keys.contains("TLSVersion") {
                self.TLSVersion = dict["TLSVersion"] as! String
            }
            if dict.keys.contains("XffHeaderMode") {
                self.xffHeaderMode = dict["XffHeaderMode"] as! Int32
            }
            if dict.keys.contains("XffHeaders") {
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
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
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

        public var xffProto: Bool?

        public override init() {
            super.init()
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
            if self.xffProto != nil {
                map["XffProto"] = self.xffProto!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Backends") {
                self.backends = dict["Backends"] as! [String]
            }
            if dict.keys.contains("CnameEnabled") {
                self.cnameEnabled = dict["CnameEnabled"] as! Bool
            }
            if dict.keys.contains("ConnectTimeout") {
                self.connectTimeout = dict["ConnectTimeout"] as! Int32
            }
            if dict.keys.contains("FocusHttpBackend") {
                self.focusHttpBackend = dict["FocusHttpBackend"] as! Bool
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
            if dict.keys.contains("Loadbalance") {
                self.loadbalance = dict["Loadbalance"] as! String
            }
            if dict.keys.contains("ReadTimeout") {
                self.readTimeout = dict["ReadTimeout"] as! Int32
            }
            if dict.keys.contains("RequestHeaders") {
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
            if dict.keys.contains("Retry") {
                self.retry = dict["Retry"] as! Bool
            }
            if dict.keys.contains("RoutingRules") {
                self.routingRules = dict["RoutingRules"] as! String
            }
            if dict.keys.contains("SniEnabled") {
                self.sniEnabled = dict["SniEnabled"] as! Bool
            }
            if dict.keys.contains("SniHost") {
                self.sniHost = dict["SniHost"] as! String
            }
            if dict.keys.contains("WriteTimeout") {
                self.writeTimeout = dict["WriteTimeout"] as! Int32
            }
            if dict.keys.contains("XffProto") {
                self.xffProto = dict["XffProto"] as! Bool
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessType") {
            self.accessType = dict["AccessType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Listen") {
            var model = CreateDomainRequest.Listen()
            model.fromMap(dict["Listen"] as! [String: Any])
            self.listen = model
        }
        if dict.keys.contains("Redirect") {
            var model = CreateDomainRequest.Redirect()
            model.fromMap(dict["Redirect"] as! [String: Any])
            self.redirect = model
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessType") {
            self.accessType = dict["AccessType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Listen") {
            self.listenShrink = dict["Listen"] as! String
        }
        if dict.keys.contains("Redirect") {
            self.redirectShrink = dict["Redirect"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
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
            if dict.keys.contains("Cname") {
                self.cname = dict["Cname"] as! String
            }
            if dict.keys.contains("Domain") {
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
        if dict.keys.contains("DomainInfo") {
            var model = CreateDomainResponseBody.DomainInfo()
            model.fromMap(dict["DomainInfo"] as! [String: Any])
            self.domainInfo = model
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
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExpiredTime") {
            self.expiredTime = dict["ExpiredTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IpList") {
            self.ipList = dict["IpList"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMajorProtectionBlackIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMemberAccountsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var memberAccountIds: [String]?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.memberAccountIds != nil {
            map["MemberAccountIds"] = self.memberAccountIds!
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MemberAccountIds") {
            self.memberAccountIds = dict["MemberAccountIds"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceIp") {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class CreateMemberAccountsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class CreateMemberAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMemberAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMemberAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePostpaidInstanceRequest : Tea.TeaModel {
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class CreatePostpaidInstanceResponseBody : Tea.TeaModel {
    public var instanceId: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePostpaidInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePostpaidInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePostpaidInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApisecAbnormalRequest : Tea.TeaModel {
    public var abnormalId: String?

    public var clusterId: String?

    public var instanceId: String?

    public var region: String?

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
        if self.abnormalId != nil {
            map["AbnormalId"] = self.abnormalId!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.region != nil {
            map["Region"] = self.region!
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
        if dict.keys.contains("AbnormalId") {
            self.abnormalId = dict["AbnormalId"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DeleteApisecAbnormalResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
    }
}

public class DeleteApisecAbnormalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApisecAbnormalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteApisecAbnormalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApisecEventRequest : Tea.TeaModel {
    public var clusterId: String?

    public var eventId: String?

    public var instanceId: String?

    public var region: String?

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
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.region != nil {
            map["Region"] = self.region!
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
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DeleteApisecEventResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
    }
}

public class DeleteApisecEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApisecEventResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteApisecEventResponseBody()
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
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleIds") {
            self.ruleIds = dict["RuleIds"] as! String
        }
        if dict.keys.contains("TemplateId") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("TemplateId") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessType") {
            self.accessType = dict["AccessType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("DomainId") {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IpList") {
            self.ipList = dict["IpList"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteMajorProtectionBlackIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteMemberAccountRequest : Tea.TeaModel {
    public var instanceId: String?

    public var memberAccountId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.memberAccountId != nil {
            map["MemberAccountId"] = self.memberAccountId!
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MemberAccountId") {
            self.memberAccountId = dict["MemberAccountId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceIp") {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DeleteMemberAccountResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteMemberAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMemberAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteMemberAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAccountDelegatedStatusRequest : Tea.TeaModel {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeAccountDelegatedStatusResponseBody : Tea.TeaModel {
    public var accountId: String?

    public var accountName: String?

    public var delegatedStatus: Bool?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.delegatedStatus != nil {
            map["DelegatedStatus"] = self.delegatedStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DelegatedStatus") {
            self.delegatedStatus = dict["DelegatedStatus"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAccountDelegatedStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccountDelegatedStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAccountDelegatedStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApisecAbnormalDomainStatisticRequest : Tea.TeaModel {
    public var clusterId: String?

    public var endTime: Int64?

    public var instanceId: String?

    public var orderWay: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var region: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderWay != nil {
            map["OrderWay"] = self.orderWay!
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
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrderWay") {
            self.orderWay = dict["OrderWay"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeApisecAbnormalDomainStatisticResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var apiCount: Int64?

        public var domain: String?

        public var high: Int64?

        public var low: Int64?

        public var medium: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiCount != nil {
                map["ApiCount"] = self.apiCount!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.high != nil {
                map["High"] = self.high!
            }
            if self.low != nil {
                map["Low"] = self.low!
            }
            if self.medium != nil {
                map["Medium"] = self.medium!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiCount") {
                self.apiCount = dict["ApiCount"] as! Int64
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("High") {
                self.high = dict["High"] as! Int64
            }
            if dict.keys.contains("Low") {
                self.low = dict["Low"] as! Int64
            }
            if dict.keys.contains("Medium") {
                self.medium = dict["Medium"] as! Int64
            }
        }
    }
    public var data: [DescribeApisecAbnormalDomainStatisticResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if dict.keys.contains("Data") {
            var tmp : [DescribeApisecAbnormalDomainStatisticResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeApisecAbnormalDomainStatisticResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeApisecAbnormalDomainStatisticResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApisecAbnormalDomainStatisticResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeApisecAbnormalDomainStatisticResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApisecAssetTrendRequest : Tea.TeaModel {
    public var clusterId: String?

    public var endTime: Int64?

    public var instanceId: String?

    public var region: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeApisecAssetTrendResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var assetActive: Int64?

        public var assetCount: Int64?

        public var assetOffline: Int64?

        public var timestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assetActive != nil {
                map["AssetActive"] = self.assetActive!
            }
            if self.assetCount != nil {
                map["AssetCount"] = self.assetCount!
            }
            if self.assetOffline != nil {
                map["AssetOffline"] = self.assetOffline!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AssetActive") {
                self.assetActive = dict["AssetActive"] as! Int64
            }
            if dict.keys.contains("AssetCount") {
                self.assetCount = dict["AssetCount"] as! Int64
            }
            if dict.keys.contains("AssetOffline") {
                self.assetOffline = dict["AssetOffline"] as! Int64
            }
            if dict.keys.contains("Timestamp") {
                self.timestamp = dict["Timestamp"] as! Int64
            }
        }
    }
    public var data: [DescribeApisecAssetTrendResponseBody.Data]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [DescribeApisecAssetTrendResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeApisecAssetTrendResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeApisecAssetTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApisecAssetTrendResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeApisecAssetTrendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApisecEventDomainStatisticRequest : Tea.TeaModel {
    public var clusterId: String?

    public var endTime: Int64?

    public var instanceId: String?

    public var orderWay: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var region: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderWay != nil {
            map["OrderWay"] = self.orderWay!
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
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrderWay") {
            self.orderWay = dict["OrderWay"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeApisecEventDomainStatisticResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var apiCount: Int64?

        public var domain: String?

        public var high: Int64?

        public var low: Int64?

        public var medium: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiCount != nil {
                map["ApiCount"] = self.apiCount!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.high != nil {
                map["High"] = self.high!
            }
            if self.low != nil {
                map["Low"] = self.low!
            }
            if self.medium != nil {
                map["Medium"] = self.medium!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiCount") {
                self.apiCount = dict["ApiCount"] as! Int64
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("High") {
                self.high = dict["High"] as! Int64
            }
            if dict.keys.contains("Low") {
                self.low = dict["Low"] as! Int64
            }
            if dict.keys.contains("Medium") {
                self.medium = dict["Medium"] as! Int64
            }
        }
    }
    public var data: [DescribeApisecEventDomainStatisticResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if dict.keys.contains("Data") {
            var tmp : [DescribeApisecEventDomainStatisticResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeApisecEventDomainStatisticResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeApisecEventDomainStatisticResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApisecEventDomainStatisticResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeApisecEventDomainStatisticResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApisecLogDeliveriesRequest : Tea.TeaModel {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeApisecLogDeliveriesResponseBody : Tea.TeaModel {
    public class DeliveryConfigs : Tea.TeaModel {
        public var assertKey: String?

        public var logRegionId: String?

        public var logStoreName: String?

        public var projectName: String?

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
            if self.assertKey != nil {
                map["AssertKey"] = self.assertKey!
            }
            if self.logRegionId != nil {
                map["LogRegionId"] = self.logRegionId!
            }
            if self.logStoreName != nil {
                map["LogStoreName"] = self.logStoreName!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AssertKey") {
                self.assertKey = dict["AssertKey"] as! String
            }
            if dict.keys.contains("LogRegionId") {
                self.logRegionId = dict["LogRegionId"] as! String
            }
            if dict.keys.contains("LogStoreName") {
                self.logStoreName = dict["LogStoreName"] as! String
            }
            if dict.keys.contains("ProjectName") {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Bool
            }
        }
    }
    public var deliveryConfigs: [DescribeApisecLogDeliveriesResponseBody.DeliveryConfigs]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliveryConfigs != nil {
            var tmp : [Any] = []
            for k in self.deliveryConfigs! {
                tmp.append(k.toMap())
            }
            map["DeliveryConfigs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeliveryConfigs") {
            var tmp : [DescribeApisecLogDeliveriesResponseBody.DeliveryConfigs] = []
            for v in dict["DeliveryConfigs"] as! [Any] {
                var model = DescribeApisecLogDeliveriesResponseBody.DeliveryConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.deliveryConfigs = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeApisecLogDeliveriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApisecLogDeliveriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeApisecLogDeliveriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApisecSensitiveDomainStatisticRequest : Tea.TeaModel {
    public var clusterId: String?

    public var endTime: Int64?

    public var instanceId: String?

    public var orderWay: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var region: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var startTime: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderWay != nil {
            map["OrderWay"] = self.orderWay!
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
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrderWay") {
            self.orderWay = dict["OrderWay"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeApisecSensitiveDomainStatisticResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var apiCount: Int64?

        public var domainCount: Int64?

        public var sensitiveCode: String?

        public var sensitiveLevel: String?

        public var sensitiveName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiCount != nil {
                map["ApiCount"] = self.apiCount!
            }
            if self.domainCount != nil {
                map["DomainCount"] = self.domainCount!
            }
            if self.sensitiveCode != nil {
                map["SensitiveCode"] = self.sensitiveCode!
            }
            if self.sensitiveLevel != nil {
                map["SensitiveLevel"] = self.sensitiveLevel!
            }
            if self.sensitiveName != nil {
                map["SensitiveName"] = self.sensitiveName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiCount") {
                self.apiCount = dict["ApiCount"] as! Int64
            }
            if dict.keys.contains("DomainCount") {
                self.domainCount = dict["DomainCount"] as! Int64
            }
            if dict.keys.contains("SensitiveCode") {
                self.sensitiveCode = dict["SensitiveCode"] as! String
            }
            if dict.keys.contains("SensitiveLevel") {
                self.sensitiveLevel = dict["SensitiveLevel"] as! String
            }
            if dict.keys.contains("SensitiveName") {
                self.sensitiveName = dict["SensitiveName"] as! String
            }
        }
    }
    public var data: [DescribeApisecSensitiveDomainStatisticResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if dict.keys.contains("Data") {
            var tmp : [DescribeApisecSensitiveDomainStatisticResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeApisecSensitiveDomainStatisticResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeApisecSensitiveDomainStatisticResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApisecSensitiveDomainStatisticResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeApisecSensitiveDomainStatisticResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApisecSlsLogStoresRequest : Tea.TeaModel {
    public var instanceId: String?

    public var logRegionId: String?

    public var projectName: String?

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
        if self.logRegionId != nil {
            map["LogRegionId"] = self.logRegionId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LogRegionId") {
            self.logRegionId = dict["LogRegionId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeApisecSlsLogStoresResponseBody : Tea.TeaModel {
    public var logStores: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logStores != nil {
            map["LogStores"] = self.logStores!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogStores") {
            self.logStores = dict["LogStores"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeApisecSlsLogStoresResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApisecSlsLogStoresResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeApisecSlsLogStoresResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApisecSlsProjectsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var logRegionId: String?

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
        if self.logRegionId != nil {
            map["LogRegionId"] = self.logRegionId!
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LogRegionId") {
            self.logRegionId = dict["LogRegionId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeApisecSlsProjectsResponseBody : Tea.TeaModel {
    public var projects: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projects != nil {
            map["Projects"] = self.projects!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Projects") {
            self.projects = dict["Projects"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeApisecSlsProjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApisecSlsProjectsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeApisecSlsProjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCertDetailRequest : Tea.TeaModel {
    public var certIdentifier: String?

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
        if self.certIdentifier != nil {
            map["CertIdentifier"] = self.certIdentifier!
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
        if dict.keys.contains("CertIdentifier") {
            self.certIdentifier = dict["CertIdentifier"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeCertDetailResponseBody : Tea.TeaModel {
    public class CertDetail : Tea.TeaModel {
        public var afterDate: Int64?

        public var beforeDate: Int64?

        public var certIdentifier: String?

        public var certName: String?

        public var commonName: String?

        public var domain: String?

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
            if self.afterDate != nil {
                map["AfterDate"] = self.afterDate!
            }
            if self.beforeDate != nil {
                map["BeforeDate"] = self.beforeDate!
            }
            if self.certIdentifier != nil {
                map["CertIdentifier"] = self.certIdentifier!
            }
            if self.certName != nil {
                map["CertName"] = self.certName!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AfterDate") {
                self.afterDate = dict["AfterDate"] as! Int64
            }
            if dict.keys.contains("BeforeDate") {
                self.beforeDate = dict["BeforeDate"] as! Int64
            }
            if dict.keys.contains("CertIdentifier") {
                self.certIdentifier = dict["CertIdentifier"] as! String
            }
            if dict.keys.contains("CertName") {
                self.certName = dict["CertName"] as! String
            }
            if dict.keys.contains("CommonName") {
                self.commonName = dict["CommonName"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("Sans") {
                self.sans = dict["Sans"] as! [String]
            }
        }
    }
    public var certDetail: DescribeCertDetailResponseBody.CertDetail?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.certDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certDetail != nil {
            map["CertDetail"] = self.certDetail?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertDetail") {
            var model = DescribeCertDetailResponseBody.CertDetail()
            model.fromMap(dict["CertDetail"] as! [String: Any])
            self.certDetail = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCertDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCertDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeCertDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCertsRequest : Tea.TeaModel {
    public var algorithm: String?

    public var domain: String?

    public var instanceId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.algorithm != nil {
            map["Algorithm"] = self.algorithm!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Algorithm") {
            self.algorithm = dict["Algorithm"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeCertsResponseBody : Tea.TeaModel {
    public class Certs : Tea.TeaModel {
        public var afterDate: Int64?

        public var beforeDate: Int64?

        public var certIdentifier: String?

        public var certName: String?

        public var commonName: String?

        public var domain: String?

        public var isChainCompleted: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.afterDate != nil {
                map["AfterDate"] = self.afterDate!
            }
            if self.beforeDate != nil {
                map["BeforeDate"] = self.beforeDate!
            }
            if self.certIdentifier != nil {
                map["CertIdentifier"] = self.certIdentifier!
            }
            if self.certName != nil {
                map["CertName"] = self.certName!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.isChainCompleted != nil {
                map["IsChainCompleted"] = self.isChainCompleted!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AfterDate") {
                self.afterDate = dict["AfterDate"] as! Int64
            }
            if dict.keys.contains("BeforeDate") {
                self.beforeDate = dict["BeforeDate"] as! Int64
            }
            if dict.keys.contains("CertIdentifier") {
                self.certIdentifier = dict["CertIdentifier"] as! String
            }
            if dict.keys.contains("CertName") {
                self.certName = dict["CertName"] as! String
            }
            if dict.keys.contains("CommonName") {
                self.commonName = dict["CommonName"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("IsChainCompleted") {
                self.isChainCompleted = dict["IsChainCompleted"] as! Bool
            }
        }
    }
    public var certs: [DescribeCertsResponseBody.Certs]?

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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Certs") {
            var tmp : [DescribeCertsResponseBody.Certs] = []
            for v in dict["Certs"] as! [Any] {
                var model = DescribeCertsResponseBody.Certs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.certs = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCertsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCloudResourcesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerUserId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public var resourceDomain: String?

    public var resourceFunction: String?

    public var resourceInstanceId: String?

    public var resourceManagerResourceGroupId: String?

    public var resourceName: String?

    public var resourceProduct: String?

    public var resourceRegionId: String?

    public var resourceRouteName: String?

    public override init() {
        super.init()
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
        if self.ownerUserId != nil {
            map["OwnerUserId"] = self.ownerUserId!
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
        if self.resourceDomain != nil {
            map["ResourceDomain"] = self.resourceDomain!
        }
        if self.resourceFunction != nil {
            map["ResourceFunction"] = self.resourceFunction!
        }
        if self.resourceInstanceId != nil {
            map["ResourceInstanceId"] = self.resourceInstanceId!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceProduct != nil {
            map["ResourceProduct"] = self.resourceProduct!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        if self.resourceRouteName != nil {
            map["ResourceRouteName"] = self.resourceRouteName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OwnerUserId") {
            self.ownerUserId = dict["OwnerUserId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceDomain") {
            self.resourceDomain = dict["ResourceDomain"] as! String
        }
        if dict.keys.contains("ResourceFunction") {
            self.resourceFunction = dict["ResourceFunction"] as! String
        }
        if dict.keys.contains("ResourceInstanceId") {
            self.resourceInstanceId = dict["ResourceInstanceId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceProduct") {
            self.resourceProduct = dict["ResourceProduct"] as! String
        }
        if dict.keys.contains("ResourceRegionId") {
            self.resourceRegionId = dict["ResourceRegionId"] as! String
        }
        if dict.keys.contains("ResourceRouteName") {
            self.resourceRouteName = dict["ResourceRouteName"] as! String
        }
    }
}

public class DescribeCloudResourcesResponseBody : Tea.TeaModel {
    public class CloudResources : Tea.TeaModel {
        public var ownerUserId: String?

        public var resourceDomain: String?

        public var resourceFunction: String?

        public var resourceInstance: String?

        public var resourceName: String?

        public var resourceProduct: String?

        public var resourceRegionId: String?

        public var resourceRouteName: String?

        public var resourceService: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ownerUserId != nil {
                map["OwnerUserId"] = self.ownerUserId!
            }
            if self.resourceDomain != nil {
                map["ResourceDomain"] = self.resourceDomain!
            }
            if self.resourceFunction != nil {
                map["ResourceFunction"] = self.resourceFunction!
            }
            if self.resourceInstance != nil {
                map["ResourceInstance"] = self.resourceInstance!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceProduct != nil {
                map["ResourceProduct"] = self.resourceProduct!
            }
            if self.resourceRegionId != nil {
                map["ResourceRegionId"] = self.resourceRegionId!
            }
            if self.resourceRouteName != nil {
                map["ResourceRouteName"] = self.resourceRouteName!
            }
            if self.resourceService != nil {
                map["ResourceService"] = self.resourceService!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OwnerUserId") {
                self.ownerUserId = dict["OwnerUserId"] as! String
            }
            if dict.keys.contains("ResourceDomain") {
                self.resourceDomain = dict["ResourceDomain"] as! String
            }
            if dict.keys.contains("ResourceFunction") {
                self.resourceFunction = dict["ResourceFunction"] as! String
            }
            if dict.keys.contains("ResourceInstance") {
                self.resourceInstance = dict["ResourceInstance"] as! String
            }
            if dict.keys.contains("ResourceName") {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("ResourceProduct") {
                self.resourceProduct = dict["ResourceProduct"] as! String
            }
            if dict.keys.contains("ResourceRegionId") {
                self.resourceRegionId = dict["ResourceRegionId"] as! String
            }
            if dict.keys.contains("ResourceRouteName") {
                self.resourceRouteName = dict["ResourceRouteName"] as! String
            }
            if dict.keys.contains("ResourceService") {
                self.resourceService = dict["ResourceService"] as! String
            }
        }
    }
    public var cloudResources: [DescribeCloudResourcesResponseBody.CloudResources]?

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
        if self.cloudResources != nil {
            var tmp : [Any] = []
            for k in self.cloudResources! {
                tmp.append(k.toMap())
            }
            map["CloudResources"] = tmp
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
        if dict.keys.contains("CloudResources") {
            var tmp : [DescribeCloudResourcesResponseBody.CloudResources] = []
            for v in dict["CloudResources"] as! [Any] {
                var model = DescribeCloudResourcesResponseBody.CloudResources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.cloudResources = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeCloudResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCloudResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeCloudResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDefenseResourceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var resource: String?

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
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
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
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeDefenseResourceResponseBody : Tea.TeaModel {
    public class Resource : Tea.TeaModel {
        public var acwCookieStatus: Int32?

        public var acwSecureStatus: Int32?

        public var acwV3SecureStatus: Int32?

        public var customHeaders: [String]?

        public var description_: String?

        public var detail: [String: Any]?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var ownerUserId: String?

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
            if self.ownerUserId != nil {
                map["OwnerUserId"] = self.ownerUserId!
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
            if dict.keys.contains("AcwCookieStatus") {
                self.acwCookieStatus = dict["AcwCookieStatus"] as! Int32
            }
            if dict.keys.contains("AcwSecureStatus") {
                self.acwSecureStatus = dict["AcwSecureStatus"] as! Int32
            }
            if dict.keys.contains("AcwV3SecureStatus") {
                self.acwV3SecureStatus = dict["AcwV3SecureStatus"] as! Int32
            }
            if dict.keys.contains("CustomHeaders") {
                self.customHeaders = dict["CustomHeaders"] as! [String]
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Detail") {
                self.detail = dict["Detail"] as! [String: Any]
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("OwnerUserId") {
                self.ownerUserId = dict["OwnerUserId"] as! String
            }
            if dict.keys.contains("Pattern") {
                self.pattern = dict["Pattern"] as! String
            }
            if dict.keys.contains("Product") {
                self.product = dict["Product"] as! String
            }
            if dict.keys.contains("Resource") {
                self.resource = dict["Resource"] as! String
            }
            if dict.keys.contains("ResourceGroup") {
                self.resourceGroup = dict["ResourceGroup"] as! String
            }
            if dict.keys.contains("ResourceManagerResourceGroupId") {
                self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
            }
            if dict.keys.contains("ResourceOrigin") {
                self.resourceOrigin = dict["ResourceOrigin"] as! String
            }
            if dict.keys.contains("XffStatus") {
                self.xffStatus = dict["XffStatus"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var resource: DescribeDefenseResourceResponseBody.Resource?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resource != nil {
            map["Resource"] = self.resource?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resource") {
            var model = DescribeDefenseResourceResponseBody.Resource()
            model.fromMap(dict["Resource"] as! [String: Any])
            self.resource = model
        }
    }
}

public class DescribeDefenseResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDefenseResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDefenseResourceResponseBody()
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
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
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
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("ResourceList") {
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
        if dict.keys.contains("Group") {
            var model = DescribeDefenseResourceGroupResponseBody.Group()
            model.fromMap(dict["Group"] as! [String: Any])
            self.group = model
        }
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDefenseResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDefenseResourceGroupNamesRequest : Tea.TeaModel {
    public var groupNameLike: String?

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
        if self.groupNameLike != nil {
            map["GroupNameLike"] = self.groupNameLike!
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
        if dict.keys.contains("GroupNameLike") {
            self.groupNameLike = dict["GroupNameLike"] as! String
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
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeDefenseResourceGroupNamesResponseBody : Tea.TeaModel {
    public var groupNames: [String]?

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
        if self.groupNames != nil {
            map["GroupNames"] = self.groupNames!
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
        if dict.keys.contains("GroupNames") {
            self.groupNames = dict["GroupNames"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDefenseResourceGroupNamesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDefenseResourceGroupNamesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDefenseResourceGroupNamesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDefenseResourceGroupsRequest : Tea.TeaModel {
    public var groupNameLike: String?

    public var groupNames: String?

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
        if self.groupNameLike != nil {
            map["GroupNameLike"] = self.groupNameLike!
        }
        if self.groupNames != nil {
            map["GroupNames"] = self.groupNames!
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
        if dict.keys.contains("GroupNameLike") {
            self.groupNameLike = dict["GroupNameLike"] as! String
        }
        if dict.keys.contains("GroupNames") {
            self.groupNames = dict["GroupNames"] as! String
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
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeDefenseResourceGroupsResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
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
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("ResourceList") {
                self.resourceList = dict["ResourceList"] as! String
            }
        }
    }
    public var groups: [DescribeDefenseResourceGroupsResponseBody.Groups]?

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
        if dict.keys.contains("Groups") {
            var tmp : [DescribeDefenseResourceGroupsResponseBody.Groups] = []
            for v in dict["Groups"] as! [Any] {
                var model = DescribeDefenseResourceGroupsResponseBody.Groups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.groups = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDefenseResourceGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDefenseResourceGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDefenseResourceGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDefenseResourceNamesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resource: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
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
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeDefenseResourceNamesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resources: [String]?

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
            map["Resources"] = self.resources!
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
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! [String]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDefenseResourceNamesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDefenseResourceNamesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDefenseResourceNamesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDefenseResourceTemplatesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var resource: String?

    public var resourceManagerResourceGroupId: String?

    public var resourceType: String?

    public var ruleId: Int64?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
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
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("RuleType") {
            self.ruleType = dict["RuleType"] as! String
        }
    }
}

public class DescribeDefenseResourceTemplatesResponseBody : Tea.TeaModel {
    public class Templates : Tea.TeaModel {
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
            if dict.keys.contains("DefenseScene") {
                self.defenseScene = dict["DefenseScene"] as! String
            }
            if dict.keys.contains("DefenseSubScene") {
                self.defenseSubScene = dict["DefenseSubScene"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! Int64
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateOrigin") {
                self.templateOrigin = dict["TemplateOrigin"] as! String
            }
            if dict.keys.contains("TemplateStatus") {
                self.templateStatus = dict["TemplateStatus"] as! Int32
            }
            if dict.keys.contains("TemplateType") {
                self.templateType = dict["TemplateType"] as! String
            }
        }
    }
    public var requestId: String?

    public var templates: [DescribeDefenseResourceTemplatesResponseBody.Templates]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templates != nil {
            var tmp : [Any] = []
            for k in self.templates! {
                tmp.append(k.toMap())
            }
            map["Templates"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Templates") {
            var tmp : [DescribeDefenseResourceTemplatesResponseBody.Templates] = []
            for v in dict["Templates"] as! [Any] {
                var model = DescribeDefenseResourceTemplatesResponseBody.Templates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.templates = tmp
        }
    }
}

public class DescribeDefenseResourceTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDefenseResourceTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDefenseResourceTemplatesResponseBody()
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") {
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

        public var ownerUserId: String?

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
            if self.ownerUserId != nil {
                map["OwnerUserId"] = self.ownerUserId!
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
            if dict.keys.contains("AcwCookieStatus") {
                self.acwCookieStatus = dict["AcwCookieStatus"] as! Int32
            }
            if dict.keys.contains("AcwSecureStatus") {
                self.acwSecureStatus = dict["AcwSecureStatus"] as! Int32
            }
            if dict.keys.contains("AcwV3SecureStatus") {
                self.acwV3SecureStatus = dict["AcwV3SecureStatus"] as! Int32
            }
            if dict.keys.contains("CustomHeaders") {
                self.customHeaders = dict["CustomHeaders"] as! [String]
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Detail") {
                self.detail = dict["Detail"] as! [String: Any]
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("OwnerUserId") {
                self.ownerUserId = dict["OwnerUserId"] as! String
            }
            if dict.keys.contains("Pattern") {
                self.pattern = dict["Pattern"] as! String
            }
            if dict.keys.contains("Product") {
                self.product = dict["Product"] as! String
            }
            if dict.keys.contains("Resource") {
                self.resource = dict["Resource"] as! String
            }
            if dict.keys.contains("ResourceGroup") {
                self.resourceGroup = dict["ResourceGroup"] as! String
            }
            if dict.keys.contains("ResourceManagerResourceGroupId") {
                self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
            }
            if dict.keys.contains("ResourceOrigin") {
                self.resourceOrigin = dict["ResourceOrigin"] as! String
            }
            if dict.keys.contains("XffStatus") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") {
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
        if dict.keys.contains("TotalCount") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
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
            if dict.keys.contains("Config") {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("DefenseOrigin") {
                self.defenseOrigin = dict["DefenseOrigin"] as! String
            }
            if dict.keys.contains("DefenseScene") {
                self.defenseScene = dict["DefenseScene"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! Int64
            }
            if dict.keys.contains("RuleName") {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("TemplateId") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Rule") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleType") {
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
            if dict.keys.contains("Config") {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("DefenseOrigin") {
                self.defenseOrigin = dict["DefenseOrigin"] as! String
            }
            if dict.keys.contains("DefenseScene") {
                self.defenseScene = dict["DefenseScene"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! Int64
            }
            if dict.keys.contains("RuleName") {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("TemplateId") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Rules") {
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
        if dict.keys.contains("TotalCount") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("TemplateId") {
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
            if dict.keys.contains("DefenseScene") {
                self.defenseScene = dict["DefenseScene"] as! String
            }
            if dict.keys.contains("DefenseSubScene") {
                self.defenseSubScene = dict["DefenseSubScene"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! Int64
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateOrigin") {
                self.templateOrigin = dict["TemplateOrigin"] as! String
            }
            if dict.keys.contains("TemplateStatus") {
                self.templateStatus = dict["TemplateStatus"] as! Int32
            }
            if dict.keys.contains("TemplateType") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Template") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDefenseTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDefenseTemplateValidGroupsRequest : Tea.TeaModel {
    public var defenseScene: String?

    public var groupName: String?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.defenseScene != nil {
            map["DefenseScene"] = self.defenseScene!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefenseScene") {
            self.defenseScene = dict["DefenseScene"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
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
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class DescribeDefenseTemplateValidGroupsResponseBody : Tea.TeaModel {
    public var groups: [String]?

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
        if self.groups != nil {
            map["Groups"] = self.groups!
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
        if dict.keys.contains("Groups") {
            self.groups = dict["Groups"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDefenseTemplateValidGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDefenseTemplateValidGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDefenseTemplateValidGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDefenseTemplatesRequest : Tea.TeaModel {
    public var defenseScene: String?

    public var defenseSubScene: String?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resource: String?

    public var resourceManagerResourceGroupId: String?

    public var resourceType: String?

    public var templateId: Int64?

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
        if self.resource != nil {
            map["Resource"] = self.resource!
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
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefenseScene") {
            self.defenseScene = dict["DefenseScene"] as! String
        }
        if dict.keys.contains("DefenseSubScene") {
            self.defenseSubScene = dict["DefenseSubScene"] as! String
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
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
        }
        if dict.keys.contains("TemplateType") {
            self.templateType = dict["TemplateType"] as! String
        }
    }
}

public class DescribeDefenseTemplatesResponseBody : Tea.TeaModel {
    public class Templates : Tea.TeaModel {
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
            if dict.keys.contains("DefenseScene") {
                self.defenseScene = dict["DefenseScene"] as! String
            }
            if dict.keys.contains("DefenseSubScene") {
                self.defenseSubScene = dict["DefenseSubScene"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! Int64
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("TemplateOrigin") {
                self.templateOrigin = dict["TemplateOrigin"] as! String
            }
            if dict.keys.contains("TemplateStatus") {
                self.templateStatus = dict["TemplateStatus"] as! Int32
            }
            if dict.keys.contains("TemplateType") {
                self.templateType = dict["TemplateType"] as! String
            }
        }
    }
    public var requestId: String?

    public var templates: [DescribeDefenseTemplatesResponseBody.Templates]?

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
        if self.templates != nil {
            var tmp : [Any] = []
            for k in self.templates! {
                tmp.append(k.toMap())
            }
            map["Templates"] = tmp
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
        if dict.keys.contains("Templates") {
            var tmp : [DescribeDefenseTemplatesResponseBody.Templates] = []
            for v in dict["Templates"] as! [Any] {
                var model = DescribeDefenseTemplatesResponseBody.Templates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.templates = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeDefenseTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDefenseTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDefenseTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainDNSRecordRequest : Tea.TeaModel {
    public var domain: String?

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
        if self.domain != nil {
            map["Domain"] = self.domain!
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
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeDomainDNSRecordResponseBody : Tea.TeaModel {
    public var DNSStatus: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DNSStatus != nil {
            map["DNSStatus"] = self.DNSStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DNSStatus") {
            self.DNSStatus = dict["DNSStatus"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDomainDNSRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainDNSRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDomainDNSRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainDetailRequest : Tea.TeaModel {
    public var domain: String?

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
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
            if dict.keys.contains("CommonName") {
                self.commonName = dict["CommonName"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Sans") {
                self.sans = dict["Sans"] as! [String]
            }
            if dict.keys.contains("StartTime") {
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

        public var SM2CertId: String?

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
            if dict.keys.contains("CertId") {
                self.certId = dict["CertId"] as! Int64
            }
            if dict.keys.contains("CipherSuite") {
                self.cipherSuite = dict["CipherSuite"] as! Int64
            }
            if dict.keys.contains("CustomCiphers") {
                self.customCiphers = dict["CustomCiphers"] as! [String]
            }
            if dict.keys.contains("EnableTLSv3") {
                self.enableTLSv3 = dict["EnableTLSv3"] as! Bool
            }
            if dict.keys.contains("ExclusiveIp") {
                self.exclusiveIp = dict["ExclusiveIp"] as! Bool
            }
            if dict.keys.contains("FocusHttps") {
                self.focusHttps = dict["FocusHttps"] as! Bool
            }
            if dict.keys.contains("Http2Enabled") {
                self.http2Enabled = dict["Http2Enabled"] as! Bool
            }
            if dict.keys.contains("HttpPorts") {
                self.httpPorts = dict["HttpPorts"] as! [Int64]
            }
            if dict.keys.contains("HttpsPorts") {
                self.httpsPorts = dict["HttpsPorts"] as! [Int64]
            }
            if dict.keys.contains("IPv6Enabled") {
                self.IPv6Enabled = dict["IPv6Enabled"] as! Bool
            }
            if dict.keys.contains("ProtectionResource") {
                self.protectionResource = dict["ProtectionResource"] as! String
            }
            if dict.keys.contains("SM2AccessOnly") {
                self.SM2AccessOnly = dict["SM2AccessOnly"] as! Bool
            }
            if dict.keys.contains("SM2CertId") {
                self.SM2CertId = dict["SM2CertId"] as! String
            }
            if dict.keys.contains("SM2Enabled") {
                self.SM2Enabled = dict["SM2Enabled"] as! Bool
            }
            if dict.keys.contains("TLSVersion") {
                self.TLSVersion = dict["TLSVersion"] as! String
            }
            if dict.keys.contains("XffHeaderMode") {
                self.xffHeaderMode = dict["XffHeaderMode"] as! Int64
            }
            if dict.keys.contains("XffHeaders") {
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
                if dict.keys.contains("Backend") {
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
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
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

        public var xffProto: Bool?

        public override init() {
            super.init()
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
            if self.xffProto != nil {
                map["XffProto"] = self.xffProto!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Backends") {
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
            if dict.keys.contains("ConnectTimeout") {
                self.connectTimeout = dict["ConnectTimeout"] as! Int32
            }
            if dict.keys.contains("FocusHttpBackend") {
                self.focusHttpBackend = dict["FocusHttpBackend"] as! Bool
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
            if dict.keys.contains("Loadbalance") {
                self.loadbalance = dict["Loadbalance"] as! String
            }
            if dict.keys.contains("ReadTimeout") {
                self.readTimeout = dict["ReadTimeout"] as! Int32
            }
            if dict.keys.contains("RequestHeaders") {
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
            if dict.keys.contains("Retry") {
                self.retry = dict["Retry"] as! Bool
            }
            if dict.keys.contains("SniEnabled") {
                self.sniEnabled = dict["SniEnabled"] as! Bool
            }
            if dict.keys.contains("SniHost") {
                self.sniHost = dict["SniHost"] as! String
            }
            if dict.keys.contains("WriteTimeout") {
                self.writeTimeout = dict["WriteTimeout"] as! Int32
            }
            if dict.keys.contains("XffProto") {
                self.xffProto = dict["XffProto"] as! Bool
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
            if dict.keys.contains("CommonName") {
                self.commonName = dict["CommonName"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Sans") {
                self.sans = dict["Sans"] as! [String]
            }
            if dict.keys.contains("StartTime") {
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
        if dict.keys.contains("CertDetail") {
            var model = DescribeDomainDetailResponseBody.CertDetail()
            model.fromMap(dict["CertDetail"] as! [String: Any])
            self.certDetail = model
        }
        if dict.keys.contains("Cname") {
            self.cname = dict["Cname"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Listen") {
            var model = DescribeDomainDetailResponseBody.Listen()
            model.fromMap(dict["Listen"] as! [String: Any])
            self.listen = model
        }
        if dict.keys.contains("Redirect") {
            var model = DescribeDomainDetailResponseBody.Redirect()
            model.fromMap(dict["Redirect"] as! [String: Any])
            self.redirect = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("SM2CertDetail") {
            var model = DescribeDomainDetailResponseBody.SM2CertDetail()
            model.fromMap(dict["SM2CertDetail"] as! [String: Any])
            self.SM2CertDetail = model
        }
        if dict.keys.contains("Status") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
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
        if dict.keys.contains("Backend") {
            self.backend = dict["Backend"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") {
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
                    if dict.keys.contains("Backend") {
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
                    if dict.keys.contains("Backend") {
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
                if dict.keys.contains("Http") {
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
                if dict.keys.contains("Https") {
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
                if dict.keys.contains("Http") {
                    self.http = dict["Http"] as! [Int64]
                }
                if dict.keys.contains("Https") {
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
            if dict.keys.contains("Backeds") {
                var model = DescribeDomainsResponseBody.Domains.Backeds()
                model.fromMap(dict["Backeds"] as! [String: Any])
                self.backeds = model
            }
            if dict.keys.contains("Cname") {
                self.cname = dict["Cname"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("ListenPorts") {
                var model = DescribeDomainsResponseBody.Domains.ListenPorts()
                model.fromMap(dict["ListenPorts"] as! [String: Any])
                self.listenPorts = model
            }
            if dict.keys.contains("ResourceManagerResourceGroupId") {
                self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
            }
            if dict.keys.contains("Status") {
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
        if dict.keys.contains("Domains") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("EndTimestamp") {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTimestamp") {
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
            if dict.keys.contains("AclCustomBlockSum") {
                self.aclCustomBlockSum = dict["AclCustomBlockSum"] as! Int64
            }
            if dict.keys.contains("AclCustomReportsSum") {
                self.aclCustomReportsSum = dict["AclCustomReportsSum"] as! Int64
            }
            if dict.keys.contains("AntiScanBlockSum") {
                self.antiScanBlockSum = dict["AntiScanBlockSum"] as! Int64
            }
            if dict.keys.contains("AntibotBlockSum") {
                self.antibotBlockSum = dict["AntibotBlockSum"] as! Int64
            }
            if dict.keys.contains("AntibotReportSum") {
                self.antibotReportSum = dict["AntibotReportSum"] as! String
            }
            if dict.keys.contains("AntiscanReportsSum") {
                self.antiscanReportsSum = dict["AntiscanReportsSum"] as! Int64
            }
            if dict.keys.contains("BlacklistBlockSum") {
                self.blacklistBlockSum = dict["BlacklistBlockSum"] as! String
            }
            if dict.keys.contains("BlacklistReportsSum") {
                self.blacklistReportsSum = dict["BlacklistReportsSum"] as! Int64
            }
            if dict.keys.contains("CcCustomBlockSum") {
                self.ccCustomBlockSum = dict["CcCustomBlockSum"] as! Int64
            }
            if dict.keys.contains("CcCustomReportsSum") {
                self.ccCustomReportsSum = dict["CcCustomReportsSum"] as! Int64
            }
            if dict.keys.contains("CcSystemBlocksSum") {
                self.ccSystemBlocksSum = dict["CcSystemBlocksSum"] as! Int64
            }
            if dict.keys.contains("CcSystemReportsSum") {
                self.ccSystemReportsSum = dict["CcSystemReportsSum"] as! Int64
            }
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("InBytes") {
                self.inBytes = dict["InBytes"] as! Int64
            }
            if dict.keys.contains("Index") {
                self.index = dict["Index"] as! Int64
            }
            if dict.keys.contains("MaxPv") {
                self.maxPv = dict["MaxPv"] as! Int64
            }
            if dict.keys.contains("OutBytes") {
                self.outBytes = dict["OutBytes"] as! Int64
            }
            if dict.keys.contains("RatelimitBlockSum") {
                self.ratelimitBlockSum = dict["RatelimitBlockSum"] as! Int64
            }
            if dict.keys.contains("RatelimitReportSum") {
                self.ratelimitReportSum = dict["RatelimitReportSum"] as! Int64
            }
            if dict.keys.contains("RegionBlockBlocksSum") {
                self.regionBlockBlocksSum = dict["RegionBlockBlocksSum"] as! Int64
            }
            if dict.keys.contains("RegionBlockReportsSum") {
                self.regionBlockReportsSum = dict["RegionBlockReportsSum"] as! Int64
            }
            if dict.keys.contains("RobotCount") {
                self.robotCount = dict["RobotCount"] as! Int64
            }
            if dict.keys.contains("WafBlockSum") {
                self.wafBlockSum = dict["WafBlockSum"] as! Int64
            }
            if dict.keys.contains("WafReportSum") {
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
        if dict.keys.contains("FlowChart") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("EndTimestamp") {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTimestamp") {
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
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("Resource") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleHitsTopResource") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("EndTimestamp") {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTimestamp") {
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
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("Url") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleHitsTopUrl") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! Int64
        }
        if dict.keys.contains("ClusterProxyType") {
            self.clusterProxyType = dict["ClusterProxyType"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! Int32
        }
        if dict.keys.contains("GroupType") {
            self.groupType = dict["GroupType"] as! String
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
        if dict.keys.contains("ResourceManagerResourceGroupId") {
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
            if dict.keys.contains("BackSourceMark") {
                self.backSourceMark = dict["BackSourceMark"] as! String
            }
            if dict.keys.contains("ContinentsValue") {
                self.continentsValue = dict["ContinentsValue"] as! Int32
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! Int32
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("GroupType") {
                self.groupType = dict["GroupType"] as! String
            }
            if dict.keys.contains("LoadBalanceIp") {
                self.loadBalanceIp = dict["LoadBalanceIp"] as! String
            }
            if dict.keys.contains("LocationId") {
                self.locationId = dict["LocationId"] as! Int64
            }
            if dict.keys.contains("OperatorValue") {
                self.operatorValue = dict["OperatorValue"] as! Int32
            }
            if dict.keys.contains("Ports") {
                self.ports = dict["Ports"] as! String
            }
            if dict.keys.contains("RegionCodeValue") {
                self.regionCodeValue = dict["RegionCodeValue"] as! Int32
            }
            if dict.keys.contains("Remark") {
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
        if dict.keys.contains("Groups") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Backend") {
            self.backend = dict["Backend"] as! String
        }
        if dict.keys.contains("CnameEnabled") {
            self.cnameEnabled = dict["CnameEnabled"] as! Bool
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
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

            public var IPv6Enabled: Bool?

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
                if self.IPv6Enabled != nil {
                    map["IPv6Enabled"] = self.IPv6Enabled!
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
                if dict.keys.contains("CertId") {
                    self.certId = dict["CertId"] as! String
                }
                if dict.keys.contains("CipherSuite") {
                    self.cipherSuite = dict["CipherSuite"] as! Int32
                }
                if dict.keys.contains("CustomCiphers") {
                    self.customCiphers = dict["CustomCiphers"] as! [String]
                }
                if dict.keys.contains("EnableTLSv3") {
                    self.enableTLSv3 = dict["EnableTLSv3"] as! Bool
                }
                if dict.keys.contains("ExclusiveIp") {
                    self.exclusiveIp = dict["ExclusiveIp"] as! Bool
                }
                if dict.keys.contains("FocusHttps") {
                    self.focusHttps = dict["FocusHttps"] as! Bool
                }
                if dict.keys.contains("Http2Enabled") {
                    self.http2Enabled = dict["Http2Enabled"] as! Bool
                }
                if dict.keys.contains("HttpPorts") {
                    self.httpPorts = dict["HttpPorts"] as! [Int64]
                }
                if dict.keys.contains("HttpsPorts") {
                    self.httpsPorts = dict["HttpsPorts"] as! [Int64]
                }
                if dict.keys.contains("IPv6Enabled") {
                    self.IPv6Enabled = dict["IPv6Enabled"] as! Bool
                }
                if dict.keys.contains("ProtectionResource") {
                    self.protectionResource = dict["ProtectionResource"] as! String
                }
                if dict.keys.contains("TLSVersion") {
                    self.TLSVersion = dict["TLSVersion"] as! String
                }
                if dict.keys.contains("XffHeaderMode") {
                    self.xffHeaderMode = dict["XffHeaderMode"] as! Int32
                }
                if dict.keys.contains("XffHeaders") {
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
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Value") {
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
                if dict.keys.contains("Backends") {
                    self.backends = dict["Backends"] as! [String]
                }
                if dict.keys.contains("CnameEnabled") {
                    self.cnameEnabled = dict["CnameEnabled"] as! Bool
                }
                if dict.keys.contains("ConnectTimeout") {
                    self.connectTimeout = dict["ConnectTimeout"] as! Int64
                }
                if dict.keys.contains("FocusHttpBackend") {
                    self.focusHttpBackend = dict["FocusHttpBackend"] as! Bool
                }
                if dict.keys.contains("Keepalive") {
                    self.keepalive = dict["Keepalive"] as! Bool
                }
                if dict.keys.contains("KeepaliveRequests") {
                    self.keepaliveRequests = dict["KeepaliveRequests"] as! Int64
                }
                if dict.keys.contains("KeepaliveTimeout") {
                    self.keepaliveTimeout = dict["KeepaliveTimeout"] as! Int64
                }
                if dict.keys.contains("Loadbalance") {
                    self.loadbalance = dict["Loadbalance"] as! String
                }
                if dict.keys.contains("ReadTimeout") {
                    self.readTimeout = dict["ReadTimeout"] as! Int64
                }
                if dict.keys.contains("RequestHeaders") {
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
                if dict.keys.contains("Retry") {
                    self.retry = dict["Retry"] as! Bool
                }
                if dict.keys.contains("RoutingRules") {
                    self.routingRules = dict["RoutingRules"] as! String
                }
                if dict.keys.contains("SniEnabled") {
                    self.sniEnabled = dict["SniEnabled"] as! Bool
                }
                if dict.keys.contains("SniHost") {
                    self.sniHost = dict["SniHost"] as! String
                }
                if dict.keys.contains("WriteTimeout") {
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
            if dict.keys.contains("Cname") {
                self.cname = dict["Cname"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Listen") {
                var model = DescribeHybridCloudResourcesResponseBody.Domains.Listen()
                model.fromMap(dict["Listen"] as! [String: Any])
                self.listen = model
            }
            if dict.keys.contains("Redirect") {
                var model = DescribeHybridCloudResourcesResponseBody.Domains.Redirect()
                model.fromMap(dict["Redirect"] as! [String: Any])
                self.redirect = model
            }
            if dict.keys.contains("ResourceManagerResourceGroupId") {
                self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Uid") {
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
        if dict.keys.contains("Domains") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
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
            if dict.keys.contains("HttpPorts") {
                self.httpPorts = dict["HttpPorts"] as! String
            }
            if dict.keys.contains("HttpsPorts") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserInfo") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
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
            if dict.keys.contains("AclRuleMaxIpCount") {
                self.aclRuleMaxIpCount = dict["AclRuleMaxIpCount"] as! Int64
            }
            if dict.keys.contains("AntiScan") {
                self.antiScan = dict["AntiScan"] as! Bool
            }
            if dict.keys.contains("AntiScanTemplateMaxCount") {
                self.antiScanTemplateMaxCount = dict["AntiScanTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("BackendMaxCount") {
                self.backendMaxCount = dict["BackendMaxCount"] as! Int64
            }
            if dict.keys.contains("BaseWafGroup") {
                self.baseWafGroup = dict["BaseWafGroup"] as! Bool
            }
            if dict.keys.contains("BaseWafGroupRuleInTemplateMaxCount") {
                self.baseWafGroupRuleInTemplateMaxCount = dict["BaseWafGroupRuleInTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("BaseWafGroupRuleTemplateMaxCount") {
                self.baseWafGroupRuleTemplateMaxCount = dict["BaseWafGroupRuleTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("Bot") {
                self.bot = dict["Bot"] as! Bool
            }
            if dict.keys.contains("BotApp") {
                self.botApp = dict["BotApp"] as! String
            }
            if dict.keys.contains("BotTemplateMaxCount") {
                self.botTemplateMaxCount = dict["BotTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("BotWeb") {
                self.botWeb = dict["BotWeb"] as! String
            }
            if dict.keys.contains("CnameResourceMaxCount") {
                self.cnameResourceMaxCount = dict["CnameResourceMaxCount"] as! Int64
            }
            if dict.keys.contains("CustomResponse") {
                self.customResponse = dict["CustomResponse"] as! Bool
            }
            if dict.keys.contains("CustomResponseRuleInTemplateMaxCount") {
                self.customResponseRuleInTemplateMaxCount = dict["CustomResponseRuleInTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("CustomResponseTemplateMaxCount") {
                self.customResponseTemplateMaxCount = dict["CustomResponseTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("CustomRule") {
                self.customRule = dict["CustomRule"] as! Bool
            }
            if dict.keys.contains("CustomRuleAction") {
                self.customRuleAction = dict["CustomRuleAction"] as! String
            }
            if dict.keys.contains("CustomRuleCondition") {
                self.customRuleCondition = dict["CustomRuleCondition"] as! String
            }
            if dict.keys.contains("CustomRuleInTemplateMaxCount") {
                self.customRuleInTemplateMaxCount = dict["CustomRuleInTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("CustomRuleRatelimitor") {
                self.customRuleRatelimitor = dict["CustomRuleRatelimitor"] as! String
            }
            if dict.keys.contains("CustomRuleTemplateMaxCount") {
                self.customRuleTemplateMaxCount = dict["CustomRuleTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("DefenseGroupMaxCount") {
                self.defenseGroupMaxCount = dict["DefenseGroupMaxCount"] as! Int64
            }
            if dict.keys.contains("DefenseObjectInGroupMaxCount") {
                self.defenseObjectInGroupMaxCount = dict["DefenseObjectInGroupMaxCount"] as! Int64
            }
            if dict.keys.contains("DefenseObjectInTemplateMaxCount") {
                self.defenseObjectInTemplateMaxCount = dict["DefenseObjectInTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("DefenseObjectMaxCount") {
                self.defenseObjectMaxCount = dict["DefenseObjectMaxCount"] as! Int64
            }
            if dict.keys.contains("Dlp") {
                self.dlp = dict["Dlp"] as! Bool
            }
            if dict.keys.contains("DlpRuleInTemplateMaxCount") {
                self.dlpRuleInTemplateMaxCount = dict["DlpRuleInTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("DlpTemplateMaxCount") {
                self.dlpTemplateMaxCount = dict["DlpTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("ExclusiveIp") {
                self.exclusiveIp = dict["ExclusiveIp"] as! Bool
            }
            if dict.keys.contains("Gslb") {
                self.gslb = dict["Gslb"] as! Bool
            }
            if dict.keys.contains("HttpPorts") {
                self.httpPorts = dict["HttpPorts"] as! String
            }
            if dict.keys.contains("HttpsPorts") {
                self.httpsPorts = dict["HttpsPorts"] as! String
            }
            if dict.keys.contains("IpBlacklist") {
                self.ipBlacklist = dict["IpBlacklist"] as! Bool
            }
            if dict.keys.contains("IpBlacklistIpInRuleMaxCount") {
                self.ipBlacklistIpInRuleMaxCount = dict["IpBlacklistIpInRuleMaxCount"] as! Int64
            }
            if dict.keys.contains("IpBlacklistRuleInTemplateMaxCount") {
                self.ipBlacklistRuleInTemplateMaxCount = dict["IpBlacklistRuleInTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("IpBlacklistTemplateMaxCount") {
                self.ipBlacklistTemplateMaxCount = dict["IpBlacklistTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("Ipv6") {
                self.ipv6 = dict["Ipv6"] as! Bool
            }
            if dict.keys.contains("LogService") {
                self.logService = dict["LogService"] as! Bool
            }
            if dict.keys.contains("MajorProtection") {
                self.majorProtection = dict["MajorProtection"] as! Bool
            }
            if dict.keys.contains("MajorProtectionTemplateMaxCount") {
                self.majorProtectionTemplateMaxCount = dict["MajorProtectionTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("Tamperproof") {
                self.tamperproof = dict["Tamperproof"] as! Bool
            }
            if dict.keys.contains("TamperproofRuleInTemplateMaxCount") {
                self.tamperproofRuleInTemplateMaxCount = dict["TamperproofRuleInTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("TamperproofTemplateMaxCount") {
                self.tamperproofTemplateMaxCount = dict["TamperproofTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("VastIpBlacklistInFileMaxCount") {
                self.vastIpBlacklistInFileMaxCount = dict["VastIpBlacklistInFileMaxCount"] as! Int64
            }
            if dict.keys.contains("VastIpBlacklistInOperationMaxCount") {
                self.vastIpBlacklistInOperationMaxCount = dict["VastIpBlacklistInOperationMaxCount"] as! Int64
            }
            if dict.keys.contains("VastIpBlacklistMaxCount") {
                self.vastIpBlacklistMaxCount = dict["VastIpBlacklistMaxCount"] as! Int64
            }
            if dict.keys.contains("Whitelist") {
                self.whitelist = dict["Whitelist"] as! Bool
            }
            if dict.keys.contains("WhitelistLogical") {
                self.whitelistLogical = dict["WhitelistLogical"] as! String
            }
            if dict.keys.contains("WhitelistRuleCondition") {
                self.whitelistRuleCondition = dict["WhitelistRuleCondition"] as! String
            }
            if dict.keys.contains("WhitelistRuleInTemplateMaxCount") {
                self.whitelistRuleInTemplateMaxCount = dict["WhitelistRuleInTemplateMaxCount"] as! Int64
            }
            if dict.keys.contains("WhitelistTemplateMaxCount") {
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
        if dict.keys.contains("Details") {
            var model = DescribeInstanceResponseBody.Details()
            model.fromMap(dict["Details"] as! [String: Any])
            self.details = model
        }
        if dict.keys.contains("Edition") {
            self.edition = dict["Edition"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InDebt") {
            self.inDebt = dict["InDebt"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Status") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IpLike") {
            self.ipLike = dict["IpLike"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
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
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
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
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("RuleId") {
                self.ruleId = dict["RuleId"] as! Int64
            }
            if dict.keys.contains("TemplateId") {
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
        if dict.keys.contains("IpList") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeMajorProtectionBlackIpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMemberAccountsRequest : Tea.TeaModel {
    public var accountStatus: String?

    public var instanceId: String?

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
        if self.accountStatus != nil {
            map["AccountStatus"] = self.accountStatus!
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
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountStatus") {
            self.accountStatus = dict["AccountStatus"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceIp") {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DescribeMemberAccountsResponseBody : Tea.TeaModel {
    public class AccountInfos : Tea.TeaModel {
        public var accountId: String?

        public var accountName: String?

        public var accountStatus: String?

        public var description_: String?

        public var gmtCreate: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.accountStatus != nil {
                map["AccountStatus"] = self.accountStatus!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("AccountStatus") {
                self.accountStatus = dict["AccountStatus"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
        }
    }
    public var accountInfos: [DescribeMemberAccountsResponseBody.AccountInfos]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountInfos != nil {
            var tmp : [Any] = []
            for k in self.accountInfos! {
                tmp.append(k.toMap())
            }
            map["AccountInfos"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountInfos") {
            var tmp : [DescribeMemberAccountsResponseBody.AccountInfos] = []
            for v in dict["AccountInfos"] as! [Any] {
                var model = DescribeMemberAccountsResponseBody.AccountInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.accountInfos = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeMemberAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMemberAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeMemberAccountsResponseBody()
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
        if dict.keys.contains("EndTimestamp") {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTimestamp") {
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
            if dict.keys.contains("AclSum") {
                self.aclSum = dict["AclSum"] as! Int64
            }
            if dict.keys.contains("AntiScanSum") {
                self.antiScanSum = dict["AntiScanSum"] as! Int64
            }
            if dict.keys.contains("CcSum") {
                self.ccSum = dict["CcSum"] as! Int64
            }
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("Index") {
                self.index = dict["Index"] as! Int64
            }
            if dict.keys.contains("WafSum") {
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
        if dict.keys.contains("FlowChart") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePeakTrendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeProductInstancesRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerUserId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public var resourceInstanceId: String?

    public var resourceIp: String?

    public var resourceManagerResourceGroupId: String?

    public var resourceName: String?

    public var resourceProduct: String?

    public var resourceRegionId: String?

    public override init() {
        super.init()
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
        if self.ownerUserId != nil {
            map["OwnerUserId"] = self.ownerUserId!
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
        if self.resourceInstanceId != nil {
            map["ResourceInstanceId"] = self.resourceInstanceId!
        }
        if self.resourceIp != nil {
            map["ResourceIp"] = self.resourceIp!
        }
        if self.resourceManagerResourceGroupId != nil {
            map["ResourceManagerResourceGroupId"] = self.resourceManagerResourceGroupId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceProduct != nil {
            map["ResourceProduct"] = self.resourceProduct!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OwnerUserId") {
            self.ownerUserId = dict["OwnerUserId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceInstanceId") {
            self.resourceInstanceId = dict["ResourceInstanceId"] as! String
        }
        if dict.keys.contains("ResourceIp") {
            self.resourceIp = dict["ResourceIp"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceProduct") {
            self.resourceProduct = dict["ResourceProduct"] as! String
        }
        if dict.keys.contains("ResourceRegionId") {
            self.resourceRegionId = dict["ResourceRegionId"] as! String
        }
    }
}

public class DescribeProductInstancesResponseBody : Tea.TeaModel {
    public class ProductInstances : Tea.TeaModel {
        public class ResourcePorts : Tea.TeaModel {
            public class Certificates : Tea.TeaModel {
                public var certificateId: String?

                public var certificateName: String?

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CertificateId") {
                        self.certificateId = dict["CertificateId"] as! String
                    }
                    if dict.keys.contains("CertificateName") {
                        self.certificateName = dict["CertificateName"] as! String
                    }
                }
            }
            public var certificates: [DescribeProductInstancesResponseBody.ProductInstances.ResourcePorts.Certificates]?

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
                if self.certificates != nil {
                    var tmp : [Any] = []
                    for k in self.certificates! {
                        tmp.append(k.toMap())
                    }
                    map["Certificates"] = tmp
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Certificates") {
                    var tmp : [DescribeProductInstancesResponseBody.ProductInstances.ResourcePorts.Certificates] = []
                    for v in dict["Certificates"] as! [Any] {
                        var model = DescribeProductInstancesResponseBody.ProductInstances.ResourcePorts.Certificates()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.certificates = tmp
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
            }
        }
        public var ownerUserId: String?

        public var resourceInstanceId: String?

        public var resourceIp: String?

        public var resourceName: String?

        public var resourcePorts: [DescribeProductInstancesResponseBody.ProductInstances.ResourcePorts]?

        public var resourceProduct: String?

        public var resourceRegionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ownerUserId != nil {
                map["OwnerUserId"] = self.ownerUserId!
            }
            if self.resourceInstanceId != nil {
                map["ResourceInstanceId"] = self.resourceInstanceId!
            }
            if self.resourceIp != nil {
                map["ResourceIp"] = self.resourceIp!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourcePorts != nil {
                var tmp : [Any] = []
                for k in self.resourcePorts! {
                    tmp.append(k.toMap())
                }
                map["ResourcePorts"] = tmp
            }
            if self.resourceProduct != nil {
                map["ResourceProduct"] = self.resourceProduct!
            }
            if self.resourceRegionId != nil {
                map["ResourceRegionId"] = self.resourceRegionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OwnerUserId") {
                self.ownerUserId = dict["OwnerUserId"] as! String
            }
            if dict.keys.contains("ResourceInstanceId") {
                self.resourceInstanceId = dict["ResourceInstanceId"] as! String
            }
            if dict.keys.contains("ResourceIp") {
                self.resourceIp = dict["ResourceIp"] as! String
            }
            if dict.keys.contains("ResourceName") {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("ResourcePorts") {
                var tmp : [DescribeProductInstancesResponseBody.ProductInstances.ResourcePorts] = []
                for v in dict["ResourcePorts"] as! [Any] {
                    var model = DescribeProductInstancesResponseBody.ProductInstances.ResourcePorts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resourcePorts = tmp
            }
            if dict.keys.contains("ResourceProduct") {
                self.resourceProduct = dict["ResourceProduct"] as! String
            }
            if dict.keys.contains("ResourceRegionId") {
                self.resourceRegionId = dict["ResourceRegionId"] as! String
            }
        }
    }
    public var productInstances: [DescribeProductInstancesResponseBody.ProductInstances]?

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
        if self.productInstances != nil {
            var tmp : [Any] = []
            for k in self.productInstances! {
                tmp.append(k.toMap())
            }
            map["ProductInstances"] = tmp
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
        if dict.keys.contains("ProductInstances") {
            var tmp : [DescribeProductInstancesResponseBody.ProductInstances] = []
            for v in dict["ProductInstances"] as! [Any] {
                var model = DescribeProductInstancesResponseBody.ProductInstances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.productInstances = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeProductInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProductInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeProductInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePunishedDomainsRequest : Tea.TeaModel {
    public var domains: [String]?

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
        if self.domains != nil {
            map["Domains"] = self.domains!
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
        if dict.keys.contains("Domains") {
            self.domains = dict["Domains"] as! [String]
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribePunishedDomainsResponseBody : Tea.TeaModel {
    public var punishedDomains: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.punishedDomains != nil {
            map["PunishedDomains"] = self.punishedDomains!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PunishedDomains") {
            self.punishedDomains = dict["PunishedDomains"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribePunishedDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePunishedDomainsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePunishedDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeResourceInstanceCertsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceInstanceId") {
            self.resourceInstanceId = dict["ResourceInstanceId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeResourceInstanceCertsResponseBody : Tea.TeaModel {
    public class Certs : Tea.TeaModel {
        public var afterDate: Int64?

        public var beforeDate: Int64?

        public var certIdentifier: String?

        public var certName: String?

        public var commonName: String?

        public var domain: String?

        public var isChainCompleted: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.afterDate != nil {
                map["AfterDate"] = self.afterDate!
            }
            if self.beforeDate != nil {
                map["BeforeDate"] = self.beforeDate!
            }
            if self.certIdentifier != nil {
                map["CertIdentifier"] = self.certIdentifier!
            }
            if self.certName != nil {
                map["CertName"] = self.certName!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.isChainCompleted != nil {
                map["IsChainCompleted"] = self.isChainCompleted!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AfterDate") {
                self.afterDate = dict["AfterDate"] as! Int64
            }
            if dict.keys.contains("BeforeDate") {
                self.beforeDate = dict["BeforeDate"] as! Int64
            }
            if dict.keys.contains("CertIdentifier") {
                self.certIdentifier = dict["CertIdentifier"] as! String
            }
            if dict.keys.contains("CertName") {
                self.certName = dict["CertName"] as! String
            }
            if dict.keys.contains("CommonName") {
                self.commonName = dict["CommonName"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("IsChainCompleted") {
                self.isChainCompleted = dict["IsChainCompleted"] as! Bool
            }
        }
    }
    public var certs: [DescribeResourceInstanceCertsResponseBody.Certs]?

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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Certs") {
            var tmp : [DescribeResourceInstanceCertsResponseBody.Certs] = []
            for v in dict["Certs"] as! [Any] {
                var model = DescribeResourceInstanceCertsResponseBody.Certs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.certs = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeResourceInstanceCertsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourceInstanceCertsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeResourceInstanceCertsResponseBody()
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("Resources") {
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
            if dict.keys.contains("Resource") {
                self.resource = dict["Resource"] as! String
            }
            if dict.keys.contains("Status") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceInstanceId") {
            self.resourceInstanceId = dict["ResourceInstanceId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourcePorts") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeResourcePortResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeResourceRegionIdRequest : Tea.TeaModel {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeResourceRegionIdResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resourceRegionIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceRegionIds != nil {
            map["ResourceRegionIds"] = self.resourceRegionIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceRegionIds") {
            self.resourceRegionIds = dict["ResourceRegionIds"] as! [String]
        }
    }
}

public class DescribeResourceRegionIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourceRegionIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeResourceRegionIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeResourceSupportRegionsRequest : Tea.TeaModel {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeResourceSupportRegionsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var supportRegions: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.supportRegions != nil {
            map["SupportRegions"] = self.supportRegions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SupportRegions") {
            self.supportRegions = dict["SupportRegions"] as! [String]
        }
    }
}

public class DescribeResourceSupportRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourceSupportRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeResourceSupportRegionsResponseBody()
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
        if dict.keys.contains("EndTimestamp") {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTimestamp") {
            self.startTimestamp = dict["StartTimestamp"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeResponseCodeTrendGraphResponseBody : Tea.TeaModel {
    public class ResponseCodes : Tea.TeaModel {
        public var code302Pv: Int64?

        public var code405Pv: Int64?

        public var code444Pv: Int64?

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
            if self.code444Pv != nil {
                map["444Pv"] = self.code444Pv!
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
            if dict.keys.contains("302Pv") {
                self.code302Pv = dict["302Pv"] as! Int64
            }
            if dict.keys.contains("405Pv") {
                self.code405Pv = dict["405Pv"] as! Int64
            }
            if dict.keys.contains("444Pv") {
                self.code444Pv = dict["444Pv"] as! Int64
            }
            if dict.keys.contains("499Pv") {
                self.code499Pv = dict["499Pv"] as! Int64
            }
            if dict.keys.contains("5xxPv") {
                self.code5xxPv = dict["5xxPv"] as! Int64
            }
            if dict.keys.contains("Index") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResponseCodes") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("SearchType") {
            self.searchType = dict["SearchType"] as! String
        }
        if dict.keys.contains("SearchValue") {
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
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("IsSubscribe") {
                self.isSubscribe = dict["IsSubscribe"] as! Int32
            }
            if dict.keys.contains("ParentRuleGroupId") {
                self.parentRuleGroupId = dict["ParentRuleGroupId"] as! Int64
            }
            if dict.keys.contains("RuleGroupId") {
                self.ruleGroupId = dict["RuleGroupId"] as! Int64
            }
            if dict.keys.contains("RuleGroupName") {
                self.ruleGroupName = dict["RuleGroupName"] as! String
            }
            if dict.keys.contains("RuleTotalCount") {
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
        if dict.keys.contains("TotalCount") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("EndTimestamp") {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleType") {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("StartTimestamp") {
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
            if dict.keys.contains("ClientIp") {
                self.clientIp = dict["ClientIp"] as! String
            }
            if dict.keys.contains("Count") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleHitsTopClientIp") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("EndTimestamp") {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleType") {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("StartTimestamp") {
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
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("Resource") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleHitsTopResource") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeRuleHitsTopResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRuleHitsTopRuleIdRequest : Tea.TeaModel {
    public var endTimestamp: String?

    public var instanceId: String?

    public var isGroupResource: String?

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
        if self.isGroupResource != nil {
            map["IsGroupResource"] = self.isGroupResource!
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
        if dict.keys.contains("EndTimestamp") {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IsGroupResource") {
            self.isGroupResource = dict["IsGroupResource"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleType") {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("StartTimestamp") {
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
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("Resource") {
                self.resource = dict["Resource"] as! String
            }
            if dict.keys.contains("RuleId") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleHitsTopRuleId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("EndTimestamp") {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("StartTimestamp") {
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
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("RuleType") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleHitsTopTuleType") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("EndTimestamp") {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTimestamp") {
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
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("Ua") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleHitsTopUa") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("EndTimestamp") {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleType") {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("StartTimestamp") {
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
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("Url") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleHitsTopUrl") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeRuleHitsTopUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSlsAuthStatusRequest : Tea.TeaModel {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeSlsAuthStatusResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeSlsAuthStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSlsLogStoreRequest : Tea.TeaModel {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeSlsLogStoreResponseBody : Tea.TeaModel {
    public var logStoreName: String?

    public var projectName: String?

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
        if self.logStoreName != nil {
            map["LogStoreName"] = self.logStoreName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogStoreName") {
            self.logStoreName = dict["LogStoreName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Quota") {
            self.quota = dict["Quota"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Ttl") {
            self.ttl = dict["Ttl"] as! Int32
        }
        if dict.keys.contains("Used") {
            self.used = dict["Used"] as! Int64
        }
    }
}

public class DescribeSlsLogStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlsLogStoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSlsLogStoreResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSlsLogStoreStatusRequest : Tea.TeaModel {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeSlsLogStoreStatusResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExistStatus") {
            self.existStatus = dict["ExistStatus"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeSlsLogStoreStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlsLogStoreStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSlsLogStoreStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTemplateResourceCountRequest : Tea.TeaModel {
    public var instanceId: String?

    public var regionId: String?

    public var resourceManagerResourceGroupId: String?

    public var templateIds: String?

    public override init() {
        super.init()
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
        if self.templateIds != nil {
            map["TemplateIds"] = self.templateIds!
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
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("TemplateIds") {
            self.templateIds = dict["TemplateIds"] as! String
        }
    }
}

public class DescribeTemplateResourceCountResponseBody : Tea.TeaModel {
    public class ResourceCount : Tea.TeaModel {
        public var groupCount: Int32?

        public var singleCount: Int32?

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
            if self.groupCount != nil {
                map["GroupCount"] = self.groupCount!
            }
            if self.singleCount != nil {
                map["SingleCount"] = self.singleCount!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GroupCount") {
                self.groupCount = dict["GroupCount"] as! Int32
            }
            if dict.keys.contains("SingleCount") {
                self.singleCount = dict["SingleCount"] as! Int32
            }
            if dict.keys.contains("TemplateId") {
                self.templateId = dict["TemplateId"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var resourceCount: [DescribeTemplateResourceCountResponseBody.ResourceCount]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceCount != nil {
            var tmp : [Any] = []
            for k in self.resourceCount! {
                tmp.append(k.toMap())
            }
            map["ResourceCount"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceCount") {
            var tmp : [DescribeTemplateResourceCountResponseBody.ResourceCount] = []
            for v in dict["ResourceCount"] as! [Any] {
                var model = DescribeTemplateResourceCountResponseBody.ResourceCount()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceCount = tmp
        }
    }
}

public class DescribeTemplateResourceCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTemplateResourceCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeTemplateResourceCountResponseBody()
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TemplateId") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeTemplateResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUserSlsLogRegionsRequest : Tea.TeaModel {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeUserSlsLogRegionsResponseBody : Tea.TeaModel {
    public var logRegions: [String]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logRegions != nil {
            map["LogRegions"] = self.logRegions!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogRegions") {
            self.logRegions = dict["LogRegions"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeUserSlsLogRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserSlsLogRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeUserSlsLogRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUserWafLogStatusRequest : Tea.TeaModel {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class DescribeUserWafLogStatusResponseBody : Tea.TeaModel {
    public var logRegionId: String?

    public var logStatus: String?

    public var requestId: String?

    public var statusUpdateTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logRegionId != nil {
            map["LogRegionId"] = self.logRegionId!
        }
        if self.logStatus != nil {
            map["LogStatus"] = self.logStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.statusUpdateTime != nil {
            map["StatusUpdateTime"] = self.statusUpdateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogRegionId") {
            self.logRegionId = dict["LogRegionId"] as! String
        }
        if dict.keys.contains("LogStatus") {
            self.logStatus = dict["LogStatus"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StatusUpdateTime") {
            self.statusUpdateTime = dict["StatusUpdateTime"] as! Int64
        }
    }
}

public class DescribeUserWafLogStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserWafLogStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeUserWafLogStatusResponseBody()
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
        if dict.keys.contains("EndTimestamp") {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("StartTimestamp") {
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
            if dict.keys.contains("Area") {
                self.area = dict["Area"] as! String
            }
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("Isp") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TopIp") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("EndTimestamp") {
            self.endTimestamp = dict["EndTimestamp"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("StartTimestamp") {
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
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("Ua") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Uas") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
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
            if dict.keys.contains("IPv4") {
                self.IPv4 = dict["IPv4"] as! [String]
            }
            if dict.keys.contains("IPv6") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WafSourceIp") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class ListTagKeysRequest : Tea.TeaModel {
    public var instanceId: String?

    public var nextToken: String?

    public var regionId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ListTagKeysResponseBody : Tea.TeaModel {
    public class Keys : Tea.TeaModel {
        public var category: String?

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
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
        }
    }
    public var keys: [ListTagKeysResponseBody.Keys]?

    public var nextToken: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keys != nil {
            var tmp : [Any] = []
            for k in self.keys! {
                tmp.append(k.toMap())
            }
            map["Keys"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keys") {
            var tmp : [ListTagKeysResponseBody.Keys] = []
            for v in dict["Keys"] as! [Any] {
                var model = ListTagKeysResponseBody.Keys()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.keys = tmp
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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
    public var key: String?

    public var nextToken: String?

    public var regionId: String?

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
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class ListTagValuesResponseBody : Tea.TeaModel {
    public var nextToken: String?

    public var requestId: String?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.values != nil {
            map["Values"] = self.values!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Values") {
            self.values = dict["Values"] as! [String]
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

public class ModifyApisecLogDeliveryRequest : Tea.TeaModel {
    public var assertKey: String?

    public var instanceId: String?

    public var logRegionId: String?

    public var logStoreName: String?

    public var projectName: String?

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
        if self.assertKey != nil {
            map["AssertKey"] = self.assertKey!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.logRegionId != nil {
            map["LogRegionId"] = self.logRegionId!
        }
        if self.logStoreName != nil {
            map["LogStoreName"] = self.logStoreName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
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
        if dict.keys.contains("AssertKey") {
            self.assertKey = dict["AssertKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("LogRegionId") {
            self.logRegionId = dict["LogRegionId"] as! String
        }
        if dict.keys.contains("LogStoreName") {
            self.logStoreName = dict["LogStoreName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class ModifyApisecLogDeliveryResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyApisecLogDeliveryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyApisecLogDeliveryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyApisecLogDeliveryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyApisecLogDeliveryStatusRequest : Tea.TeaModel {
    public var assertKey: String?

    public var instanceId: String?

    public var regionId: String?

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
        if self.assertKey != nil {
            map["AssertKey"] = self.assertKey!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssertKey") {
            self.assertKey = dict["AssertKey"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Bool
        }
    }
}

public class ModifyApisecLogDeliveryStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyApisecLogDeliveryStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyApisecLogDeliveryStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyApisecLogDeliveryStatusResponseBody()
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
        if dict.keys.contains("AddList") {
            self.addList = dict["AddList"] as! String
        }
        if dict.keys.contains("DeleteList") {
            self.deleteList = dict["DeleteList"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDefenseResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDefenseResourceXffRequest : Tea.TeaModel {
    public var acwCookieStatus: Int32?

    public var acwSecureStatus: Int32?

    public var acwV3SecureStatus: Int32?

    public var customHeaders: [String]?

    public var instanceId: String?

    public var regionId: String?

    public var resource: String?

    public var resourceManagerResourceGroupId: String?

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
        if self.xffStatus != nil {
            map["XffStatus"] = self.xffStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcwCookieStatus") {
            self.acwCookieStatus = dict["AcwCookieStatus"] as! Int32
        }
        if dict.keys.contains("AcwSecureStatus") {
            self.acwSecureStatus = dict["AcwSecureStatus"] as! Int32
        }
        if dict.keys.contains("AcwV3SecureStatus") {
            self.acwV3SecureStatus = dict["AcwV3SecureStatus"] as! Int32
        }
        if dict.keys.contains("CustomHeaders") {
            self.customHeaders = dict["CustomHeaders"] as! [String]
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("XffStatus") {
            self.xffStatus = dict["XffStatus"] as! Int32
        }
    }
}

public class ModifyDefenseResourceXffResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyDefenseResourceXffResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDefenseResourceXffResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDefenseResourceXffResponseBody()
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
        if dict.keys.contains("DefenseScene") {
            self.defenseScene = dict["DefenseScene"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("Rules") {
            self.rules = dict["Rules"] as! String
        }
        if dict.keys.contains("TemplateId") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDefenseRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDefenseRuleCacheRequest : Tea.TeaModel {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class ModifyDefenseRuleCacheResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyDefenseRuleCacheResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDefenseRuleCacheResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDefenseRuleCacheResponseBody()
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("RuleStatus") {
            self.ruleStatus = dict["RuleStatus"] as! Int32
        }
        if dict.keys.contains("TemplateId") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
        }
        if dict.keys.contains("TemplateName") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
        }
        if dict.keys.contains("TemplateStatus") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            if dict.keys.contains("CertId") {
                self.certId = dict["CertId"] as! String
            }
            if dict.keys.contains("CipherSuite") {
                self.cipherSuite = dict["CipherSuite"] as! Int32
            }
            if dict.keys.contains("CustomCiphers") {
                self.customCiphers = dict["CustomCiphers"] as! [String]
            }
            if dict.keys.contains("EnableTLSv3") {
                self.enableTLSv3 = dict["EnableTLSv3"] as! Bool
            }
            if dict.keys.contains("ExclusiveIp") {
                self.exclusiveIp = dict["ExclusiveIp"] as! Bool
            }
            if dict.keys.contains("FocusHttps") {
                self.focusHttps = dict["FocusHttps"] as! Bool
            }
            if dict.keys.contains("Http2Enabled") {
                self.http2Enabled = dict["Http2Enabled"] as! Bool
            }
            if dict.keys.contains("HttpPorts") {
                self.httpPorts = dict["HttpPorts"] as! [Int32]
            }
            if dict.keys.contains("HttpsPorts") {
                self.httpsPorts = dict["HttpsPorts"] as! [Int32]
            }
            if dict.keys.contains("IPv6Enabled") {
                self.IPv6Enabled = dict["IPv6Enabled"] as! Bool
            }
            if dict.keys.contains("ProtectionResource") {
                self.protectionResource = dict["ProtectionResource"] as! String
            }
            if dict.keys.contains("SM2AccessOnly") {
                self.SM2AccessOnly = dict["SM2AccessOnly"] as! Bool
            }
            if dict.keys.contains("SM2CertId") {
                self.SM2CertId = dict["SM2CertId"] as! String
            }
            if dict.keys.contains("SM2Enabled") {
                self.SM2Enabled = dict["SM2Enabled"] as! Bool
            }
            if dict.keys.contains("TLSVersion") {
                self.TLSVersion = dict["TLSVersion"] as! String
            }
            if dict.keys.contains("XffHeaderMode") {
                self.xffHeaderMode = dict["XffHeaderMode"] as! Int32
            }
            if dict.keys.contains("XffHeaders") {
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
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
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

        public var xffProto: Bool?

        public override init() {
            super.init()
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
            if self.xffProto != nil {
                map["XffProto"] = self.xffProto!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Backends") {
                self.backends = dict["Backends"] as! [String]
            }
            if dict.keys.contains("CnameEnabled") {
                self.cnameEnabled = dict["CnameEnabled"] as! Bool
            }
            if dict.keys.contains("ConnectTimeout") {
                self.connectTimeout = dict["ConnectTimeout"] as! Int32
            }
            if dict.keys.contains("FocusHttpBackend") {
                self.focusHttpBackend = dict["FocusHttpBackend"] as! Bool
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
            if dict.keys.contains("Loadbalance") {
                self.loadbalance = dict["Loadbalance"] as! String
            }
            if dict.keys.contains("ReadTimeout") {
                self.readTimeout = dict["ReadTimeout"] as! Int32
            }
            if dict.keys.contains("RequestHeaders") {
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
            if dict.keys.contains("Retry") {
                self.retry = dict["Retry"] as! Bool
            }
            if dict.keys.contains("RoutingRules") {
                self.routingRules = dict["RoutingRules"] as! String
            }
            if dict.keys.contains("SniEnabled") {
                self.sniEnabled = dict["SniEnabled"] as! Bool
            }
            if dict.keys.contains("SniHost") {
                self.sniHost = dict["SniHost"] as! String
            }
            if dict.keys.contains("WriteTimeout") {
                self.writeTimeout = dict["WriteTimeout"] as! Int32
            }
            if dict.keys.contains("XffProto") {
                self.xffProto = dict["XffProto"] as! Bool
            }
        }
    }
    public var accessType: String?

    public var domain: String?

    public var instanceId: String?

    public var listen: ModifyDomainRequest.Listen?

    public var redirect: ModifyDomainRequest.Redirect?

    public var regionId: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessType") {
            self.accessType = dict["AccessType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Listen") {
            var model = ModifyDomainRequest.Listen()
            model.fromMap(dict["Listen"] as! [String: Any])
            self.listen = model
        }
        if dict.keys.contains("Redirect") {
            var model = ModifyDomainRequest.Redirect()
            model.fromMap(dict["Redirect"] as! [String: Any])
            self.redirect = model
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessType") {
            self.accessType = dict["AccessType"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Listen") {
            self.listenShrink = dict["Listen"] as! String
        }
        if dict.keys.contains("Redirect") {
            self.redirectShrink = dict["Redirect"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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
            if dict.keys.contains("Cname") {
                self.cname = dict["Cname"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("DomainId") {
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
        if dict.keys.contains("DomainInfo") {
            var model = ModifyDomainResponseBody.DomainInfo()
            model.fromMap(dict["DomainInfo"] as! [String: Any])
            self.domainInfo = model
        }
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

public class ModifyDomainPunishStatusRequest : Tea.TeaModel {
    public var domain: String?

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
        if self.domain != nil {
            map["Domain"] = self.domain!
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
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class ModifyDomainPunishStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyDomainPunishStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDomainPunishStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDomainPunishStatusResponseBody()
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
        if dict.keys.contains("ClusterResourceId") {
            self.clusterResourceId = dict["ClusterResourceId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RuleStatus") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ExpiredTime") {
            self.expiredTime = dict["ExpiredTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("IpList") {
            self.ipList = dict["IpList"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyMajorProtectionBlackIpResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyMemberAccountRequest : Tea.TeaModel {
    public var description_: String?

    public var instanceId: String?

    public var memberAccountId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.memberAccountId != nil {
            map["MemberAccountId"] = self.memberAccountId!
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
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MemberAccountId") {
            self.memberAccountId = dict["MemberAccountId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceIp") {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class ModifyMemberAccountResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyMemberAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyMemberAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyMemberAccountResponseBody()
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("Status") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("BindResourceGroups") {
            self.bindResourceGroups = dict["BindResourceGroups"] as! [String]
        }
        if dict.keys.contains("BindResources") {
            self.bindResources = dict["BindResources"] as! [String]
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int64
        }
        if dict.keys.contains("UnbindResourceGroups") {
            self.unbindResourceGroups = dict["UnbindResourceGroups"] as! [String]
        }
        if dict.keys.contains("UnbindResources") {
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
        if dict.keys.contains("RequestId") {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyTemplateResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SyncProductInstanceRequest : Tea.TeaModel {
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
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceManagerResourceGroupId") {
            self.resourceManagerResourceGroupId = dict["ResourceManagerResourceGroupId"] as! String
        }
    }
}

public class SyncProductInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class SyncProductInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncProductInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SyncProductInstanceResponseBody()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
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

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
