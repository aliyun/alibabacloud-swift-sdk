import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DescribeDomainReportRequest : Tea.TeaModel {
    public var domain: String?

    public var field: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Field") {
            self.field = dict["Field"] as! String
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
        if dict.keys.contains("AttackCntByThreatType") {
            self.attackCntByThreatType = dict["AttackCntByThreatType"] as! String
        }
        if dict.keys.contains("AttackPreferenceTop5") {
            self.attackPreferenceTop5 = dict["AttackPreferenceTop5"] as! String
        }
        if dict.keys.contains("Basic") {
            self.basic = dict["Basic"] as! String
        }
        if dict.keys.contains("Confidence") {
            self.confidence = dict["Confidence"] as! String
        }
        if dict.keys.contains("Context") {
            self.context = dict["Context"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Group") {
            self.group = dict["Group"] as! String
        }
        if dict.keys.contains("Intelligences") {
            self.intelligences = dict["Intelligences"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Scenario") {
            self.scenario = dict["Scenario"] as! String
        }
        if dict.keys.contains("SslCert") {
            self.sslCert = dict["SslCert"] as! String
        }
        if dict.keys.contains("ThreatLevel") {
            self.threatLevel = dict["ThreatLevel"] as! String
        }
        if dict.keys.contains("ThreatTypes") {
            self.threatTypes = dict["ThreatTypes"] as! String
        }
        if dict.keys.contains("Whois") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDomainReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
