import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DescribeDomainReportRequest : Tea.TeaModel {
    public var domain: String?

    public var field: String?

    public var serviceLang: String?

    public override init() {
        super.init()
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
        if self.field != nil {
            map["Field"] = self.field!
        }
        if self.serviceLang != nil {
            map["ServiceLang"] = self.serviceLang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Field") && dict["Field"] != nil {
            self.field = dict["Field"] as! String
        }
        if dict.keys.contains("ServiceLang") && dict["ServiceLang"] != nil {
            self.serviceLang = dict["ServiceLang"] as! String
        }
    }
}

public class DescribeDomainReportResponseBody : Tea.TeaModel {
    public var attackCntByThreatType: String?

    public var attackPreferenceTop5: String?

    public var basic: String?

    public var confidence: String?

    public var context: String?

    public var domain: String?

    public var group: String?

    public var intelligences: String?

    public var requestId: String?

    public var scenario: String?

    public var sslCert: String?

    public var threatLevel: String?

    public var threatTypes: String?

    public var whois: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attackCntByThreatType != nil {
            map["AttackCntByThreatType"] = self.attackCntByThreatType!
        }
        if self.attackPreferenceTop5 != nil {
            map["AttackPreferenceTop5"] = self.attackPreferenceTop5!
        }
        if self.basic != nil {
            map["Basic"] = self.basic!
        }
        if self.confidence != nil {
            map["Confidence"] = self.confidence!
        }
        if self.context != nil {
            map["Context"] = self.context!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.group != nil {
            map["Group"] = self.group!
        }
        if self.intelligences != nil {
            map["Intelligences"] = self.intelligences!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scenario != nil {
            map["Scenario"] = self.scenario!
        }
        if self.sslCert != nil {
            map["SslCert"] = self.sslCert!
        }
        if self.threatLevel != nil {
            map["ThreatLevel"] = self.threatLevel!
        }
        if self.threatTypes != nil {
            map["ThreatTypes"] = self.threatTypes!
        }
        if self.whois != nil {
            map["Whois"] = self.whois!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttackCntByThreatType") && dict["AttackCntByThreatType"] != nil {
            self.attackCntByThreatType = dict["AttackCntByThreatType"] as! String
        }
        if dict.keys.contains("AttackPreferenceTop5") && dict["AttackPreferenceTop5"] != nil {
            self.attackPreferenceTop5 = dict["AttackPreferenceTop5"] as! String
        }
        if dict.keys.contains("Basic") && dict["Basic"] != nil {
            self.basic = dict["Basic"] as! String
        }
        if dict.keys.contains("Confidence") && dict["Confidence"] != nil {
            self.confidence = dict["Confidence"] as! String
        }
        if dict.keys.contains("Context") && dict["Context"] != nil {
            self.context = dict["Context"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Group") && dict["Group"] != nil {
            self.group = dict["Group"] as! String
        }
        if dict.keys.contains("Intelligences") && dict["Intelligences"] != nil {
            self.intelligences = dict["Intelligences"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Scenario") && dict["Scenario"] != nil {
            self.scenario = dict["Scenario"] as! String
        }
        if dict.keys.contains("SslCert") && dict["SslCert"] != nil {
            self.sslCert = dict["SslCert"] as! String
        }
        if dict.keys.contains("ThreatLevel") && dict["ThreatLevel"] != nil {
            self.threatLevel = dict["ThreatLevel"] as! String
        }
        if dict.keys.contains("ThreatTypes") && dict["ThreatTypes"] != nil {
            self.threatTypes = dict["ThreatTypes"] as! String
        }
        if dict.keys.contains("Whois") && dict["Whois"] != nil {
            self.whois = dict["Whois"] as! String
        }
    }
}

public class DescribeDomainReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainReportResponseBody?

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
            var model = DescribeDomainReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFileReportRequest : Tea.TeaModel {
    public var field: String?

    public var fileHash: String?

    public var serviceLang: String?

    public override init() {
        super.init()
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
        if self.fileHash != nil {
            map["FileHash"] = self.fileHash!
        }
        if self.serviceLang != nil {
            map["ServiceLang"] = self.serviceLang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Field") && dict["Field"] != nil {
            self.field = dict["Field"] as! String
        }
        if dict.keys.contains("FileHash") && dict["FileHash"] != nil {
            self.fileHash = dict["FileHash"] as! String
        }
        if dict.keys.contains("ServiceLang") && dict["ServiceLang"] != nil {
            self.serviceLang = dict["ServiceLang"] as! String
        }
    }
}

public class DescribeFileReportResponseBody : Tea.TeaModel {
    public var basic: String?

    public var fileHash: String?

    public var intelligences: String?

    public var requestId: String?

    public var sandbox: String?

    public var threatLevel: String?

    public var threatTypes: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.basic != nil {
            map["Basic"] = self.basic!
        }
        if self.fileHash != nil {
            map["FileHash"] = self.fileHash!
        }
        if self.intelligences != nil {
            map["Intelligences"] = self.intelligences!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sandbox != nil {
            map["Sandbox"] = self.sandbox!
        }
        if self.threatLevel != nil {
            map["ThreatLevel"] = self.threatLevel!
        }
        if self.threatTypes != nil {
            map["ThreatTypes"] = self.threatTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Basic") && dict["Basic"] != nil {
            self.basic = dict["Basic"] as! String
        }
        if dict.keys.contains("FileHash") && dict["FileHash"] != nil {
            self.fileHash = dict["FileHash"] as! String
        }
        if dict.keys.contains("Intelligences") && dict["Intelligences"] != nil {
            self.intelligences = dict["Intelligences"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Sandbox") && dict["Sandbox"] != nil {
            self.sandbox = dict["Sandbox"] as! String
        }
        if dict.keys.contains("ThreatLevel") && dict["ThreatLevel"] != nil {
            self.threatLevel = dict["ThreatLevel"] as! String
        }
        if dict.keys.contains("ThreatTypes") && dict["ThreatTypes"] != nil {
            self.threatTypes = dict["ThreatTypes"] as! String
        }
    }
}

public class DescribeFileReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFileReportResponseBody?

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
            var model = DescribeFileReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeIpReportRequest : Tea.TeaModel {
    public var field: String?

    public var ip: String?

    public var serviceLang: String?

    public override init() {
        super.init()
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
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.serviceLang != nil {
            map["ServiceLang"] = self.serviceLang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Field") && dict["Field"] != nil {
            self.field = dict["Field"] as! String
        }
        if dict.keys.contains("Ip") && dict["Ip"] != nil {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("ServiceLang") && dict["ServiceLang"] != nil {
            self.serviceLang = dict["ServiceLang"] as! String
        }
    }
}

public class DescribeIpReportResponseBody : Tea.TeaModel {
    public var attackCntByThreatType: String?

    public var attackPreferenceTop5: String?

    public var confidence: String?

    public var context: String?

    public var group: String?

    public var intelligences: String?

    public var ip: String?

    public var requestId: String?

    public var scenario: String?

    public var threatLevel: String?

    public var threatTypes: String?

    public var whois: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attackCntByThreatType != nil {
            map["AttackCntByThreatType"] = self.attackCntByThreatType!
        }
        if self.attackPreferenceTop5 != nil {
            map["AttackPreferenceTop5"] = self.attackPreferenceTop5!
        }
        if self.confidence != nil {
            map["Confidence"] = self.confidence!
        }
        if self.context != nil {
            map["Context"] = self.context!
        }
        if self.group != nil {
            map["Group"] = self.group!
        }
        if self.intelligences != nil {
            map["Intelligences"] = self.intelligences!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scenario != nil {
            map["Scenario"] = self.scenario!
        }
        if self.threatLevel != nil {
            map["ThreatLevel"] = self.threatLevel!
        }
        if self.threatTypes != nil {
            map["ThreatTypes"] = self.threatTypes!
        }
        if self.whois != nil {
            map["Whois"] = self.whois!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttackCntByThreatType") && dict["AttackCntByThreatType"] != nil {
            self.attackCntByThreatType = dict["AttackCntByThreatType"] as! String
        }
        if dict.keys.contains("AttackPreferenceTop5") && dict["AttackPreferenceTop5"] != nil {
            self.attackPreferenceTop5 = dict["AttackPreferenceTop5"] as! String
        }
        if dict.keys.contains("Confidence") && dict["Confidence"] != nil {
            self.confidence = dict["Confidence"] as! String
        }
        if dict.keys.contains("Context") && dict["Context"] != nil {
            self.context = dict["Context"] as! String
        }
        if dict.keys.contains("Group") && dict["Group"] != nil {
            self.group = dict["Group"] as! String
        }
        if dict.keys.contains("Intelligences") && dict["Intelligences"] != nil {
            self.intelligences = dict["Intelligences"] as! String
        }
        if dict.keys.contains("Ip") && dict["Ip"] != nil {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Scenario") && dict["Scenario"] != nil {
            self.scenario = dict["Scenario"] as! String
        }
        if dict.keys.contains("ThreatLevel") && dict["ThreatLevel"] != nil {
            self.threatLevel = dict["ThreatLevel"] as! String
        }
        if dict.keys.contains("ThreatTypes") && dict["ThreatTypes"] != nil {
            self.threatTypes = dict["ThreatTypes"] as! String
        }
        if dict.keys.contains("Whois") && dict["Whois"] != nil {
            self.whois = dict["Whois"] as! String
        }
    }
}

public class DescribeIpReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIpReportResponseBody?

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
            var model = DescribeIpReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
