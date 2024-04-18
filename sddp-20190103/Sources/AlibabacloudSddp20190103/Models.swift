import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateConfigRequest : Tea.TeaModel {
    public var code: String?

    public var description_: String?

    public var featureType: Int32?

    public var lang: String?

    public var sourceIp: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
    }
}

public class CreateConfigResponseBody : Tea.TeaModel {
    public var id: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDataLimitRequest : Tea.TeaModel {
    public var auditStatus: Int32?

    public var autoScan: Int32?

    public var certificatePermission: String?

    public var enable: Int32?

    public var engineType: String?

    public var eventStatus: Int32?

    public var featureType: Int32?

    public var lang: String?

    public var logStoreDay: Int32?

    public var ocrStatus: Int32?

    public var parentId: String?

    public var password: String?

    public var port: Int32?

    public var resourceType: Int32?

    public var samplingSize: Int32?

    public var serviceRegionId: String?

    public var sourceIp: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.autoScan != nil {
            map["AutoScan"] = self.autoScan!
        }
        if self.certificatePermission != nil {
            map["CertificatePermission"] = self.certificatePermission!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.engineType != nil {
            map["EngineType"] = self.engineType!
        }
        if self.eventStatus != nil {
            map["EventStatus"] = self.eventStatus!
        }
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.logStoreDay != nil {
            map["LogStoreDay"] = self.logStoreDay!
        }
        if self.ocrStatus != nil {
            map["OcrStatus"] = self.ocrStatus!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.samplingSize != nil {
            map["SamplingSize"] = self.samplingSize!
        }
        if self.serviceRegionId != nil {
            map["ServiceRegionId"] = self.serviceRegionId!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
            self.auditStatus = dict["AuditStatus"] as! Int32
        }
        if dict.keys.contains("AutoScan") && dict["AutoScan"] != nil {
            self.autoScan = dict["AutoScan"] as! Int32
        }
        if dict.keys.contains("CertificatePermission") && dict["CertificatePermission"] != nil {
            self.certificatePermission = dict["CertificatePermission"] as! String
        }
        if dict.keys.contains("Enable") && dict["Enable"] != nil {
            self.enable = dict["Enable"] as! Int32
        }
        if dict.keys.contains("EngineType") && dict["EngineType"] != nil {
            self.engineType = dict["EngineType"] as! String
        }
        if dict.keys.contains("EventStatus") && dict["EventStatus"] != nil {
            self.eventStatus = dict["EventStatus"] as! Int32
        }
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("LogStoreDay") && dict["LogStoreDay"] != nil {
            self.logStoreDay = dict["LogStoreDay"] as! Int32
        }
        if dict.keys.contains("OcrStatus") && dict["OcrStatus"] != nil {
            self.ocrStatus = dict["OcrStatus"] as! Int32
        }
        if dict.keys.contains("ParentId") && dict["ParentId"] != nil {
            self.parentId = dict["ParentId"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Port") && dict["Port"] != nil {
            self.port = dict["Port"] as! Int32
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! Int32
        }
        if dict.keys.contains("SamplingSize") && dict["SamplingSize"] != nil {
            self.samplingSize = dict["SamplingSize"] as! Int32
        }
        if dict.keys.contains("ServiceRegionId") && dict["ServiceRegionId"] != nil {
            self.serviceRegionId = dict["ServiceRegionId"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class CreateDataLimitResponseBody : Tea.TeaModel {
    public var id: Int32?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDataLimitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataLimitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDataLimitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRuleRequest : Tea.TeaModel {
    public var category: Int32?

    public var content: String?

    public var contentCategory: Int32?

    public var description_: String?

    public var lang: String?

    public var matchType: Int32?

    public var name: String?

    public var productCode: String?

    public var productId: Int64?

    public var riskLevelId: Int64?

    public var ruleType: Int32?

    public var sourceIp: String?

    public var statExpress: String?

    public var status: Int32?

    public var supportForm: Int32?

    public var target: String?

    public var warnLevel: Int32?

    public override init() {
        super.init()
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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contentCategory != nil {
            map["ContentCategory"] = self.contentCategory!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.matchType != nil {
            map["MatchType"] = self.matchType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.riskLevelId != nil {
            map["RiskLevelId"] = self.riskLevelId!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.statExpress != nil {
            map["StatExpress"] = self.statExpress!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.supportForm != nil {
            map["SupportForm"] = self.supportForm!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        if self.warnLevel != nil {
            map["WarnLevel"] = self.warnLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! Int32
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ContentCategory") && dict["ContentCategory"] != nil {
            self.contentCategory = dict["ContentCategory"] as! Int32
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MatchType") && dict["MatchType"] != nil {
            self.matchType = dict["MatchType"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! Int64
        }
        if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
            self.riskLevelId = dict["RiskLevelId"] as! Int64
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! Int32
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("StatExpress") && dict["StatExpress"] != nil {
            self.statExpress = dict["StatExpress"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("SupportForm") && dict["SupportForm"] != nil {
            self.supportForm = dict["SupportForm"] as! Int32
        }
        if dict.keys.contains("Target") && dict["Target"] != nil {
            self.target = dict["Target"] as! String
        }
        if dict.keys.contains("WarnLevel") && dict["WarnLevel"] != nil {
            self.warnLevel = dict["WarnLevel"] as! Int32
        }
    }
}

public class CreateRuleResponseBody : Tea.TeaModel {
    public var id: Int32?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateScanTaskRequest : Tea.TeaModel {
    public var dataLimitId: Int64?

    public var featureType: Int32?

    public var intervalDay: Int32?

    public var lang: String?

    public var ossScanPath: String?

    public var resourceType: Int64?

    public var runHour: Int32?

    public var runMinute: Int32?

    public var scanRange: Int32?

    public var scanRangeContent: String?

    public var sourceIp: String?

    public var taskName: String?

    public var taskUserName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataLimitId != nil {
            map["DataLimitId"] = self.dataLimitId!
        }
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.intervalDay != nil {
            map["IntervalDay"] = self.intervalDay!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.ossScanPath != nil {
            map["OssScanPath"] = self.ossScanPath!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.runHour != nil {
            map["RunHour"] = self.runHour!
        }
        if self.runMinute != nil {
            map["RunMinute"] = self.runMinute!
        }
        if self.scanRange != nil {
            map["ScanRange"] = self.scanRange!
        }
        if self.scanRangeContent != nil {
            map["ScanRangeContent"] = self.scanRangeContent!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.taskUserName != nil {
            map["TaskUserName"] = self.taskUserName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataLimitId") && dict["DataLimitId"] != nil {
            self.dataLimitId = dict["DataLimitId"] as! Int64
        }
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("IntervalDay") && dict["IntervalDay"] != nil {
            self.intervalDay = dict["IntervalDay"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("OssScanPath") && dict["OssScanPath"] != nil {
            self.ossScanPath = dict["OssScanPath"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! Int64
        }
        if dict.keys.contains("RunHour") && dict["RunHour"] != nil {
            self.runHour = dict["RunHour"] as! Int32
        }
        if dict.keys.contains("RunMinute") && dict["RunMinute"] != nil {
            self.runMinute = dict["RunMinute"] as! Int32
        }
        if dict.keys.contains("ScanRange") && dict["ScanRange"] != nil {
            self.scanRange = dict["ScanRange"] as! Int32
        }
        if dict.keys.contains("ScanRangeContent") && dict["ScanRangeContent"] != nil {
            self.scanRangeContent = dict["ScanRangeContent"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
        if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("TaskUserName") && dict["TaskUserName"] != nil {
            self.taskUserName = dict["TaskUserName"] as! String
        }
    }
}

public class CreateScanTaskResponseBody : Tea.TeaModel {
    public var id: Int32?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateScanTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateScanTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateScanTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSlrRoleRequest : Tea.TeaModel {
    public var featureType: Int32?

    public var lang: String?

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
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class CreateSlrRoleResponseBody : Tea.TeaModel {
    public var hasPermission: Bool?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hasPermission != nil {
            map["HasPermission"] = self.hasPermission!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HasPermission") && dict["HasPermission"] != nil {
            self.hasPermission = dict["HasPermission"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateSlrRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSlrRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateSlrRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDataLimitRequest : Tea.TeaModel {
    public var featureType: Int32?

    public var id: Int64?

    public var lang: String?

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
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DeleteDataLimitResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteDataLimitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataLimitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDataLimitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRuleRequest : Tea.TeaModel {
    public var featureType: Int32?

    public var id: Int64?

    public var lang: String?

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
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SourceIp") && dict["SourceIp"] != nil {
            self.sourceIp = dict["SourceIp"] as! String
        }
    }
}

public class DeleteRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCategoryTemplateListRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var featureType: Int32?

    public var lang: String?

    public var pageSize: Int32?

    public var usageScenario: Int32?

    public override init() {
        super.init()
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
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.usageScenario != nil {
            map["UsageScenario"] = self.usageScenario!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UsageScenario") && dict["UsageScenario"] != nil {
            self.usageScenario = dict["UsageScenario"] as! Int32
        }
    }
}

public class DescribeCategoryTemplateListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var currentRiskLevel: Int32?

        public var description_: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var id: Int64?

        public var maxCategoryLevel: Int32?

        public var maxRiskLevel: Int32?

        public var name: String?

        public var status: Int32?

        public var supportEdit: Int32?

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
            if self.currentRiskLevel != nil {
                map["CurrentRiskLevel"] = self.currentRiskLevel!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.maxCategoryLevel != nil {
                map["MaxCategoryLevel"] = self.maxCategoryLevel!
            }
            if self.maxRiskLevel != nil {
                map["MaxRiskLevel"] = self.maxRiskLevel!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supportEdit != nil {
                map["SupportEdit"] = self.supportEdit!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentRiskLevel") && dict["CurrentRiskLevel"] != nil {
                self.currentRiskLevel = dict["CurrentRiskLevel"] as! Int32
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("MaxCategoryLevel") && dict["MaxCategoryLevel"] != nil {
                self.maxCategoryLevel = dict["MaxCategoryLevel"] as! Int32
            }
            if dict.keys.contains("MaxRiskLevel") && dict["MaxRiskLevel"] != nil {
                self.maxRiskLevel = dict["MaxRiskLevel"] as! Int32
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("SupportEdit") && dict["SupportEdit"] != nil {
                self.supportEdit = dict["SupportEdit"] as! Int32
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! Int32
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeCategoryTemplateListResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeCategoryTemplateListResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeCategoryTemplateListResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeCategoryTemplateListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCategoryTemplateListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeCategoryTemplateListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCategoryTemplateRuleListRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var featureType: Int32?

    public var lang: String?

    public var pageSize: Int32?

    public var riskLevelId: Int64?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.riskLevelId != nil {
            map["RiskLevelId"] = self.riskLevelId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
            self.riskLevelId = dict["RiskLevelId"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class DescribeCategoryTemplateRuleListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var description_: String?

        public var id: Int64?

        public var identificationRuleIds: String?

        public var identificationScope: String?

        public var name: String?

        public var riskLevelId: Int64?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.identificationRuleIds != nil {
                map["IdentificationRuleIds"] = self.identificationRuleIds!
            }
            if self.identificationScope != nil {
                map["IdentificationScope"] = self.identificationScope!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.riskLevelId != nil {
                map["RiskLevelId"] = self.riskLevelId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("IdentificationRuleIds") && dict["IdentificationRuleIds"] != nil {
                self.identificationRuleIds = dict["IdentificationRuleIds"] as! String
            }
            if dict.keys.contains("IdentificationScope") && dict["IdentificationScope"] != nil {
                self.identificationScope = dict["IdentificationScope"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
                self.riskLevelId = dict["RiskLevelId"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeCategoryTemplateRuleListResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeCategoryTemplateRuleListResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeCategoryTemplateRuleListResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeCategoryTemplateRuleListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCategoryTemplateRuleListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeCategoryTemplateRuleListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeColumnsRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var instanceId: Int64?

    public var instanceName: String?

    public var lang: String?

    public var name: String?

    public var pageSize: Int32?

    public var productCode: String?

    public var riskLevelId: Int64?

    public var ruleId: Int64?

    public var ruleName: String?

    public var sensLevelName: String?

    public var tableId: Int64?

    public var tableName: String?

    public override init() {
        super.init()
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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.riskLevelId != nil {
            map["RiskLevelId"] = self.riskLevelId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.sensLevelName != nil {
            map["SensLevelName"] = self.sensLevelName!
        }
        if self.tableId != nil {
            map["TableId"] = self.tableId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! Int64
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
            self.riskLevelId = dict["RiskLevelId"] as! Int64
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("SensLevelName") && dict["SensLevelName"] != nil {
            self.sensLevelName = dict["SensLevelName"] as! String
        }
        if dict.keys.contains("TableId") && dict["TableId"] != nil {
            self.tableId = dict["TableId"] as! Int64
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class DescribeColumnsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class ModelTags : Tea.TeaModel {
            public var id: Int64?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var creationTime: Int64?

        public var dataType: String?

        public var id: String?

        public var instanceId: Int64?

        public var instanceName: String?

        public var modelTags: [DescribeColumnsResponseBody.Items.ModelTags]?

        public var name: String?

        public var odpsRiskLevelName: String?

        public var odpsRiskLevelValue: Int32?

        public var productCode: String?

        public var revisionId: Int64?

        public var revisionStatus: Int64?

        public var riskLevelId: Int64?

        public var riskLevelName: String?

        public var ruleId: Int64?

        public var ruleName: String?

        public var sensLevelName: String?

        public var sensitive: Bool?

        public var tableId: Int64?

        public var tableName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.dataType != nil {
                map["DataType"] = self.dataType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.modelTags != nil {
                var tmp : [Any] = []
                for k in self.modelTags! {
                    tmp.append(k.toMap())
                }
                map["ModelTags"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.odpsRiskLevelName != nil {
                map["OdpsRiskLevelName"] = self.odpsRiskLevelName!
            }
            if self.odpsRiskLevelValue != nil {
                map["OdpsRiskLevelValue"] = self.odpsRiskLevelValue!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.revisionId != nil {
                map["RevisionId"] = self.revisionId!
            }
            if self.revisionStatus != nil {
                map["RevisionStatus"] = self.revisionStatus!
            }
            if self.riskLevelId != nil {
                map["RiskLevelId"] = self.riskLevelId!
            }
            if self.riskLevelName != nil {
                map["RiskLevelName"] = self.riskLevelName!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.sensLevelName != nil {
                map["SensLevelName"] = self.sensLevelName!
            }
            if self.sensitive != nil {
                map["Sensitive"] = self.sensitive!
            }
            if self.tableId != nil {
                map["TableId"] = self.tableId!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                self.creationTime = dict["CreationTime"] as! Int64
            }
            if dict.keys.contains("DataType") && dict["DataType"] != nil {
                self.dataType = dict["DataType"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! Int64
            }
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("ModelTags") && dict["ModelTags"] != nil {
                var tmp : [DescribeColumnsResponseBody.Items.ModelTags] = []
                for v in dict["ModelTags"] as! [Any] {
                    var model = DescribeColumnsResponseBody.Items.ModelTags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.modelTags = tmp
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OdpsRiskLevelName") && dict["OdpsRiskLevelName"] != nil {
                self.odpsRiskLevelName = dict["OdpsRiskLevelName"] as! String
            }
            if dict.keys.contains("OdpsRiskLevelValue") && dict["OdpsRiskLevelValue"] != nil {
                self.odpsRiskLevelValue = dict["OdpsRiskLevelValue"] as! Int32
            }
            if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("RevisionId") && dict["RevisionId"] != nil {
                self.revisionId = dict["RevisionId"] as! Int64
            }
            if dict.keys.contains("RevisionStatus") && dict["RevisionStatus"] != nil {
                self.revisionStatus = dict["RevisionStatus"] as! Int64
            }
            if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
                self.riskLevelId = dict["RiskLevelId"] as! Int64
            }
            if dict.keys.contains("RiskLevelName") && dict["RiskLevelName"] != nil {
                self.riskLevelName = dict["RiskLevelName"] as! String
            }
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! Int64
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("SensLevelName") && dict["SensLevelName"] != nil {
                self.sensLevelName = dict["SensLevelName"] as! String
            }
            if dict.keys.contains("Sensitive") && dict["Sensitive"] != nil {
                self.sensitive = dict["Sensitive"] as! Bool
            }
            if dict.keys.contains("TableId") && dict["TableId"] != nil {
                self.tableId = dict["TableId"] as! Int64
            }
            if dict.keys.contains("TableName") && dict["TableName"] != nil {
                self.tableName = dict["TableName"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeColumnsResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeColumnsResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeColumnsResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeColumnsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeColumnsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeColumnsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeColumnsV2Request : Tea.TeaModel {
    public var currentPage: Int32?

    public var instanceId: Int64?

    public var instanceName: String?

    public var lang: String?

    public var name: String?

    public var pageSize: Int32?

    public var productCode: String?

    public var riskLevelId: Int64?

    public var ruleId: Int64?

    public var ruleName: String?

    public var sensLevelName: String?

    public var tableId: String?

    public var tableName: String?

    public override init() {
        super.init()
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
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.riskLevelId != nil {
            map["RiskLevelId"] = self.riskLevelId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.sensLevelName != nil {
            map["SensLevelName"] = self.sensLevelName!
        }
        if self.tableId != nil {
            map["TableId"] = self.tableId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! Int64
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
            self.riskLevelId = dict["RiskLevelId"] as! Int64
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("SensLevelName") && dict["SensLevelName"] != nil {
            self.sensLevelName = dict["SensLevelName"] as! String
        }
        if dict.keys.contains("TableId") && dict["TableId"] != nil {
            self.tableId = dict["TableId"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class DescribeColumnsV2ResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class ModelTags : Tea.TeaModel {
            public var id: Int64?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var creationTime: Int64?

        public var dataType: String?

        public var id: String?

        public var instanceId: Int64?

        public var instanceName: String?

        public var modelTags: [DescribeColumnsV2ResponseBody.Items.ModelTags]?

        public var name: String?

        public var odpsRiskLevelName: String?

        public var odpsRiskLevelValue: Int32?

        public var productCode: String?

        public var revisionId: Int64?

        public var revisionStatus: Int64?

        public var riskLevelId: Int64?

        public var riskLevelName: String?

        public var ruleId: Int64?

        public var ruleName: String?

        public var sensLevelName: String?

        public var sensitive: Bool?

        public var tableId: Int64?

        public var tableName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.dataType != nil {
                map["DataType"] = self.dataType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.modelTags != nil {
                var tmp : [Any] = []
                for k in self.modelTags! {
                    tmp.append(k.toMap())
                }
                map["ModelTags"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.odpsRiskLevelName != nil {
                map["OdpsRiskLevelName"] = self.odpsRiskLevelName!
            }
            if self.odpsRiskLevelValue != nil {
                map["OdpsRiskLevelValue"] = self.odpsRiskLevelValue!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.revisionId != nil {
                map["RevisionId"] = self.revisionId!
            }
            if self.revisionStatus != nil {
                map["RevisionStatus"] = self.revisionStatus!
            }
            if self.riskLevelId != nil {
                map["RiskLevelId"] = self.riskLevelId!
            }
            if self.riskLevelName != nil {
                map["RiskLevelName"] = self.riskLevelName!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.sensLevelName != nil {
                map["SensLevelName"] = self.sensLevelName!
            }
            if self.sensitive != nil {
                map["Sensitive"] = self.sensitive!
            }
            if self.tableId != nil {
                map["TableId"] = self.tableId!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                self.creationTime = dict["CreationTime"] as! Int64
            }
            if dict.keys.contains("DataType") && dict["DataType"] != nil {
                self.dataType = dict["DataType"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! Int64
            }
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("ModelTags") && dict["ModelTags"] != nil {
                var tmp : [DescribeColumnsV2ResponseBody.Items.ModelTags] = []
                for v in dict["ModelTags"] as! [Any] {
                    var model = DescribeColumnsV2ResponseBody.Items.ModelTags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.modelTags = tmp
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OdpsRiskLevelName") && dict["OdpsRiskLevelName"] != nil {
                self.odpsRiskLevelName = dict["OdpsRiskLevelName"] as! String
            }
            if dict.keys.contains("OdpsRiskLevelValue") && dict["OdpsRiskLevelValue"] != nil {
                self.odpsRiskLevelValue = dict["OdpsRiskLevelValue"] as! Int32
            }
            if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("RevisionId") && dict["RevisionId"] != nil {
                self.revisionId = dict["RevisionId"] as! Int64
            }
            if dict.keys.contains("RevisionStatus") && dict["RevisionStatus"] != nil {
                self.revisionStatus = dict["RevisionStatus"] as! Int64
            }
            if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
                self.riskLevelId = dict["RiskLevelId"] as! Int64
            }
            if dict.keys.contains("RiskLevelName") && dict["RiskLevelName"] != nil {
                self.riskLevelName = dict["RiskLevelName"] as! String
            }
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! Int64
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("SensLevelName") && dict["SensLevelName"] != nil {
                self.sensLevelName = dict["SensLevelName"] as! String
            }
            if dict.keys.contains("Sensitive") && dict["Sensitive"] != nil {
                self.sensitive = dict["Sensitive"] as! Bool
            }
            if dict.keys.contains("TableId") && dict["TableId"] != nil {
                self.tableId = dict["TableId"] as! Int64
            }
            if dict.keys.contains("TableName") && dict["TableName"] != nil {
                self.tableName = dict["TableName"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeColumnsV2ResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeColumnsV2ResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeColumnsV2ResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeColumnsV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeColumnsV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeColumnsV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeConfigsRequest : Tea.TeaModel {
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
    }
}

public class DescribeConfigsResponseBody : Tea.TeaModel {
    public class ConfigList : Tea.TeaModel {
        public var code: String?

        public var defaultValue: String?

        public var description_: String?

        public var id: Int64?

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
            if self.defaultValue != nil {
                map["DefaultValue"] = self.defaultValue!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                self.defaultValue = dict["DefaultValue"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var configList: [DescribeConfigsResponseBody.ConfigList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configList != nil {
            var tmp : [Any] = []
            for k in self.configList! {
                tmp.append(k.toMap())
            }
            map["ConfigList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigList") && dict["ConfigList"] != nil {
            var tmp : [DescribeConfigsResponseBody.ConfigList] = []
            for v in dict["ConfigList"] as! [Any] {
                var model = DescribeConfigsResponseBody.ConfigList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.configList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDataAssetsRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var lang: String?

    public var name: String?

    public var pageSize: Int32?

    public var rangeId: Int32?

    public var riskLevels: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.rangeId != nil {
            map["RangeId"] = self.rangeId!
        }
        if self.riskLevels != nil {
            map["RiskLevels"] = self.riskLevels!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RangeId") && dict["RangeId"] != nil {
            self.rangeId = dict["RangeId"] as! Int32
        }
        if dict.keys.contains("RiskLevels") && dict["RiskLevels"] != nil {
            self.riskLevels = dict["RiskLevels"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! Int64
        }
    }
}

public class DescribeDataAssetsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var acl: String?

        public var creationTime: Int64?

        public var dataType: String?

        public var id: String?

        public var labelsec: Bool?

        public var name: String?

        public var objectKey: String?

        public var odpsRiskLevelName: String?

        public var owner: String?

        public var productCode: String?

        public var productId: String?

        public var protection: Bool?

        public var riskLevelId: Int64?

        public var riskLevelName: String?

        public var ruleName: String?

        public var sensitive: Bool?

        public var sensitiveCount: Int32?

        public var sensitiveRatio: String?

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
            if self.acl != nil {
                map["Acl"] = self.acl!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.dataType != nil {
                map["DataType"] = self.dataType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.labelsec != nil {
                map["Labelsec"] = self.labelsec!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.objectKey != nil {
                map["ObjectKey"] = self.objectKey!
            }
            if self.odpsRiskLevelName != nil {
                map["OdpsRiskLevelName"] = self.odpsRiskLevelName!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.protection != nil {
                map["Protection"] = self.protection!
            }
            if self.riskLevelId != nil {
                map["RiskLevelId"] = self.riskLevelId!
            }
            if self.riskLevelName != nil {
                map["RiskLevelName"] = self.riskLevelName!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.sensitive != nil {
                map["Sensitive"] = self.sensitive!
            }
            if self.sensitiveCount != nil {
                map["SensitiveCount"] = self.sensitiveCount!
            }
            if self.sensitiveRatio != nil {
                map["SensitiveRatio"] = self.sensitiveRatio!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Acl") && dict["Acl"] != nil {
                self.acl = dict["Acl"] as! String
            }
            if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                self.creationTime = dict["CreationTime"] as! Int64
            }
            if dict.keys.contains("DataType") && dict["DataType"] != nil {
                self.dataType = dict["DataType"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Labelsec") && dict["Labelsec"] != nil {
                self.labelsec = dict["Labelsec"] as! Bool
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ObjectKey") && dict["ObjectKey"] != nil {
                self.objectKey = dict["ObjectKey"] as! String
            }
            if dict.keys.contains("OdpsRiskLevelName") && dict["OdpsRiskLevelName"] != nil {
                self.odpsRiskLevelName = dict["OdpsRiskLevelName"] as! String
            }
            if dict.keys.contains("Owner") && dict["Owner"] != nil {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("Protection") && dict["Protection"] != nil {
                self.protection = dict["Protection"] as! Bool
            }
            if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
                self.riskLevelId = dict["RiskLevelId"] as! Int64
            }
            if dict.keys.contains("RiskLevelName") && dict["RiskLevelName"] != nil {
                self.riskLevelName = dict["RiskLevelName"] as! String
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("Sensitive") && dict["Sensitive"] != nil {
                self.sensitive = dict["Sensitive"] as! Bool
            }
            if dict.keys.contains("SensitiveCount") && dict["SensitiveCount"] != nil {
                self.sensitiveCount = dict["SensitiveCount"] as! Int32
            }
            if dict.keys.contains("SensitiveRatio") && dict["SensitiveRatio"] != nil {
                self.sensitiveRatio = dict["SensitiveRatio"] as! String
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeDataAssetsResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeDataAssetsResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeDataAssetsResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDataAssetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataAssetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDataAssetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDataLimitDetailRequest : Tea.TeaModel {
    public var featureType: Int32?

    public var id: Int64?

    public var lang: String?

    public var networkType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
            self.networkType = dict["NetworkType"] as! Int32
        }
    }
}

public class DescribeDataLimitDetailResponseBody : Tea.TeaModel {
    public class DataLimit : Tea.TeaModel {
        public var checkStatus: Int32?

        public var checkStatusName: String?

        public var gmtCreate: Int64?

        public var id: Int64?

        public var localName: String?

        public var parentId: String?

        public var port: Int32?

        public var regionId: String?

        public var resourceType: Int64?

        public var resourceTypeCode: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.checkStatusName != nil {
                map["CheckStatusName"] = self.checkStatusName!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.resourceTypeCode != nil {
                map["ResourceTypeCode"] = self.resourceTypeCode!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                self.checkStatus = dict["CheckStatus"] as! Int32
            }
            if dict.keys.contains("CheckStatusName") && dict["CheckStatusName"] != nil {
                self.checkStatusName = dict["CheckStatusName"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("ParentId") && dict["ParentId"] != nil {
                self.parentId = dict["ParentId"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! Int64
            }
            if dict.keys.contains("ResourceTypeCode") && dict["ResourceTypeCode"] != nil {
                self.resourceTypeCode = dict["ResourceTypeCode"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var dataLimit: DescribeDataLimitDetailResponseBody.DataLimit?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataLimit?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataLimit != nil {
            map["DataLimit"] = self.dataLimit?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataLimit") && dict["DataLimit"] != nil {
            var model = DescribeDataLimitDetailResponseBody.DataLimit()
            model.fromMap(dict["DataLimit"] as! [String: Any])
            self.dataLimit = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDataLimitDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataLimitDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDataLimitDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDataLimitSetRequest : Tea.TeaModel {
    public var featureType: Int32?

    public var lang: String?

    public var parentId: String?

    public var resourceType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("ParentId") && dict["ParentId"] != nil {
            self.parentId = dict["ParentId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! Int32
        }
    }
}

public class DescribeDataLimitSetResponseBody : Tea.TeaModel {
    public class DataLimitSet : Tea.TeaModel {
        public class DataLimitList : Tea.TeaModel {
            public var checkStatus: Int32?

            public var checkStatusName: String?

            public var connector: String?

            public var gmtCreate: Int64?

            public var id: Int64?

            public var localName: String?

            public var parentId: String?

            public var regionId: String?

            public var resourceType: Int64?

            public var resourceTypeCode: String?

            public var userName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkStatus != nil {
                    map["CheckStatus"] = self.checkStatus!
                }
                if self.checkStatusName != nil {
                    map["CheckStatusName"] = self.checkStatusName!
                }
                if self.connector != nil {
                    map["Connector"] = self.connector!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.localName != nil {
                    map["LocalName"] = self.localName!
                }
                if self.parentId != nil {
                    map["ParentId"] = self.parentId!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.resourceTypeCode != nil {
                    map["ResourceTypeCode"] = self.resourceTypeCode!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                    self.checkStatus = dict["CheckStatus"] as! Int32
                }
                if dict.keys.contains("CheckStatusName") && dict["CheckStatusName"] != nil {
                    self.checkStatusName = dict["CheckStatusName"] as! String
                }
                if dict.keys.contains("Connector") && dict["Connector"] != nil {
                    self.connector = dict["Connector"] as! String
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("ParentId") && dict["ParentId"] != nil {
                    self.parentId = dict["ParentId"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                    self.resourceType = dict["ResourceType"] as! Int64
                }
                if dict.keys.contains("ResourceTypeCode") && dict["ResourceTypeCode"] != nil {
                    self.resourceTypeCode = dict["ResourceTypeCode"] as! String
                }
                if dict.keys.contains("UserName") && dict["UserName"] != nil {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public class OssBucketList : Tea.TeaModel {
            public var bucketName: String?

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
                if self.bucketName != nil {
                    map["BucketName"] = self.bucketName!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BucketName") && dict["BucketName"] != nil {
                    self.bucketName = dict["BucketName"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public class RegionList : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public var dataLimitList: [DescribeDataLimitSetResponseBody.DataLimitSet.DataLimitList]?

        public var ossBucketList: [DescribeDataLimitSetResponseBody.DataLimitSet.OssBucketList]?

        public var regionList: [DescribeDataLimitSetResponseBody.DataLimitSet.RegionList]?

        public var resourceType: Int64?

        public var resourceTypeCode: String?

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
            if self.dataLimitList != nil {
                var tmp : [Any] = []
                for k in self.dataLimitList! {
                    tmp.append(k.toMap())
                }
                map["DataLimitList"] = tmp
            }
            if self.ossBucketList != nil {
                var tmp : [Any] = []
                for k in self.ossBucketList! {
                    tmp.append(k.toMap())
                }
                map["OssBucketList"] = tmp
            }
            if self.regionList != nil {
                var tmp : [Any] = []
                for k in self.regionList! {
                    tmp.append(k.toMap())
                }
                map["RegionList"] = tmp
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.resourceTypeCode != nil {
                map["ResourceTypeCode"] = self.resourceTypeCode!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataLimitList") && dict["DataLimitList"] != nil {
                var tmp : [DescribeDataLimitSetResponseBody.DataLimitSet.DataLimitList] = []
                for v in dict["DataLimitList"] as! [Any] {
                    var model = DescribeDataLimitSetResponseBody.DataLimitSet.DataLimitList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataLimitList = tmp
            }
            if dict.keys.contains("OssBucketList") && dict["OssBucketList"] != nil {
                var tmp : [DescribeDataLimitSetResponseBody.DataLimitSet.OssBucketList] = []
                for v in dict["OssBucketList"] as! [Any] {
                    var model = DescribeDataLimitSetResponseBody.DataLimitSet.OssBucketList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ossBucketList = tmp
            }
            if dict.keys.contains("RegionList") && dict["RegionList"] != nil {
                var tmp : [DescribeDataLimitSetResponseBody.DataLimitSet.RegionList] = []
                for v in dict["RegionList"] as! [Any] {
                    var model = DescribeDataLimitSetResponseBody.DataLimitSet.RegionList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.regionList = tmp
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! Int64
            }
            if dict.keys.contains("ResourceTypeCode") && dict["ResourceTypeCode"] != nil {
                self.resourceTypeCode = dict["ResourceTypeCode"] as! String
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var dataLimitSet: DescribeDataLimitSetResponseBody.DataLimitSet?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataLimitSet?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataLimitSet != nil {
            map["DataLimitSet"] = self.dataLimitSet?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataLimitSet") && dict["DataLimitSet"] != nil {
            var model = DescribeDataLimitSetResponseBody.DataLimitSet()
            model.fromMap(dict["DataLimitSet"] as! [String: Any])
            self.dataLimitSet = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDataLimitSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataLimitSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDataLimitSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDataLimitsRequest : Tea.TeaModel {
    public var auditStatus: Int32?

    public var checkStatus: Int32?

    public var currentPage: Int32?

    public var datamaskStatus: Int32?

    public var enable: Int32?

    public var endTime: Int64?

    public var engineType: String?

    public var featureType: Int32?

    public var lang: String?

    public var memberAccount: Int64?

    public var pageSize: Int32?

    public var parentId: String?

    public var resourceType: Int32?

    public var serviceRegionId: String?

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
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.checkStatus != nil {
            map["CheckStatus"] = self.checkStatus!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.datamaskStatus != nil {
            map["DatamaskStatus"] = self.datamaskStatus!
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.engineType != nil {
            map["EngineType"] = self.engineType!
        }
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.memberAccount != nil {
            map["MemberAccount"] = self.memberAccount!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceRegionId != nil {
            map["ServiceRegionId"] = self.serviceRegionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
            self.auditStatus = dict["AuditStatus"] as! Int32
        }
        if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
            self.checkStatus = dict["CheckStatus"] as! Int32
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DatamaskStatus") && dict["DatamaskStatus"] != nil {
            self.datamaskStatus = dict["DatamaskStatus"] as! Int32
        }
        if dict.keys.contains("Enable") && dict["Enable"] != nil {
            self.enable = dict["Enable"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("EngineType") && dict["EngineType"] != nil {
            self.engineType = dict["EngineType"] as! String
        }
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberAccount") && dict["MemberAccount"] != nil {
            self.memberAccount = dict["MemberAccount"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ParentId") && dict["ParentId"] != nil {
            self.parentId = dict["ParentId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! Int32
        }
        if dict.keys.contains("ServiceRegionId") && dict["ServiceRegionId"] != nil {
            self.serviceRegionId = dict["ServiceRegionId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeDataLimitsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var auditStatus: Int32?

        public var autoScan: Int32?

        public var checkStatus: Int32?

        public var checkStatusName: String?

        public var datamaskStatus: Int32?

        public var dbVersion: String?

        public var enable: Int32?

        public var engineType: String?

        public var errorCode: String?

        public var errorMessage: String?

        public var eventStatus: Int32?

        public var gmtCreate: Int64?

        public var id: Int64?

        public var instanceDescription: String?

        public var instanceId: String?

        public var lastFinishedTime: Int64?

        public var localName: String?

        public var logStoreDay: Int32?

        public var memberAccount: Int64?

        public var nextStartTime: Int64?

        public var ocrStatus: Int32?

        public var parentId: String?

        public var port: Int32?

        public var processStatus: Int32?

        public var processTotalCount: Int32?

        public var regionId: String?

        public var resourceType: Int64?

        public var resourceTypeCode: String?

        public var samplingSize: Int32?

        public var securityGroupIdList: [String]?

        public var supportAudit: Bool?

        public var supportDatamask: Bool?

        public var supportEvent: Bool?

        public var supportOcr: Bool?

        public var supportScan: Bool?

        public var tenantName: String?

        public var totalCount: Int32?

        public var userName: String?

        public var vSwitchIdList: [String]?

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
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.autoScan != nil {
                map["AutoScan"] = self.autoScan!
            }
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.checkStatusName != nil {
                map["CheckStatusName"] = self.checkStatusName!
            }
            if self.datamaskStatus != nil {
                map["DatamaskStatus"] = self.datamaskStatus!
            }
            if self.dbVersion != nil {
                map["DbVersion"] = self.dbVersion!
            }
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.eventStatus != nil {
                map["EventStatus"] = self.eventStatus!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceDescription != nil {
                map["InstanceDescription"] = self.instanceDescription!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.lastFinishedTime != nil {
                map["LastFinishedTime"] = self.lastFinishedTime!
            }
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.logStoreDay != nil {
                map["LogStoreDay"] = self.logStoreDay!
            }
            if self.memberAccount != nil {
                map["MemberAccount"] = self.memberAccount!
            }
            if self.nextStartTime != nil {
                map["NextStartTime"] = self.nextStartTime!
            }
            if self.ocrStatus != nil {
                map["OcrStatus"] = self.ocrStatus!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.processStatus != nil {
                map["ProcessStatus"] = self.processStatus!
            }
            if self.processTotalCount != nil {
                map["ProcessTotalCount"] = self.processTotalCount!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.resourceTypeCode != nil {
                map["ResourceTypeCode"] = self.resourceTypeCode!
            }
            if self.samplingSize != nil {
                map["SamplingSize"] = self.samplingSize!
            }
            if self.securityGroupIdList != nil {
                map["SecurityGroupIdList"] = self.securityGroupIdList!
            }
            if self.supportAudit != nil {
                map["SupportAudit"] = self.supportAudit!
            }
            if self.supportDatamask != nil {
                map["SupportDatamask"] = self.supportDatamask!
            }
            if self.supportEvent != nil {
                map["SupportEvent"] = self.supportEvent!
            }
            if self.supportOcr != nil {
                map["SupportOcr"] = self.supportOcr!
            }
            if self.supportScan != nil {
                map["SupportScan"] = self.supportScan!
            }
            if self.tenantName != nil {
                map["TenantName"] = self.tenantName!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.vSwitchIdList != nil {
                map["VSwitchIdList"] = self.vSwitchIdList!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
                self.auditStatus = dict["AuditStatus"] as! Int32
            }
            if dict.keys.contains("AutoScan") && dict["AutoScan"] != nil {
                self.autoScan = dict["AutoScan"] as! Int32
            }
            if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                self.checkStatus = dict["CheckStatus"] as! Int32
            }
            if dict.keys.contains("CheckStatusName") && dict["CheckStatusName"] != nil {
                self.checkStatusName = dict["CheckStatusName"] as! String
            }
            if dict.keys.contains("DatamaskStatus") && dict["DatamaskStatus"] != nil {
                self.datamaskStatus = dict["DatamaskStatus"] as! Int32
            }
            if dict.keys.contains("DbVersion") && dict["DbVersion"] != nil {
                self.dbVersion = dict["DbVersion"] as! String
            }
            if dict.keys.contains("Enable") && dict["Enable"] != nil {
                self.enable = dict["Enable"] as! Int32
            }
            if dict.keys.contains("EngineType") && dict["EngineType"] != nil {
                self.engineType = dict["EngineType"] as! String
            }
            if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("EventStatus") && dict["EventStatus"] != nil {
                self.eventStatus = dict["EventStatus"] as! Int32
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("InstanceDescription") && dict["InstanceDescription"] != nil {
                self.instanceDescription = dict["InstanceDescription"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("LastFinishedTime") && dict["LastFinishedTime"] != nil {
                self.lastFinishedTime = dict["LastFinishedTime"] as! Int64
            }
            if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("LogStoreDay") && dict["LogStoreDay"] != nil {
                self.logStoreDay = dict["LogStoreDay"] as! Int32
            }
            if dict.keys.contains("MemberAccount") && dict["MemberAccount"] != nil {
                self.memberAccount = dict["MemberAccount"] as! Int64
            }
            if dict.keys.contains("NextStartTime") && dict["NextStartTime"] != nil {
                self.nextStartTime = dict["NextStartTime"] as! Int64
            }
            if dict.keys.contains("OcrStatus") && dict["OcrStatus"] != nil {
                self.ocrStatus = dict["OcrStatus"] as! Int32
            }
            if dict.keys.contains("ParentId") && dict["ParentId"] != nil {
                self.parentId = dict["ParentId"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("ProcessStatus") && dict["ProcessStatus"] != nil {
                self.processStatus = dict["ProcessStatus"] as! Int32
            }
            if dict.keys.contains("ProcessTotalCount") && dict["ProcessTotalCount"] != nil {
                self.processTotalCount = dict["ProcessTotalCount"] as! Int32
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! Int64
            }
            if dict.keys.contains("ResourceTypeCode") && dict["ResourceTypeCode"] != nil {
                self.resourceTypeCode = dict["ResourceTypeCode"] as! String
            }
            if dict.keys.contains("SamplingSize") && dict["SamplingSize"] != nil {
                self.samplingSize = dict["SamplingSize"] as! Int32
            }
            if dict.keys.contains("SecurityGroupIdList") && dict["SecurityGroupIdList"] != nil {
                self.securityGroupIdList = dict["SecurityGroupIdList"] as! [String]
            }
            if dict.keys.contains("SupportAudit") && dict["SupportAudit"] != nil {
                self.supportAudit = dict["SupportAudit"] as! Bool
            }
            if dict.keys.contains("SupportDatamask") && dict["SupportDatamask"] != nil {
                self.supportDatamask = dict["SupportDatamask"] as! Bool
            }
            if dict.keys.contains("SupportEvent") && dict["SupportEvent"] != nil {
                self.supportEvent = dict["SupportEvent"] as! Bool
            }
            if dict.keys.contains("SupportOcr") && dict["SupportOcr"] != nil {
                self.supportOcr = dict["SupportOcr"] as! Bool
            }
            if dict.keys.contains("SupportScan") && dict["SupportScan"] != nil {
                self.supportScan = dict["SupportScan"] as! Bool
            }
            if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
                self.tenantName = dict["TenantName"] as! String
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
            if dict.keys.contains("VSwitchIdList") && dict["VSwitchIdList"] != nil {
                self.vSwitchIdList = dict["VSwitchIdList"] as! [String]
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeDataLimitsResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeDataLimitsResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeDataLimitsResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDataLimitsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataLimitsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDataLimitsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDataMaskingRunHistoryRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var dstType: Int32?

    public var endTime: Int64?

    public var lang: String?

    public var mainProcessId: Int64?

    public var pageSize: Int32?

    public var srcTableName: String?

    public var srcType: Int32?

    public var startTime: Int64?

    public var status: Int32?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.dstType != nil {
            map["DstType"] = self.dstType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.mainProcessId != nil {
            map["MainProcessId"] = self.mainProcessId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.srcTableName != nil {
            map["SrcTableName"] = self.srcTableName!
        }
        if self.srcType != nil {
            map["SrcType"] = self.srcType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DstType") && dict["DstType"] != nil {
            self.dstType = dict["DstType"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MainProcessId") && dict["MainProcessId"] != nil {
            self.mainProcessId = dict["MainProcessId"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SrcTableName") && dict["SrcTableName"] != nil {
            self.srcTableName = dict["SrcTableName"] as! String
        }
        if dict.keys.contains("SrcType") && dict["SrcType"] != nil {
            self.srcType = dict["SrcType"] as! Int32
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DescribeDataMaskingRunHistoryResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var conflictCount: Int64?

        public var dstType: Int32?

        public var dstTypeCode: String?

        public var endTime: Int64?

        public var failCode: String?

        public var failMsg: String?

        public var hasDownloadFile: Int32?

        public var hasSubProcess: Int32?

        public var id: Int64?

        public var maskingCount: Int64?

        public var percentage: Int32?

        public var runIndex: Int32?

        public var srcTableName: String?

        public var srcType: Int32?

        public var srcTypeCode: String?

        public var startTime: Int64?

        public var status: Int32?

        public var taskId: String?

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
            if self.conflictCount != nil {
                map["ConflictCount"] = self.conflictCount!
            }
            if self.dstType != nil {
                map["DstType"] = self.dstType!
            }
            if self.dstTypeCode != nil {
                map["DstTypeCode"] = self.dstTypeCode!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.failCode != nil {
                map["FailCode"] = self.failCode!
            }
            if self.failMsg != nil {
                map["FailMsg"] = self.failMsg!
            }
            if self.hasDownloadFile != nil {
                map["HasDownloadFile"] = self.hasDownloadFile!
            }
            if self.hasSubProcess != nil {
                map["HasSubProcess"] = self.hasSubProcess!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.maskingCount != nil {
                map["MaskingCount"] = self.maskingCount!
            }
            if self.percentage != nil {
                map["Percentage"] = self.percentage!
            }
            if self.runIndex != nil {
                map["RunIndex"] = self.runIndex!
            }
            if self.srcTableName != nil {
                map["SrcTableName"] = self.srcTableName!
            }
            if self.srcType != nil {
                map["SrcType"] = self.srcType!
            }
            if self.srcTypeCode != nil {
                map["SrcTypeCode"] = self.srcTypeCode!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConflictCount") && dict["ConflictCount"] != nil {
                self.conflictCount = dict["ConflictCount"] as! Int64
            }
            if dict.keys.contains("DstType") && dict["DstType"] != nil {
                self.dstType = dict["DstType"] as! Int32
            }
            if dict.keys.contains("DstTypeCode") && dict["DstTypeCode"] != nil {
                self.dstTypeCode = dict["DstTypeCode"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("FailCode") && dict["FailCode"] != nil {
                self.failCode = dict["FailCode"] as! String
            }
            if dict.keys.contains("FailMsg") && dict["FailMsg"] != nil {
                self.failMsg = dict["FailMsg"] as! String
            }
            if dict.keys.contains("HasDownloadFile") && dict["HasDownloadFile"] != nil {
                self.hasDownloadFile = dict["HasDownloadFile"] as! Int32
            }
            if dict.keys.contains("HasSubProcess") && dict["HasSubProcess"] != nil {
                self.hasSubProcess = dict["HasSubProcess"] as! Int32
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("MaskingCount") && dict["MaskingCount"] != nil {
                self.maskingCount = dict["MaskingCount"] as! Int64
            }
            if dict.keys.contains("Percentage") && dict["Percentage"] != nil {
                self.percentage = dict["Percentage"] as! Int32
            }
            if dict.keys.contains("RunIndex") && dict["RunIndex"] != nil {
                self.runIndex = dict["RunIndex"] as! Int32
            }
            if dict.keys.contains("SrcTableName") && dict["SrcTableName"] != nil {
                self.srcTableName = dict["SrcTableName"] as! String
            }
            if dict.keys.contains("SrcType") && dict["SrcType"] != nil {
                self.srcType = dict["SrcType"] as! Int32
            }
            if dict.keys.contains("SrcTypeCode") && dict["SrcTypeCode"] != nil {
                self.srcTypeCode = dict["SrcTypeCode"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! Int32
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeDataMaskingRunHistoryResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeDataMaskingRunHistoryResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeDataMaskingRunHistoryResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDataMaskingRunHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataMaskingRunHistoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDataMaskingRunHistoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDataMaskingTasksRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var dstType: Int32?

    public var endTime: Int64?

    public var lang: String?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dstType != nil {
            map["DstType"] = self.dstType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DstType") && dict["DstType"] != nil {
            self.dstType = dict["DstType"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") && dict["SearchKey"] != nil {
            self.searchKey = dict["SearchKey"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeDataMaskingTasksResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var dstMemberAccount: Int64?

        public var dstPath: String?

        public var dstType: Int32?

        public var dstTypeCode: String?

        public var gmtCreate: Int64?

        public var hasUnfinishProcess: Bool?

        public var id: Int64?

        public var originalTable: Bool?

        public var owner: String?

        public var runCount: Int32?

        public var srcMemberAccount: Int64?

        public var srcPath: String?

        public var srcType: Int32?

        public var srcTypeCode: String?

        public var status: Int32?

        public var taskId: String?

        public var taskName: String?

        public var triggerType: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dstMemberAccount != nil {
                map["DstMemberAccount"] = self.dstMemberAccount!
            }
            if self.dstPath != nil {
                map["DstPath"] = self.dstPath!
            }
            if self.dstType != nil {
                map["DstType"] = self.dstType!
            }
            if self.dstTypeCode != nil {
                map["DstTypeCode"] = self.dstTypeCode!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.hasUnfinishProcess != nil {
                map["HasUnfinishProcess"] = self.hasUnfinishProcess!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.originalTable != nil {
                map["OriginalTable"] = self.originalTable!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.runCount != nil {
                map["RunCount"] = self.runCount!
            }
            if self.srcMemberAccount != nil {
                map["SrcMemberAccount"] = self.srcMemberAccount!
            }
            if self.srcPath != nil {
                map["SrcPath"] = self.srcPath!
            }
            if self.srcType != nil {
                map["SrcType"] = self.srcType!
            }
            if self.srcTypeCode != nil {
                map["SrcTypeCode"] = self.srcTypeCode!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.triggerType != nil {
                map["TriggerType"] = self.triggerType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DstMemberAccount") && dict["DstMemberAccount"] != nil {
                self.dstMemberAccount = dict["DstMemberAccount"] as! Int64
            }
            if dict.keys.contains("DstPath") && dict["DstPath"] != nil {
                self.dstPath = dict["DstPath"] as! String
            }
            if dict.keys.contains("DstType") && dict["DstType"] != nil {
                self.dstType = dict["DstType"] as! Int32
            }
            if dict.keys.contains("DstTypeCode") && dict["DstTypeCode"] != nil {
                self.dstTypeCode = dict["DstTypeCode"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("HasUnfinishProcess") && dict["HasUnfinishProcess"] != nil {
                self.hasUnfinishProcess = dict["HasUnfinishProcess"] as! Bool
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("OriginalTable") && dict["OriginalTable"] != nil {
                self.originalTable = dict["OriginalTable"] as! Bool
            }
            if dict.keys.contains("Owner") && dict["Owner"] != nil {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("RunCount") && dict["RunCount"] != nil {
                self.runCount = dict["RunCount"] as! Int32
            }
            if dict.keys.contains("SrcMemberAccount") && dict["SrcMemberAccount"] != nil {
                self.srcMemberAccount = dict["SrcMemberAccount"] as! Int64
            }
            if dict.keys.contains("SrcPath") && dict["SrcPath"] != nil {
                self.srcPath = dict["SrcPath"] as! String
            }
            if dict.keys.contains("SrcType") && dict["SrcType"] != nil {
                self.srcType = dict["SrcType"] as! Int32
            }
            if dict.keys.contains("SrcTypeCode") && dict["SrcTypeCode"] != nil {
                self.srcTypeCode = dict["SrcTypeCode"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("TriggerType") && dict["TriggerType"] != nil {
                self.triggerType = dict["TriggerType"] as! Int32
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeDataMaskingTasksResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeDataMaskingTasksResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeDataMaskingTasksResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDataMaskingTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataMaskingTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDataMaskingTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDataObjectColumnDetailRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var featureType: Int32?

    public var id: Int64?

    public var lang: String?

    public var pageSize: Int32?

    public var productId: Int64?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! Int64
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class DescribeDataObjectColumnDetailResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class ModelTags : Tea.TeaModel {
            public var id: Int64?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var categories: [String]?

        public var columnComment: String?

        public var columnName: String?

        public var dataType: String?

        public var id: String?

        public var modelTags: [DescribeDataObjectColumnDetailResponseBody.Items.ModelTags]?

        public var primaryKey: Bool?

        public var riskLevelId: Int64?

        public var riskLevelName: String?

        public var ruleId: Int64?

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
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            if self.columnComment != nil {
                map["ColumnComment"] = self.columnComment!
            }
            if self.columnName != nil {
                map["ColumnName"] = self.columnName!
            }
            if self.dataType != nil {
                map["DataType"] = self.dataType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.modelTags != nil {
                var tmp : [Any] = []
                for k in self.modelTags! {
                    tmp.append(k.toMap())
                }
                map["ModelTags"] = tmp
            }
            if self.primaryKey != nil {
                map["PrimaryKey"] = self.primaryKey!
            }
            if self.riskLevelId != nil {
                map["RiskLevelId"] = self.riskLevelId!
            }
            if self.riskLevelName != nil {
                map["RiskLevelName"] = self.riskLevelName!
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
            if dict.keys.contains("Categories") && dict["Categories"] != nil {
                self.categories = dict["Categories"] as! [String]
            }
            if dict.keys.contains("ColumnComment") && dict["ColumnComment"] != nil {
                self.columnComment = dict["ColumnComment"] as! String
            }
            if dict.keys.contains("ColumnName") && dict["ColumnName"] != nil {
                self.columnName = dict["ColumnName"] as! String
            }
            if dict.keys.contains("DataType") && dict["DataType"] != nil {
                self.dataType = dict["DataType"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("ModelTags") && dict["ModelTags"] != nil {
                var tmp : [DescribeDataObjectColumnDetailResponseBody.Items.ModelTags] = []
                for v in dict["ModelTags"] as! [Any] {
                    var model = DescribeDataObjectColumnDetailResponseBody.Items.ModelTags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.modelTags = tmp
            }
            if dict.keys.contains("PrimaryKey") && dict["PrimaryKey"] != nil {
                self.primaryKey = dict["PrimaryKey"] as! Bool
            }
            if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
                self.riskLevelId = dict["RiskLevelId"] as! Int64
            }
            if dict.keys.contains("RiskLevelName") && dict["RiskLevelName"] != nil {
                self.riskLevelName = dict["RiskLevelName"] as! String
            }
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! Int64
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeDataObjectColumnDetailResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeDataObjectColumnDetailResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeDataObjectColumnDetailResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDataObjectColumnDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataObjectColumnDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDataObjectColumnDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDataObjectColumnDetailV2Request : Tea.TeaModel {
    public var currentPage: Int32?

    public var featureType: Int32?

    public var id: String?

    public var lang: String?

    public var pageSize: Int32?

    public var productId: Int64?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! Int64
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class DescribeDataObjectColumnDetailV2ResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class ModelTags : Tea.TeaModel {
            public var id: Int64?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var categories: [String]?

        public var columnComment: String?

        public var columnName: String?

        public var dataType: String?

        public var id: String?

        public var modelTags: [DescribeDataObjectColumnDetailV2ResponseBody.Items.ModelTags]?

        public var primaryKey: Bool?

        public var riskLevelId: Int64?

        public var riskLevelName: String?

        public var ruleId: Int64?

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
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            if self.columnComment != nil {
                map["ColumnComment"] = self.columnComment!
            }
            if self.columnName != nil {
                map["ColumnName"] = self.columnName!
            }
            if self.dataType != nil {
                map["DataType"] = self.dataType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.modelTags != nil {
                var tmp : [Any] = []
                for k in self.modelTags! {
                    tmp.append(k.toMap())
                }
                map["ModelTags"] = tmp
            }
            if self.primaryKey != nil {
                map["PrimaryKey"] = self.primaryKey!
            }
            if self.riskLevelId != nil {
                map["RiskLevelId"] = self.riskLevelId!
            }
            if self.riskLevelName != nil {
                map["RiskLevelName"] = self.riskLevelName!
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
            if dict.keys.contains("Categories") && dict["Categories"] != nil {
                self.categories = dict["Categories"] as! [String]
            }
            if dict.keys.contains("ColumnComment") && dict["ColumnComment"] != nil {
                self.columnComment = dict["ColumnComment"] as! String
            }
            if dict.keys.contains("ColumnName") && dict["ColumnName"] != nil {
                self.columnName = dict["ColumnName"] as! String
            }
            if dict.keys.contains("DataType") && dict["DataType"] != nil {
                self.dataType = dict["DataType"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("ModelTags") && dict["ModelTags"] != nil {
                var tmp : [DescribeDataObjectColumnDetailV2ResponseBody.Items.ModelTags] = []
                for v in dict["ModelTags"] as! [Any] {
                    var model = DescribeDataObjectColumnDetailV2ResponseBody.Items.ModelTags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.modelTags = tmp
            }
            if dict.keys.contains("PrimaryKey") && dict["PrimaryKey"] != nil {
                self.primaryKey = dict["PrimaryKey"] as! Bool
            }
            if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
                self.riskLevelId = dict["RiskLevelId"] as! Int64
            }
            if dict.keys.contains("RiskLevelName") && dict["RiskLevelName"] != nil {
                self.riskLevelName = dict["RiskLevelName"] as! String
            }
            if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                self.ruleId = dict["RuleId"] as! Int64
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeDataObjectColumnDetailV2ResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeDataObjectColumnDetailV2ResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeDataObjectColumnDetailV2ResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDataObjectColumnDetailV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataObjectColumnDetailV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDataObjectColumnDetailV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDataObjectsRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var domainId: Int64?

    public var featureType: Int32?

    public var fileCategoryCode: Int64?

    public var fileType: Int64?

    public var instanceId: String?

    public var lang: String?

    public var memberAccount: Int64?

    public var modelIds: String?

    public var modelTagIds: String?

    public var pageSize: Int32?

    public var parentCategoryIds: String?

    public var productIds: String?

    public var queryName: String?

    public var riskLevels: String?

    public var serviceRegionId: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.fileCategoryCode != nil {
            map["FileCategoryCode"] = self.fileCategoryCode!
        }
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.memberAccount != nil {
            map["MemberAccount"] = self.memberAccount!
        }
        if self.modelIds != nil {
            map["ModelIds"] = self.modelIds!
        }
        if self.modelTagIds != nil {
            map["ModelTagIds"] = self.modelTagIds!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parentCategoryIds != nil {
            map["ParentCategoryIds"] = self.parentCategoryIds!
        }
        if self.productIds != nil {
            map["ProductIds"] = self.productIds!
        }
        if self.queryName != nil {
            map["QueryName"] = self.queryName!
        }
        if self.riskLevels != nil {
            map["RiskLevels"] = self.riskLevels!
        }
        if self.serviceRegionId != nil {
            map["ServiceRegionId"] = self.serviceRegionId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DomainId") && dict["DomainId"] != nil {
            self.domainId = dict["DomainId"] as! Int64
        }
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("FileCategoryCode") && dict["FileCategoryCode"] != nil {
            self.fileCategoryCode = dict["FileCategoryCode"] as! Int64
        }
        if dict.keys.contains("FileType") && dict["FileType"] != nil {
            self.fileType = dict["FileType"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberAccount") && dict["MemberAccount"] != nil {
            self.memberAccount = dict["MemberAccount"] as! Int64
        }
        if dict.keys.contains("ModelIds") && dict["ModelIds"] != nil {
            self.modelIds = dict["ModelIds"] as! String
        }
        if dict.keys.contains("ModelTagIds") && dict["ModelTagIds"] != nil {
            self.modelTagIds = dict["ModelTagIds"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ParentCategoryIds") && dict["ParentCategoryIds"] != nil {
            self.parentCategoryIds = dict["ParentCategoryIds"] as! String
        }
        if dict.keys.contains("ProductIds") && dict["ProductIds"] != nil {
            self.productIds = dict["ProductIds"] as! String
        }
        if dict.keys.contains("QueryName") && dict["QueryName"] != nil {
            self.queryName = dict["QueryName"] as! String
        }
        if dict.keys.contains("RiskLevels") && dict["RiskLevels"] != nil {
            self.riskLevels = dict["RiskLevels"] as! String
        }
        if dict.keys.contains("ServiceRegionId") && dict["ServiceRegionId"] != nil {
            self.serviceRegionId = dict["ServiceRegionId"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class DescribeDataObjectsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class ModelTags : Tea.TeaModel {
            public var id: Int64?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public class RuleList : Tea.TeaModel {
            public var riskLevelId: Int64?

            public var riskLevelName: String?

            public var ruleCount: Int32?

            public var ruleId: Int64?

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
                if self.riskLevelId != nil {
                    map["RiskLevelId"] = self.riskLevelId!
                }
                if self.riskLevelName != nil {
                    map["RiskLevelName"] = self.riskLevelName!
                }
                if self.ruleCount != nil {
                    map["RuleCount"] = self.ruleCount!
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
                if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
                    self.riskLevelId = dict["RiskLevelId"] as! Int64
                }
                if dict.keys.contains("RiskLevelName") && dict["RiskLevelName"] != nil {
                    self.riskLevelName = dict["RiskLevelName"] as! String
                }
                if dict.keys.contains("RuleCount") && dict["RuleCount"] != nil {
                    self.ruleCount = dict["RuleCount"] as! Int32
                }
                if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
                    self.ruleId = dict["RuleId"] as! Int64
                }
                if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                    self.ruleName = dict["RuleName"] as! String
                }
            }
        }
        public var categories: [String]?

        public var id: String?

        public var instanceDescription: String?

        public var instanceId: String?

        public var lastScanTime: Int64?

        public var memberAccount: Int64?

        public var modelTags: [DescribeDataObjectsResponseBody.Items.ModelTags]?

        public var name: String?

        public var objectFileCategory: String?

        public var objectType: String?

        public var path: String?

        public var productCode: String?

        public var productId: Int64?

        public var regionName: String?

        public var ruleList: [DescribeDataObjectsResponseBody.Items.RuleList]?

        public var sensitiveCount: Int32?

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
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceDescription != nil {
                map["InstanceDescription"] = self.instanceDescription!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.lastScanTime != nil {
                map["LastScanTime"] = self.lastScanTime!
            }
            if self.memberAccount != nil {
                map["MemberAccount"] = self.memberAccount!
            }
            if self.modelTags != nil {
                var tmp : [Any] = []
                for k in self.modelTags! {
                    tmp.append(k.toMap())
                }
                map["ModelTags"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.objectFileCategory != nil {
                map["ObjectFileCategory"] = self.objectFileCategory!
            }
            if self.objectType != nil {
                map["ObjectType"] = self.objectType!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.regionName != nil {
                map["RegionName"] = self.regionName!
            }
            if self.ruleList != nil {
                var tmp : [Any] = []
                for k in self.ruleList! {
                    tmp.append(k.toMap())
                }
                map["RuleList"] = tmp
            }
            if self.sensitiveCount != nil {
                map["SensitiveCount"] = self.sensitiveCount!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Categories") && dict["Categories"] != nil {
                self.categories = dict["Categories"] as! [String]
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("InstanceDescription") && dict["InstanceDescription"] != nil {
                self.instanceDescription = dict["InstanceDescription"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("LastScanTime") && dict["LastScanTime"] != nil {
                self.lastScanTime = dict["LastScanTime"] as! Int64
            }
            if dict.keys.contains("MemberAccount") && dict["MemberAccount"] != nil {
                self.memberAccount = dict["MemberAccount"] as! Int64
            }
            if dict.keys.contains("ModelTags") && dict["ModelTags"] != nil {
                var tmp : [DescribeDataObjectsResponseBody.Items.ModelTags] = []
                for v in dict["ModelTags"] as! [Any] {
                    var model = DescribeDataObjectsResponseBody.Items.ModelTags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.modelTags = tmp
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ObjectFileCategory") && dict["ObjectFileCategory"] != nil {
                self.objectFileCategory = dict["ObjectFileCategory"] as! String
            }
            if dict.keys.contains("ObjectType") && dict["ObjectType"] != nil {
                self.objectType = dict["ObjectType"] as! String
            }
            if dict.keys.contains("Path") && dict["Path"] != nil {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! Int64
            }
            if dict.keys.contains("RegionName") && dict["RegionName"] != nil {
                self.regionName = dict["RegionName"] as! String
            }
            if dict.keys.contains("RuleList") && dict["RuleList"] != nil {
                var tmp : [DescribeDataObjectsResponseBody.Items.RuleList] = []
                for v in dict["RuleList"] as! [Any] {
                    var model = DescribeDataObjectsResponseBody.Items.RuleList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ruleList = tmp
            }
            if dict.keys.contains("SensitiveCount") && dict["SensitiveCount"] != nil {
                self.sensitiveCount = dict["SensitiveCount"] as! Int32
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! Int64
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeDataObjectsResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeDataObjectsResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeDataObjectsResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeDataObjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataObjectsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDataObjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDocTypesRequest : Tea.TeaModel {
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
    }
}

public class DescribeDocTypesResponseBody : Tea.TeaModel {
    public class DocTypeList : Tea.TeaModel {
        public var code: Int64?

        public var id: Int64?

        public var name: String?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! Int64
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var docTypeList: [DescribeDocTypesResponseBody.DocTypeList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.docTypeList != nil {
            var tmp : [Any] = []
            for k in self.docTypeList! {
                tmp.append(k.toMap())
            }
            map["DocTypeList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DocTypeList") && dict["DocTypeList"] != nil {
            var tmp : [DescribeDocTypesResponseBody.DocTypeList] = []
            for v in dict["DocTypeList"] as! [Any] {
                var model = DescribeDocTypesResponseBody.DocTypeList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.docTypeList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDocTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDocTypesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDocTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEventDetailRequest : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
    }
}

public class DescribeEventDetailResponseBody : Tea.TeaModel {
    public class Event : Tea.TeaModel {
        public class Detail : Tea.TeaModel {
            public class Chart : Tea.TeaModel {
                public class Data : Tea.TeaModel {
                    public var x: [String]?

                    public var y: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.x != nil {
                            map["X"] = self.x!
                        }
                        if self.y != nil {
                            map["Y"] = self.y!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("X") && dict["X"] != nil {
                            self.x = dict["X"] as! [String]
                        }
                        if dict.keys.contains("Y") && dict["Y"] != nil {
                            self.y = dict["Y"] as! [String]
                        }
                    }
                }
                public var data: DescribeEventDetailResponseBody.Event.Detail.Chart.Data?

                public var label: String?

                public var type: String?

                public var XLabel: String?

                public var YLabel: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.data?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.data != nil {
                        map["Data"] = self.data?.toMap()
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.XLabel != nil {
                        map["XLabel"] = self.XLabel!
                    }
                    if self.YLabel != nil {
                        map["YLabel"] = self.YLabel!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Data") && dict["Data"] != nil {
                        var model = DescribeEventDetailResponseBody.Event.Detail.Chart.Data()
                        model.fromMap(dict["Data"] as! [String: Any])
                        self.data = model
                    }
                    if dict.keys.contains("Label") && dict["Label"] != nil {
                        self.label = dict["Label"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("XLabel") && dict["XLabel"] != nil {
                        self.XLabel = dict["XLabel"] as! String
                    }
                    if dict.keys.contains("YLabel") && dict["YLabel"] != nil {
                        self.YLabel = dict["YLabel"] as! String
                    }
                }
            }
            public class Content : Tea.TeaModel {
                public var label: String?

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
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Label") && dict["Label"] != nil {
                        self.label = dict["Label"] as! String
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public class ResourceInfo : Tea.TeaModel {
                public var label: String?

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
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Label") && dict["Label"] != nil {
                        self.label = dict["Label"] as! String
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var chart: [DescribeEventDetailResponseBody.Event.Detail.Chart]?

            public var content: [DescribeEventDetailResponseBody.Event.Detail.Content]?

            public var resourceInfo: [DescribeEventDetailResponseBody.Event.Detail.ResourceInfo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chart != nil {
                    var tmp : [Any] = []
                    for k in self.chart! {
                        tmp.append(k.toMap())
                    }
                    map["Chart"] = tmp
                }
                if self.content != nil {
                    var tmp : [Any] = []
                    for k in self.content! {
                        tmp.append(k.toMap())
                    }
                    map["Content"] = tmp
                }
                if self.resourceInfo != nil {
                    var tmp : [Any] = []
                    for k in self.resourceInfo! {
                        tmp.append(k.toMap())
                    }
                    map["ResourceInfo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Chart") && dict["Chart"] != nil {
                    var tmp : [DescribeEventDetailResponseBody.Event.Detail.Chart] = []
                    for v in dict["Chart"] as! [Any] {
                        var model = DescribeEventDetailResponseBody.Event.Detail.Chart()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.chart = tmp
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    var tmp : [DescribeEventDetailResponseBody.Event.Detail.Content] = []
                    for v in dict["Content"] as! [Any] {
                        var model = DescribeEventDetailResponseBody.Event.Detail.Content()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.content = tmp
                }
                if dict.keys.contains("ResourceInfo") && dict["ResourceInfo"] != nil {
                    var tmp : [DescribeEventDetailResponseBody.Event.Detail.ResourceInfo] = []
                    for v in dict["ResourceInfo"] as! [Any] {
                        var model = DescribeEventDetailResponseBody.Event.Detail.ResourceInfo()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.resourceInfo = tmp
                }
            }
        }
        public class HandleInfoList : Tea.TeaModel {
            public var currentValue: String?

            public var disableTime: Int64?

            public var enableTime: Int64?

            public var handlerName: String?

            public var handlerType: String?

            public var handlerValue: Int32?

            public var id: Int64?

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
                if self.currentValue != nil {
                    map["CurrentValue"] = self.currentValue!
                }
                if self.disableTime != nil {
                    map["DisableTime"] = self.disableTime!
                }
                if self.enableTime != nil {
                    map["EnableTime"] = self.enableTime!
                }
                if self.handlerName != nil {
                    map["HandlerName"] = self.handlerName!
                }
                if self.handlerType != nil {
                    map["HandlerType"] = self.handlerType!
                }
                if self.handlerValue != nil {
                    map["HandlerValue"] = self.handlerValue!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrentValue") && dict["CurrentValue"] != nil {
                    self.currentValue = dict["CurrentValue"] as! String
                }
                if dict.keys.contains("DisableTime") && dict["DisableTime"] != nil {
                    self.disableTime = dict["DisableTime"] as! Int64
                }
                if dict.keys.contains("EnableTime") && dict["EnableTime"] != nil {
                    self.enableTime = dict["EnableTime"] as! Int64
                }
                if dict.keys.contains("HandlerName") && dict["HandlerName"] != nil {
                    self.handlerName = dict["HandlerName"] as! String
                }
                if dict.keys.contains("HandlerType") && dict["HandlerType"] != nil {
                    self.handlerType = dict["HandlerType"] as! String
                }
                if dict.keys.contains("HandlerValue") && dict["HandlerValue"] != nil {
                    self.handlerValue = dict["HandlerValue"] as! Int32
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
            }
        }
        public var alertTime: Int64?

        public var backed: Bool?

        public var dataInstance: String?

        public var dealDisplayName: String?

        public var dealLoginName: String?

        public var dealReason: String?

        public var dealTime: Int64?

        public var dealUserId: Int64?

        public var detail: DescribeEventDetailResponseBody.Event.Detail?

        public var displayName: String?

        public var eventTime: Int64?

        public var handleInfoList: [DescribeEventDetailResponseBody.Event.HandleInfoList]?

        public var id: Int64?

        public var logDetail: String?

        public var loginName: String?

        public var productCode: String?

        public var status: Int32?

        public var statusName: String?

        public var subTypeCode: String?

        public var subTypeName: String?

        public var typeCode: String?

        public var typeName: String?

        public var userId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.detail?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertTime != nil {
                map["AlertTime"] = self.alertTime!
            }
            if self.backed != nil {
                map["Backed"] = self.backed!
            }
            if self.dataInstance != nil {
                map["DataInstance"] = self.dataInstance!
            }
            if self.dealDisplayName != nil {
                map["DealDisplayName"] = self.dealDisplayName!
            }
            if self.dealLoginName != nil {
                map["DealLoginName"] = self.dealLoginName!
            }
            if self.dealReason != nil {
                map["DealReason"] = self.dealReason!
            }
            if self.dealTime != nil {
                map["DealTime"] = self.dealTime!
            }
            if self.dealUserId != nil {
                map["DealUserId"] = self.dealUserId!
            }
            if self.detail != nil {
                map["Detail"] = self.detail?.toMap()
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.eventTime != nil {
                map["EventTime"] = self.eventTime!
            }
            if self.handleInfoList != nil {
                var tmp : [Any] = []
                for k in self.handleInfoList! {
                    tmp.append(k.toMap())
                }
                map["HandleInfoList"] = tmp
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.logDetail != nil {
                map["LogDetail"] = self.logDetail!
            }
            if self.loginName != nil {
                map["LoginName"] = self.loginName!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusName != nil {
                map["StatusName"] = self.statusName!
            }
            if self.subTypeCode != nil {
                map["SubTypeCode"] = self.subTypeCode!
            }
            if self.subTypeName != nil {
                map["SubTypeName"] = self.subTypeName!
            }
            if self.typeCode != nil {
                map["TypeCode"] = self.typeCode!
            }
            if self.typeName != nil {
                map["TypeName"] = self.typeName!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlertTime") && dict["AlertTime"] != nil {
                self.alertTime = dict["AlertTime"] as! Int64
            }
            if dict.keys.contains("Backed") && dict["Backed"] != nil {
                self.backed = dict["Backed"] as! Bool
            }
            if dict.keys.contains("DataInstance") && dict["DataInstance"] != nil {
                self.dataInstance = dict["DataInstance"] as! String
            }
            if dict.keys.contains("DealDisplayName") && dict["DealDisplayName"] != nil {
                self.dealDisplayName = dict["DealDisplayName"] as! String
            }
            if dict.keys.contains("DealLoginName") && dict["DealLoginName"] != nil {
                self.dealLoginName = dict["DealLoginName"] as! String
            }
            if dict.keys.contains("DealReason") && dict["DealReason"] != nil {
                self.dealReason = dict["DealReason"] as! String
            }
            if dict.keys.contains("DealTime") && dict["DealTime"] != nil {
                self.dealTime = dict["DealTime"] as! Int64
            }
            if dict.keys.contains("DealUserId") && dict["DealUserId"] != nil {
                self.dealUserId = dict["DealUserId"] as! Int64
            }
            if dict.keys.contains("Detail") && dict["Detail"] != nil {
                var model = DescribeEventDetailResponseBody.Event.Detail()
                model.fromMap(dict["Detail"] as! [String: Any])
                self.detail = model
            }
            if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("EventTime") && dict["EventTime"] != nil {
                self.eventTime = dict["EventTime"] as! Int64
            }
            if dict.keys.contains("HandleInfoList") && dict["HandleInfoList"] != nil {
                var tmp : [DescribeEventDetailResponseBody.Event.HandleInfoList] = []
                for v in dict["HandleInfoList"] as! [Any] {
                    var model = DescribeEventDetailResponseBody.Event.HandleInfoList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.handleInfoList = tmp
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("LogDetail") && dict["LogDetail"] != nil {
                self.logDetail = dict["LogDetail"] as! String
            }
            if dict.keys.contains("LoginName") && dict["LoginName"] != nil {
                self.loginName = dict["LoginName"] as! String
            }
            if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("StatusName") && dict["StatusName"] != nil {
                self.statusName = dict["StatusName"] as! String
            }
            if dict.keys.contains("SubTypeCode") && dict["SubTypeCode"] != nil {
                self.subTypeCode = dict["SubTypeCode"] as! String
            }
            if dict.keys.contains("SubTypeName") && dict["SubTypeName"] != nil {
                self.subTypeName = dict["SubTypeName"] as! String
            }
            if dict.keys.contains("TypeCode") && dict["TypeCode"] != nil {
                self.typeCode = dict["TypeCode"] as! String
            }
            if dict.keys.contains("TypeName") && dict["TypeName"] != nil {
                self.typeName = dict["TypeName"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! Int64
            }
        }
    }
    public var event: DescribeEventDetailResponseBody.Event?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.event?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.event != nil {
            map["Event"] = self.event?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Event") && dict["Event"] != nil {
            var model = DescribeEventDetailResponseBody.Event()
            model.fromMap(dict["Event"] as! [String: Any])
            self.event = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeEventDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEventDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeEventDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEventTypesRequest : Tea.TeaModel {
    public var featureType: Int32?

    public var lang: String?

    public var parentTypeId: Int64?

    public var resourceId: Int32?

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
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.parentTypeId != nil {
            map["ParentTypeId"] = self.parentTypeId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("ParentTypeId") && dict["ParentTypeId"] != nil {
            self.parentTypeId = dict["ParentTypeId"] as! Int64
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! Int32
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class DescribeEventTypesResponseBody : Tea.TeaModel {
    public class EventTypeList : Tea.TeaModel {
        public class SubTypeList : Tea.TeaModel {
            public var adaptedProduct: String?

            public var code: String?

            public var configCode: String?

            public var configContentType: Int32?

            public var configDescription: String?

            public var configValue: String?

            public var description_: String?

            public var eventHitCount: Int32?

            public var id: Int64?

            public var name: String?

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
                if self.adaptedProduct != nil {
                    map["AdaptedProduct"] = self.adaptedProduct!
                }
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.configCode != nil {
                    map["ConfigCode"] = self.configCode!
                }
                if self.configContentType != nil {
                    map["ConfigContentType"] = self.configContentType!
                }
                if self.configDescription != nil {
                    map["ConfigDescription"] = self.configDescription!
                }
                if self.configValue != nil {
                    map["ConfigValue"] = self.configValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.eventHitCount != nil {
                    map["EventHitCount"] = self.eventHitCount!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AdaptedProduct") && dict["AdaptedProduct"] != nil {
                    self.adaptedProduct = dict["AdaptedProduct"] as! String
                }
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("ConfigCode") && dict["ConfigCode"] != nil {
                    self.configCode = dict["ConfigCode"] as! String
                }
                if dict.keys.contains("ConfigContentType") && dict["ConfigContentType"] != nil {
                    self.configContentType = dict["ConfigContentType"] as! Int32
                }
                if dict.keys.contains("ConfigDescription") && dict["ConfigDescription"] != nil {
                    self.configDescription = dict["ConfigDescription"] as! String
                }
                if dict.keys.contains("ConfigValue") && dict["ConfigValue"] != nil {
                    self.configValue = dict["ConfigValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EventHitCount") && dict["EventHitCount"] != nil {
                    self.eventHitCount = dict["EventHitCount"] as! Int32
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
            }
        }
        public var code: String?

        public var description_: String?

        public var id: Int64?

        public var name: String?

        public var subTypeList: [DescribeEventTypesResponseBody.EventTypeList.SubTypeList]?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.subTypeList != nil {
                var tmp : [Any] = []
                for k in self.subTypeList! {
                    tmp.append(k.toMap())
                }
                map["SubTypeList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SubTypeList") && dict["SubTypeList"] != nil {
                var tmp : [DescribeEventTypesResponseBody.EventTypeList.SubTypeList] = []
                for v in dict["SubTypeList"] as! [Any] {
                    var model = DescribeEventTypesResponseBody.EventTypeList.SubTypeList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subTypeList = tmp
            }
        }
    }
    public var eventTypeList: [DescribeEventTypesResponseBody.EventTypeList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventTypeList != nil {
            var tmp : [Any] = []
            for k in self.eventTypeList! {
                tmp.append(k.toMap())
            }
            map["EventTypeList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventTypeList") && dict["EventTypeList"] != nil {
            var tmp : [DescribeEventTypesResponseBody.EventTypeList] = []
            for v in dict["EventTypeList"] as! [Any] {
                var model = DescribeEventTypesResponseBody.EventTypeList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.eventTypeList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeEventTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEventTypesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeEventTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEventsRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var dealUserId: String?

    public var endTime: String?

    public var id: Int64?

    public var instanceName: String?

    public var lang: String?

    public var pageSize: Int32?

    public var productCode: String?

    public var startTime: String?

    public var status: String?

    public var subTypeCode: String?

    public var targetProductCode: String?

    public var typeCode: String?

    public var userId: Int64?

    public var userName: String?

    public var warnLevel: Int32?

    public override init() {
        super.init()
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
        if self.dealUserId != nil {
            map["DealUserId"] = self.dealUserId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subTypeCode != nil {
            map["SubTypeCode"] = self.subTypeCode!
        }
        if self.targetProductCode != nil {
            map["TargetProductCode"] = self.targetProductCode!
        }
        if self.typeCode != nil {
            map["TypeCode"] = self.typeCode!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.warnLevel != nil {
            map["WarnLevel"] = self.warnLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DealUserId") && dict["DealUserId"] != nil {
            self.dealUserId = dict["DealUserId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SubTypeCode") && dict["SubTypeCode"] != nil {
            self.subTypeCode = dict["SubTypeCode"] as! String
        }
        if dict.keys.contains("TargetProductCode") && dict["TargetProductCode"] != nil {
            self.targetProductCode = dict["TargetProductCode"] as! String
        }
        if dict.keys.contains("TypeCode") && dict["TypeCode"] != nil {
            self.typeCode = dict["TypeCode"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! Int64
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("WarnLevel") && dict["WarnLevel"] != nil {
            self.warnLevel = dict["WarnLevel"] as! Int32
        }
    }
}

public class DescribeEventsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var alertTime: Int64?

        public var backed: Bool?

        public var dealDisplayName: String?

        public var dealLoginName: String?

        public var dealTime: Int64?

        public var dealUserId: Int64?

        public var displayName: String?

        public var eventTime: Int64?

        public var id: Int64?

        public var loginName: String?

        public var productCode: String?

        public var status: Int32?

        public var statusName: String?

        public var subTypeCode: String?

        public var subTypeName: String?

        public var targetProductCode: String?

        public var typeCode: String?

        public var typeName: String?

        public var userId: Int64?

        public var warnLevel: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertTime != nil {
                map["AlertTime"] = self.alertTime!
            }
            if self.backed != nil {
                map["Backed"] = self.backed!
            }
            if self.dealDisplayName != nil {
                map["DealDisplayName"] = self.dealDisplayName!
            }
            if self.dealLoginName != nil {
                map["DealLoginName"] = self.dealLoginName!
            }
            if self.dealTime != nil {
                map["DealTime"] = self.dealTime!
            }
            if self.dealUserId != nil {
                map["DealUserId"] = self.dealUserId!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.eventTime != nil {
                map["EventTime"] = self.eventTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.loginName != nil {
                map["LoginName"] = self.loginName!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusName != nil {
                map["StatusName"] = self.statusName!
            }
            if self.subTypeCode != nil {
                map["SubTypeCode"] = self.subTypeCode!
            }
            if self.subTypeName != nil {
                map["SubTypeName"] = self.subTypeName!
            }
            if self.targetProductCode != nil {
                map["TargetProductCode"] = self.targetProductCode!
            }
            if self.typeCode != nil {
                map["TypeCode"] = self.typeCode!
            }
            if self.typeName != nil {
                map["TypeName"] = self.typeName!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.warnLevel != nil {
                map["WarnLevel"] = self.warnLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlertTime") && dict["AlertTime"] != nil {
                self.alertTime = dict["AlertTime"] as! Int64
            }
            if dict.keys.contains("Backed") && dict["Backed"] != nil {
                self.backed = dict["Backed"] as! Bool
            }
            if dict.keys.contains("DealDisplayName") && dict["DealDisplayName"] != nil {
                self.dealDisplayName = dict["DealDisplayName"] as! String
            }
            if dict.keys.contains("DealLoginName") && dict["DealLoginName"] != nil {
                self.dealLoginName = dict["DealLoginName"] as! String
            }
            if dict.keys.contains("DealTime") && dict["DealTime"] != nil {
                self.dealTime = dict["DealTime"] as! Int64
            }
            if dict.keys.contains("DealUserId") && dict["DealUserId"] != nil {
                self.dealUserId = dict["DealUserId"] as! Int64
            }
            if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("EventTime") && dict["EventTime"] != nil {
                self.eventTime = dict["EventTime"] as! Int64
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("LoginName") && dict["LoginName"] != nil {
                self.loginName = dict["LoginName"] as! String
            }
            if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("StatusName") && dict["StatusName"] != nil {
                self.statusName = dict["StatusName"] as! String
            }
            if dict.keys.contains("SubTypeCode") && dict["SubTypeCode"] != nil {
                self.subTypeCode = dict["SubTypeCode"] as! String
            }
            if dict.keys.contains("SubTypeName") && dict["SubTypeName"] != nil {
                self.subTypeName = dict["SubTypeName"] as! String
            }
            if dict.keys.contains("TargetProductCode") && dict["TargetProductCode"] != nil {
                self.targetProductCode = dict["TargetProductCode"] as! String
            }
            if dict.keys.contains("TypeCode") && dict["TypeCode"] != nil {
                self.typeCode = dict["TypeCode"] as! String
            }
            if dict.keys.contains("TypeName") && dict["TypeName"] != nil {
                self.typeName = dict["TypeName"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! Int64
            }
            if dict.keys.contains("WarnLevel") && dict["WarnLevel"] != nil {
                self.warnLevel = dict["WarnLevel"] as! Int32
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeEventsResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeEventsResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeEventsResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEventsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstanceSourcesRequest : Tea.TeaModel {
    public var auditStatus: Int32?

    public var authStatus: Int32?

    public var currentPage: Int32?

    public var engineType: String?

    public var featureType: Int32?

    public var instanceId: String?

    public var lang: String?

    public var pageSize: Int32?

    public var productCode: String?

    public var productId: Int64?

    public var searchKey: String?

    public var searchType: String?

    public var serviceRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.authStatus != nil {
            map["AuthStatus"] = self.authStatus!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.engineType != nil {
            map["EngineType"] = self.engineType!
        }
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
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
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.searchType != nil {
            map["SearchType"] = self.searchType!
        }
        if self.serviceRegionId != nil {
            map["ServiceRegionId"] = self.serviceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
            self.auditStatus = dict["AuditStatus"] as! Int32
        }
        if dict.keys.contains("AuthStatus") && dict["AuthStatus"] != nil {
            self.authStatus = dict["AuthStatus"] as! Int32
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EngineType") && dict["EngineType"] != nil {
            self.engineType = dict["EngineType"] as! String
        }
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! Int64
        }
        if dict.keys.contains("SearchKey") && dict["SearchKey"] != nil {
            self.searchKey = dict["SearchKey"] as! String
        }
        if dict.keys.contains("SearchType") && dict["SearchType"] != nil {
            self.searchType = dict["SearchType"] as! String
        }
        if dict.keys.contains("ServiceRegionId") && dict["ServiceRegionId"] != nil {
            self.serviceRegionId = dict["ServiceRegionId"] as! String
        }
    }
}

public class DescribeInstanceSourcesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var auditStatus: Int32?

        public var autoScan: Int32?

        public var canModifyUserName: Bool?

        public var checkStatus: Int32?

        public var datamaskStatus: Int32?

        public var dbName: String?

        public var enable: Int32?

        public var engineType: String?

        public var errorMessage: String?

        public var gmtCreate: Int64?

        public var id: Int64?

        public var instanceDescription: String?

        public var instanceId: String?

        public var instanceSize: Int64?

        public var lastModifyTime: Int64?

        public var lastModifyUserId: String?

        public var logStoreDay: Int32?

        public var passwordStatus: Int32?

        public var productId: Int64?

        public var regionId: String?

        public var regionName: String?

        public var samplingSize: Int32?

        public var tenantId: String?

        public var tenantName: String?

        public var userName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.autoScan != nil {
                map["AutoScan"] = self.autoScan!
            }
            if self.canModifyUserName != nil {
                map["CanModifyUserName"] = self.canModifyUserName!
            }
            if self.checkStatus != nil {
                map["CheckStatus"] = self.checkStatus!
            }
            if self.datamaskStatus != nil {
                map["DatamaskStatus"] = self.datamaskStatus!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceDescription != nil {
                map["InstanceDescription"] = self.instanceDescription!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceSize != nil {
                map["InstanceSize"] = self.instanceSize!
            }
            if self.lastModifyTime != nil {
                map["LastModifyTime"] = self.lastModifyTime!
            }
            if self.lastModifyUserId != nil {
                map["LastModifyUserId"] = self.lastModifyUserId!
            }
            if self.logStoreDay != nil {
                map["LogStoreDay"] = self.logStoreDay!
            }
            if self.passwordStatus != nil {
                map["PasswordStatus"] = self.passwordStatus!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.regionName != nil {
                map["RegionName"] = self.regionName!
            }
            if self.samplingSize != nil {
                map["SamplingSize"] = self.samplingSize!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.tenantName != nil {
                map["TenantName"] = self.tenantName!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
                self.auditStatus = dict["AuditStatus"] as! Int32
            }
            if dict.keys.contains("AutoScan") && dict["AutoScan"] != nil {
                self.autoScan = dict["AutoScan"] as! Int32
            }
            if dict.keys.contains("CanModifyUserName") && dict["CanModifyUserName"] != nil {
                self.canModifyUserName = dict["CanModifyUserName"] as! Bool
            }
            if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
                self.checkStatus = dict["CheckStatus"] as! Int32
            }
            if dict.keys.contains("DatamaskStatus") && dict["DatamaskStatus"] != nil {
                self.datamaskStatus = dict["DatamaskStatus"] as! Int32
            }
            if dict.keys.contains("DbName") && dict["DbName"] != nil {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("Enable") && dict["Enable"] != nil {
                self.enable = dict["Enable"] as! Int32
            }
            if dict.keys.contains("EngineType") && dict["EngineType"] != nil {
                self.engineType = dict["EngineType"] as! String
            }
            if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("InstanceDescription") && dict["InstanceDescription"] != nil {
                self.instanceDescription = dict["InstanceDescription"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceSize") && dict["InstanceSize"] != nil {
                self.instanceSize = dict["InstanceSize"] as! Int64
            }
            if dict.keys.contains("LastModifyTime") && dict["LastModifyTime"] != nil {
                self.lastModifyTime = dict["LastModifyTime"] as! Int64
            }
            if dict.keys.contains("LastModifyUserId") && dict["LastModifyUserId"] != nil {
                self.lastModifyUserId = dict["LastModifyUserId"] as! String
            }
            if dict.keys.contains("LogStoreDay") && dict["LogStoreDay"] != nil {
                self.logStoreDay = dict["LogStoreDay"] as! Int32
            }
            if dict.keys.contains("PasswordStatus") && dict["PasswordStatus"] != nil {
                self.passwordStatus = dict["PasswordStatus"] as! Int32
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! Int64
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RegionName") && dict["RegionName"] != nil {
                self.regionName = dict["RegionName"] as! String
            }
            if dict.keys.contains("SamplingSize") && dict["SamplingSize"] != nil {
                self.samplingSize = dict["SamplingSize"] as! Int32
            }
            if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
                self.tenantName = dict["TenantName"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeInstanceSourcesResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeInstanceSourcesResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeInstanceSourcesResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeInstanceSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceSourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeInstanceSourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeInstancesRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var featureType: Int32?

    public var lang: String?

    public var name: String?

    public var pageSize: Int32?

    public var productCode: String?

    public var productId: Int64?

    public var riskLevelId: Int64?

    public var ruleId: Int64?

    public var serviceRegionId: String?

    public override init() {
        super.init()
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
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.riskLevelId != nil {
            map["RiskLevelId"] = self.riskLevelId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.serviceRegionId != nil {
            map["ServiceRegionId"] = self.serviceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! Int64
        }
        if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
            self.riskLevelId = dict["RiskLevelId"] as! Int64
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("ServiceRegionId") && dict["ServiceRegionId"] != nil {
            self.serviceRegionId = dict["ServiceRegionId"] as! String
        }
    }
}

public class DescribeInstancesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class ModelTags : Tea.TeaModel {
            public var id: Int64?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var creationTime: Int64?

        public var departName: String?

        public var id: Int64?

        public var instanceDescription: String?

        public var labelsec: Bool?

        public var lastFinishTime: Int64?

        public var modelTags: [DescribeInstancesResponseBody.Items.ModelTags]?

        public var name: String?

        public var odpsRiskLevelName: String?

        public var owner: String?

        public var productCode: String?

        public var productId: String?

        public var protection: Bool?

        public var riskLevelId: Int64?

        public var riskLevelName: String?

        public var ruleName: String?

        public var sensitive: Bool?

        public var sensitiveCount: Int32?

        public var tenantName: String?

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
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.departName != nil {
                map["DepartName"] = self.departName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceDescription != nil {
                map["InstanceDescription"] = self.instanceDescription!
            }
            if self.labelsec != nil {
                map["Labelsec"] = self.labelsec!
            }
            if self.lastFinishTime != nil {
                map["LastFinishTime"] = self.lastFinishTime!
            }
            if self.modelTags != nil {
                var tmp : [Any] = []
                for k in self.modelTags! {
                    tmp.append(k.toMap())
                }
                map["ModelTags"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.odpsRiskLevelName != nil {
                map["OdpsRiskLevelName"] = self.odpsRiskLevelName!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.protection != nil {
                map["Protection"] = self.protection!
            }
            if self.riskLevelId != nil {
                map["RiskLevelId"] = self.riskLevelId!
            }
            if self.riskLevelName != nil {
                map["RiskLevelName"] = self.riskLevelName!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.sensitive != nil {
                map["Sensitive"] = self.sensitive!
            }
            if self.sensitiveCount != nil {
                map["SensitiveCount"] = self.sensitiveCount!
            }
            if self.tenantName != nil {
                map["TenantName"] = self.tenantName!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                self.creationTime = dict["CreationTime"] as! Int64
            }
            if dict.keys.contains("DepartName") && dict["DepartName"] != nil {
                self.departName = dict["DepartName"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("InstanceDescription") && dict["InstanceDescription"] != nil {
                self.instanceDescription = dict["InstanceDescription"] as! String
            }
            if dict.keys.contains("Labelsec") && dict["Labelsec"] != nil {
                self.labelsec = dict["Labelsec"] as! Bool
            }
            if dict.keys.contains("LastFinishTime") && dict["LastFinishTime"] != nil {
                self.lastFinishTime = dict["LastFinishTime"] as! Int64
            }
            if dict.keys.contains("ModelTags") && dict["ModelTags"] != nil {
                var tmp : [DescribeInstancesResponseBody.Items.ModelTags] = []
                for v in dict["ModelTags"] as! [Any] {
                    var model = DescribeInstancesResponseBody.Items.ModelTags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.modelTags = tmp
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OdpsRiskLevelName") && dict["OdpsRiskLevelName"] != nil {
                self.odpsRiskLevelName = dict["OdpsRiskLevelName"] as! String
            }
            if dict.keys.contains("Owner") && dict["Owner"] != nil {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("Protection") && dict["Protection"] != nil {
                self.protection = dict["Protection"] as! Bool
            }
            if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
                self.riskLevelId = dict["RiskLevelId"] as! Int64
            }
            if dict.keys.contains("RiskLevelName") && dict["RiskLevelName"] != nil {
                self.riskLevelName = dict["RiskLevelName"] as! String
            }
            if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                self.ruleName = dict["RuleName"] as! String
            }
            if dict.keys.contains("Sensitive") && dict["Sensitive"] != nil {
                self.sensitive = dict["Sensitive"] as! Bool
            }
            if dict.keys.contains("SensitiveCount") && dict["SensitiveCount"] != nil {
                self.sensitiveCount = dict["SensitiveCount"] as! Int32
            }
            if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
                self.tenantName = dict["TenantName"] as! String
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeInstancesResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeInstancesResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeInstancesResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOssObjectDetailRequest : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
    }
}

public class DescribeOssObjectDetailResponseBody : Tea.TeaModel {
    public class OssObjectDetail : Tea.TeaModel {
        public class RuleList : Tea.TeaModel {
            public class ModelTags : Tea.TeaModel {
                public var id: Int64?

                public var name: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public var categoryName: String?

            public var count: Int64?

            public var modelTags: [DescribeOssObjectDetailResponseBody.OssObjectDetail.RuleList.ModelTags]?

            public var riskLevelId: Int64?

            public var riskLevelName: String?

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
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.modelTags != nil {
                    var tmp : [Any] = []
                    for k in self.modelTags! {
                        tmp.append(k.toMap())
                    }
                    map["ModelTags"] = tmp
                }
                if self.riskLevelId != nil {
                    map["RiskLevelId"] = self.riskLevelId!
                }
                if self.riskLevelName != nil {
                    map["RiskLevelName"] = self.riskLevelName!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CategoryName") && dict["CategoryName"] != nil {
                    self.categoryName = dict["CategoryName"] as! String
                }
                if dict.keys.contains("Count") && dict["Count"] != nil {
                    self.count = dict["Count"] as! Int64
                }
                if dict.keys.contains("ModelTags") && dict["ModelTags"] != nil {
                    var tmp : [DescribeOssObjectDetailResponseBody.OssObjectDetail.RuleList.ModelTags] = []
                    for v in dict["ModelTags"] as! [Any] {
                        var model = DescribeOssObjectDetailResponseBody.OssObjectDetail.RuleList.ModelTags()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.modelTags = tmp
                }
                if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
                    self.riskLevelId = dict["RiskLevelId"] as! Int64
                }
                if dict.keys.contains("RiskLevelName") && dict["RiskLevelName"] != nil {
                    self.riskLevelName = dict["RiskLevelName"] as! String
                }
                if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                    self.ruleName = dict["RuleName"] as! String
                }
            }
        }
        public var bucketName: String?

        public var categoryName: String?

        public var name: String?

        public var regionId: String?

        public var riskLevelName: String?

        public var ruleList: [DescribeOssObjectDetailResponseBody.OssObjectDetail.RuleList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucketName != nil {
                map["BucketName"] = self.bucketName!
            }
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.riskLevelName != nil {
                map["RiskLevelName"] = self.riskLevelName!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BucketName") && dict["BucketName"] != nil {
                self.bucketName = dict["BucketName"] as! String
            }
            if dict.keys.contains("CategoryName") && dict["CategoryName"] != nil {
                self.categoryName = dict["CategoryName"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RiskLevelName") && dict["RiskLevelName"] != nil {
                self.riskLevelName = dict["RiskLevelName"] as! String
            }
            if dict.keys.contains("RuleList") && dict["RuleList"] != nil {
                var tmp : [DescribeOssObjectDetailResponseBody.OssObjectDetail.RuleList] = []
                for v in dict["RuleList"] as! [Any] {
                    var model = DescribeOssObjectDetailResponseBody.OssObjectDetail.RuleList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ruleList = tmp
            }
        }
    }
    public var ossObjectDetail: DescribeOssObjectDetailResponseBody.OssObjectDetail?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ossObjectDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ossObjectDetail != nil {
            map["OssObjectDetail"] = self.ossObjectDetail?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OssObjectDetail") && dict["OssObjectDetail"] != nil {
            var model = DescribeOssObjectDetailResponseBody.OssObjectDetail()
            model.fromMap(dict["OssObjectDetail"] as! [String: Any])
            self.ossObjectDetail = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeOssObjectDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOssObjectDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeOssObjectDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOssObjectDetailV2Request : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
    }
}

public class DescribeOssObjectDetailV2ResponseBody : Tea.TeaModel {
    public class OssObjectDetail : Tea.TeaModel {
        public class RuleList : Tea.TeaModel {
            public class ModelTags : Tea.TeaModel {
                public var id: Int64?

                public var name: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                }
            }
            public var categoryName: String?

            public var count: Int64?

            public var modelTags: [DescribeOssObjectDetailV2ResponseBody.OssObjectDetail.RuleList.ModelTags]?

            public var riskLevelId: Int64?

            public var riskLevelName: String?

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
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.modelTags != nil {
                    var tmp : [Any] = []
                    for k in self.modelTags! {
                        tmp.append(k.toMap())
                    }
                    map["ModelTags"] = tmp
                }
                if self.riskLevelId != nil {
                    map["RiskLevelId"] = self.riskLevelId!
                }
                if self.riskLevelName != nil {
                    map["RiskLevelName"] = self.riskLevelName!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CategoryName") && dict["CategoryName"] != nil {
                    self.categoryName = dict["CategoryName"] as! String
                }
                if dict.keys.contains("Count") && dict["Count"] != nil {
                    self.count = dict["Count"] as! Int64
                }
                if dict.keys.contains("ModelTags") && dict["ModelTags"] != nil {
                    var tmp : [DescribeOssObjectDetailV2ResponseBody.OssObjectDetail.RuleList.ModelTags] = []
                    for v in dict["ModelTags"] as! [Any] {
                        var model = DescribeOssObjectDetailV2ResponseBody.OssObjectDetail.RuleList.ModelTags()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.modelTags = tmp
                }
                if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
                    self.riskLevelId = dict["RiskLevelId"] as! Int64
                }
                if dict.keys.contains("RiskLevelName") && dict["RiskLevelName"] != nil {
                    self.riskLevelName = dict["RiskLevelName"] as! String
                }
                if dict.keys.contains("RuleName") && dict["RuleName"] != nil {
                    self.ruleName = dict["RuleName"] as! String
                }
            }
        }
        public var bucketName: String?

        public var categoryName: String?

        public var name: String?

        public var regionId: String?

        public var riskLevelName: String?

        public var ruleList: [DescribeOssObjectDetailV2ResponseBody.OssObjectDetail.RuleList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucketName != nil {
                map["BucketName"] = self.bucketName!
            }
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.riskLevelName != nil {
                map["RiskLevelName"] = self.riskLevelName!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BucketName") && dict["BucketName"] != nil {
                self.bucketName = dict["BucketName"] as! String
            }
            if dict.keys.contains("CategoryName") && dict["CategoryName"] != nil {
                self.categoryName = dict["CategoryName"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RiskLevelName") && dict["RiskLevelName"] != nil {
                self.riskLevelName = dict["RiskLevelName"] as! String
            }
            if dict.keys.contains("RuleList") && dict["RuleList"] != nil {
                var tmp : [DescribeOssObjectDetailV2ResponseBody.OssObjectDetail.RuleList] = []
                for v in dict["RuleList"] as! [Any] {
                    var model = DescribeOssObjectDetailV2ResponseBody.OssObjectDetail.RuleList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ruleList = tmp
            }
        }
    }
    public var ossObjectDetail: DescribeOssObjectDetailV2ResponseBody.OssObjectDetail?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ossObjectDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ossObjectDetail != nil {
            map["OssObjectDetail"] = self.ossObjectDetail?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OssObjectDetail") && dict["OssObjectDetail"] != nil {
            var model = DescribeOssObjectDetailV2ResponseBody.OssObjectDetail()
            model.fromMap(dict["OssObjectDetail"] as! [String: Any])
            self.ossObjectDetail = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeOssObjectDetailV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOssObjectDetailV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeOssObjectDetailV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOssObjectsRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var fileCategoryCode: Int64?

    public var instanceId: String?

    public var lang: String?

    public var lastScanTimeEnd: Int64?

    public var lastScanTimeStart: Int64?

    public var name: String?

    public var pageSize: Int32?

    public var riskLevelId: Int32?

    public var ruleId: Int64?

    public var serviceRegionId: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.fileCategoryCode != nil {
            map["FileCategoryCode"] = self.fileCategoryCode!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.lastScanTimeEnd != nil {
            map["LastScanTimeEnd"] = self.lastScanTimeEnd!
        }
        if self.lastScanTimeStart != nil {
            map["LastScanTimeStart"] = self.lastScanTimeStart!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.riskLevelId != nil {
            map["RiskLevelId"] = self.riskLevelId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.serviceRegionId != nil {
            map["ServiceRegionId"] = self.serviceRegionId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("FileCategoryCode") && dict["FileCategoryCode"] != nil {
            self.fileCategoryCode = dict["FileCategoryCode"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("LastScanTimeEnd") && dict["LastScanTimeEnd"] != nil {
            self.lastScanTimeEnd = dict["LastScanTimeEnd"] as! Int64
        }
        if dict.keys.contains("LastScanTimeStart") && dict["LastScanTimeStart"] != nil {
            self.lastScanTimeStart = dict["LastScanTimeStart"] as! Int64
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
            self.riskLevelId = dict["RiskLevelId"] as! Int32
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("ServiceRegionId") && dict["ServiceRegionId"] != nil {
            self.serviceRegionId = dict["ServiceRegionId"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class DescribeOssObjectsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class RuleList : Tea.TeaModel {
            public var count: Int64?

            public var name: String?

            public var riskLevelId: Int64?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.riskLevelId != nil {
                    map["RiskLevelId"] = self.riskLevelId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") && dict["Count"] != nil {
                    self.count = dict["Count"] as! Int64
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
                    self.riskLevelId = dict["RiskLevelId"] as! Int64
                }
            }
        }
        public var bucketName: String?

        public var category: Int64?

        public var categoryName: String?

        public var fileCategoryCode: Int64?

        public var fileCategoryName: String?

        public var fileId: String?

        public var id: String?

        public var instanceId: Int64?

        public var name: String?

        public var regionId: String?

        public var riskLevelId: Int64?

        public var riskLevelName: String?

        public var ruleCount: Int32?

        public var ruleList: [DescribeOssObjectsResponseBody.Items.RuleList]?

        public var sensitiveCount: Int32?

        public var size: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucketName != nil {
                map["BucketName"] = self.bucketName!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.fileCategoryCode != nil {
                map["FileCategoryCode"] = self.fileCategoryCode!
            }
            if self.fileCategoryName != nil {
                map["FileCategoryName"] = self.fileCategoryName!
            }
            if self.fileId != nil {
                map["FileId"] = self.fileId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.riskLevelId != nil {
                map["RiskLevelId"] = self.riskLevelId!
            }
            if self.riskLevelName != nil {
                map["RiskLevelName"] = self.riskLevelName!
            }
            if self.ruleCount != nil {
                map["RuleCount"] = self.ruleCount!
            }
            if self.ruleList != nil {
                var tmp : [Any] = []
                for k in self.ruleList! {
                    tmp.append(k.toMap())
                }
                map["RuleList"] = tmp
            }
            if self.sensitiveCount != nil {
                map["SensitiveCount"] = self.sensitiveCount!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BucketName") && dict["BucketName"] != nil {
                self.bucketName = dict["BucketName"] as! String
            }
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! Int64
            }
            if dict.keys.contains("CategoryName") && dict["CategoryName"] != nil {
                self.categoryName = dict["CategoryName"] as! String
            }
            if dict.keys.contains("FileCategoryCode") && dict["FileCategoryCode"] != nil {
                self.fileCategoryCode = dict["FileCategoryCode"] as! Int64
            }
            if dict.keys.contains("FileCategoryName") && dict["FileCategoryName"] != nil {
                self.fileCategoryName = dict["FileCategoryName"] as! String
            }
            if dict.keys.contains("FileId") && dict["FileId"] != nil {
                self.fileId = dict["FileId"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! Int64
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
                self.riskLevelId = dict["RiskLevelId"] as! Int64
            }
            if dict.keys.contains("RiskLevelName") && dict["RiskLevelName"] != nil {
                self.riskLevelName = dict["RiskLevelName"] as! String
            }
            if dict.keys.contains("RuleCount") && dict["RuleCount"] != nil {
                self.ruleCount = dict["RuleCount"] as! Int32
            }
            if dict.keys.contains("RuleList") && dict["RuleList"] != nil {
                var tmp : [DescribeOssObjectsResponseBody.Items.RuleList] = []
                for v in dict["RuleList"] as! [Any] {
                    var model = DescribeOssObjectsResponseBody.Items.RuleList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ruleList = tmp
            }
            if dict.keys.contains("SensitiveCount") && dict["SensitiveCount"] != nil {
                self.sensitiveCount = dict["SensitiveCount"] as! Int32
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int64
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeOssObjectsResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeOssObjectsResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeOssObjectsResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeOssObjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOssObjectsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeOssObjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePackagesRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var instanceId: Int64?

    public var lang: String?

    public var name: String?

    public var pageSize: Int32?

    public var productId: Int64?

    public var riskLevelId: Int64?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.riskLevelId != nil {
            map["RiskLevelId"] = self.riskLevelId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! Int64
        }
        if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
            self.riskLevelId = dict["RiskLevelId"] as! Int64
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! Int64
        }
    }
}

public class DescribePackagesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var creationTime: Int64?

        public var id: Int64?

        public var instanceId: Int64?

        public var name: String?

        public var owner: String?

        public var riskLevelId: Int64?

        public var riskLevelName: String?

        public var sensitive: Bool?

        public var sensitiveCount: Int32?

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
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.riskLevelId != nil {
                map["RiskLevelId"] = self.riskLevelId!
            }
            if self.riskLevelName != nil {
                map["RiskLevelName"] = self.riskLevelName!
            }
            if self.sensitive != nil {
                map["Sensitive"] = self.sensitive!
            }
            if self.sensitiveCount != nil {
                map["SensitiveCount"] = self.sensitiveCount!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                self.creationTime = dict["CreationTime"] as! Int64
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! Int64
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Owner") && dict["Owner"] != nil {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
                self.riskLevelId = dict["RiskLevelId"] as! Int64
            }
            if dict.keys.contains("RiskLevelName") && dict["RiskLevelName"] != nil {
                self.riskLevelName = dict["RiskLevelName"] as! String
            }
            if dict.keys.contains("Sensitive") && dict["Sensitive"] != nil {
                self.sensitive = dict["Sensitive"] as! Bool
            }
            if dict.keys.contains("SensitiveCount") && dict["SensitiveCount"] != nil {
                self.sensitiveCount = dict["SensitiveCount"] as! Int32
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribePackagesResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribePackagesResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribePackagesResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribePackagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePackagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribePackagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeParentInstanceRequest : Tea.TeaModel {
    public var authStatus: Int32?

    public var checkStatus: Int32?

    public var clusterStatus: String?

    public var currentPage: Int32?

    public var dbName: String?

    public var engineType: String?

    public var instanceId: String?

    public var lang: String?

    public var memberAccount: Int64?

    public var pageSize: Int32?

    public var resourceType: Int64?

    public var serviceRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authStatus != nil {
            map["AuthStatus"] = self.authStatus!
        }
        if self.checkStatus != nil {
            map["CheckStatus"] = self.checkStatus!
        }
        if self.clusterStatus != nil {
            map["ClusterStatus"] = self.clusterStatus!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.engineType != nil {
            map["EngineType"] = self.engineType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.memberAccount != nil {
            map["MemberAccount"] = self.memberAccount!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceRegionId != nil {
            map["ServiceRegionId"] = self.serviceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthStatus") && dict["AuthStatus"] != nil {
            self.authStatus = dict["AuthStatus"] as! Int32
        }
        if dict.keys.contains("CheckStatus") && dict["CheckStatus"] != nil {
            self.checkStatus = dict["CheckStatus"] as! Int32
        }
        if dict.keys.contains("ClusterStatus") && dict["ClusterStatus"] != nil {
            self.clusterStatus = dict["ClusterStatus"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("EngineType") && dict["EngineType"] != nil {
            self.engineType = dict["EngineType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MemberAccount") && dict["MemberAccount"] != nil {
            self.memberAccount = dict["MemberAccount"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! Int64
        }
        if dict.keys.contains("ServiceRegionId") && dict["ServiceRegionId"] != nil {
            self.serviceRegionId = dict["ServiceRegionId"] as! String
        }
    }
}

public class DescribeParentInstanceResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var auditStatus: Int32?

        public var authStatus: Int32?

        public var clusterStatus: String?

        public var connectNode: String?

        public var dbNum: String?

        public var engineType: String?

        public var instanceDescription: String?

        public var instanceId: String?

        public var instanceSize: Int64?

        public var localName: String?

        public var memberAccount: Int64?

        public var parentId: String?

        public var resourceType: String?

        public var supportConnectNodes: String?

        public var tenantId: String?

        public var tenantName: String?

        public var unConnectDbCount: String?

        public var unSupportOneClickAuthReason: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.authStatus != nil {
                map["AuthStatus"] = self.authStatus!
            }
            if self.clusterStatus != nil {
                map["ClusterStatus"] = self.clusterStatus!
            }
            if self.connectNode != nil {
                map["ConnectNode"] = self.connectNode!
            }
            if self.dbNum != nil {
                map["DbNum"] = self.dbNum!
            }
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
            }
            if self.instanceDescription != nil {
                map["InstanceDescription"] = self.instanceDescription!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceSize != nil {
                map["InstanceSize"] = self.instanceSize!
            }
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.memberAccount != nil {
                map["MemberAccount"] = self.memberAccount!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.supportConnectNodes != nil {
                map["SupportConnectNodes"] = self.supportConnectNodes!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.tenantName != nil {
                map["TenantName"] = self.tenantName!
            }
            if self.unConnectDbCount != nil {
                map["UnConnectDbCount"] = self.unConnectDbCount!
            }
            if self.unSupportOneClickAuthReason != nil {
                map["UnSupportOneClickAuthReason"] = self.unSupportOneClickAuthReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
                self.auditStatus = dict["AuditStatus"] as! Int32
            }
            if dict.keys.contains("AuthStatus") && dict["AuthStatus"] != nil {
                self.authStatus = dict["AuthStatus"] as! Int32
            }
            if dict.keys.contains("ClusterStatus") && dict["ClusterStatus"] != nil {
                self.clusterStatus = dict["ClusterStatus"] as! String
            }
            if dict.keys.contains("ConnectNode") && dict["ConnectNode"] != nil {
                self.connectNode = dict["ConnectNode"] as! String
            }
            if dict.keys.contains("DbNum") && dict["DbNum"] != nil {
                self.dbNum = dict["DbNum"] as! String
            }
            if dict.keys.contains("EngineType") && dict["EngineType"] != nil {
                self.engineType = dict["EngineType"] as! String
            }
            if dict.keys.contains("InstanceDescription") && dict["InstanceDescription"] != nil {
                self.instanceDescription = dict["InstanceDescription"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceSize") && dict["InstanceSize"] != nil {
                self.instanceSize = dict["InstanceSize"] as! Int64
            }
            if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("MemberAccount") && dict["MemberAccount"] != nil {
                self.memberAccount = dict["MemberAccount"] as! Int64
            }
            if dict.keys.contains("ParentId") && dict["ParentId"] != nil {
                self.parentId = dict["ParentId"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("SupportConnectNodes") && dict["SupportConnectNodes"] != nil {
                self.supportConnectNodes = dict["SupportConnectNodes"] as! String
            }
            if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
                self.tenantName = dict["TenantName"] as! String
            }
            if dict.keys.contains("UnConnectDbCount") && dict["UnConnectDbCount"] != nil {
                self.unConnectDbCount = dict["UnConnectDbCount"] as! String
            }
            if dict.keys.contains("UnSupportOneClickAuthReason") && dict["UnSupportOneClickAuthReason"] != nil {
                self.unSupportOneClickAuthReason = dict["UnSupportOneClickAuthReason"] as! String
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeParentInstanceResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeParentInstanceResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeParentInstanceResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeParentInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeParentInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeParentInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRiskLevelsRequest : Tea.TeaModel {
    public var featureType: Int32?

    public var lang: String?

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
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class DescribeRiskLevelsResponseBody : Tea.TeaModel {
    public class RiskLevelList : Tea.TeaModel {
        public var description_: String?

        public var id: Int64?

        public var name: String?

        public var referenceNum: Int32?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.referenceNum != nil {
                map["ReferenceNum"] = self.referenceNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ReferenceNum") && dict["ReferenceNum"] != nil {
                self.referenceNum = dict["ReferenceNum"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var riskLevelList: [DescribeRiskLevelsResponseBody.RiskLevelList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.riskLevelList != nil {
            var tmp : [Any] = []
            for k in self.riskLevelList! {
                tmp.append(k.toMap())
            }
            map["RiskLevelList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RiskLevelList") && dict["RiskLevelList"] != nil {
            var tmp : [DescribeRiskLevelsResponseBody.RiskLevelList] = []
            for v in dict["RiskLevelList"] as! [Any] {
                var model = DescribeRiskLevelsResponseBody.RiskLevelList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.riskLevelList = tmp
        }
    }
}

public class DescribeRiskLevelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRiskLevelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeRiskLevelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRulesRequest : Tea.TeaModel {
    public var category: Int32?

    public var contentCategory: Int32?

    public var currentPage: Int32?

    public var customType: Int32?

    public var featureType: Int32?

    public var groupId: String?

    public var keywordCompatible: Bool?

    public var lang: String?

    public var matchType: Int32?

    public var name: String?

    public var pageSize: Int32?

    public var productCode: Int32?

    public var productId: Int64?

    public var riskLevelId: Int64?

    public var ruleType: Int32?

    public var status: Int32?

    public var supportForm: Int32?

    public var warnLevel: Int32?

    public override init() {
        super.init()
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
        if self.contentCategory != nil {
            map["ContentCategory"] = self.contentCategory!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.customType != nil {
            map["CustomType"] = self.customType!
        }
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.keywordCompatible != nil {
            map["KeywordCompatible"] = self.keywordCompatible!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.matchType != nil {
            map["MatchType"] = self.matchType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.riskLevelId != nil {
            map["RiskLevelId"] = self.riskLevelId!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.supportForm != nil {
            map["SupportForm"] = self.supportForm!
        }
        if self.warnLevel != nil {
            map["WarnLevel"] = self.warnLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! Int32
        }
        if dict.keys.contains("ContentCategory") && dict["ContentCategory"] != nil {
            self.contentCategory = dict["ContentCategory"] as! Int32
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("CustomType") && dict["CustomType"] != nil {
            self.customType = dict["CustomType"] as! Int32
        }
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("KeywordCompatible") && dict["KeywordCompatible"] != nil {
            self.keywordCompatible = dict["KeywordCompatible"] as! Bool
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MatchType") && dict["MatchType"] != nil {
            self.matchType = dict["MatchType"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! Int32
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! Int64
        }
        if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
            self.riskLevelId = dict["RiskLevelId"] as! Int64
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! Int32
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("SupportForm") && dict["SupportForm"] != nil {
            self.supportForm = dict["SupportForm"] as! Int32
        }
        if dict.keys.contains("WarnLevel") && dict["WarnLevel"] != nil {
            self.warnLevel = dict["WarnLevel"] as! Int32
        }
    }
}

public class DescribeRulesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var category: Int32?

        public var categoryName: String?

        public var content: String?

        public var contentCategory: String?

        public var customType: Int32?

        public var description_: String?

        public var displayName: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var groupId: String?

        public var hitTotalCount: Int32?

        public var id: Int64?

        public var loginName: String?

        public var majorKey: String?

        public var matchType: Int32?

        public var name: String?

        public var productCode: String?

        public var productId: Int64?

        public var riskLevelId: Int64?

        public var riskLevelName: String?

        public var statExpress: String?

        public var status: Int32?

        public var supportForm: Int32?

        public var target: String?

        public var userId: Int64?

        public var warnLevel: Int32?

        public override init() {
            super.init()
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
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.contentCategory != nil {
                map["ContentCategory"] = self.contentCategory!
            }
            if self.customType != nil {
                map["CustomType"] = self.customType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.hitTotalCount != nil {
                map["HitTotalCount"] = self.hitTotalCount!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.loginName != nil {
                map["LoginName"] = self.loginName!
            }
            if self.majorKey != nil {
                map["MajorKey"] = self.majorKey!
            }
            if self.matchType != nil {
                map["MatchType"] = self.matchType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.riskLevelId != nil {
                map["RiskLevelId"] = self.riskLevelId!
            }
            if self.riskLevelName != nil {
                map["RiskLevelName"] = self.riskLevelName!
            }
            if self.statExpress != nil {
                map["StatExpress"] = self.statExpress!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supportForm != nil {
                map["SupportForm"] = self.supportForm!
            }
            if self.target != nil {
                map["Target"] = self.target!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.warnLevel != nil {
                map["WarnLevel"] = self.warnLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! Int32
            }
            if dict.keys.contains("CategoryName") && dict["CategoryName"] != nil {
                self.categoryName = dict["CategoryName"] as! String
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("ContentCategory") && dict["ContentCategory"] != nil {
                self.contentCategory = dict["ContentCategory"] as! String
            }
            if dict.keys.contains("CustomType") && dict["CustomType"] != nil {
                self.customType = dict["CustomType"] as! Int32
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("HitTotalCount") && dict["HitTotalCount"] != nil {
                self.hitTotalCount = dict["HitTotalCount"] as! Int32
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("LoginName") && dict["LoginName"] != nil {
                self.loginName = dict["LoginName"] as! String
            }
            if dict.keys.contains("MajorKey") && dict["MajorKey"] != nil {
                self.majorKey = dict["MajorKey"] as! String
            }
            if dict.keys.contains("MatchType") && dict["MatchType"] != nil {
                self.matchType = dict["MatchType"] as! Int32
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! Int64
            }
            if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
                self.riskLevelId = dict["RiskLevelId"] as! Int64
            }
            if dict.keys.contains("RiskLevelName") && dict["RiskLevelName"] != nil {
                self.riskLevelName = dict["RiskLevelName"] as! String
            }
            if dict.keys.contains("StatExpress") && dict["StatExpress"] != nil {
                self.statExpress = dict["StatExpress"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("SupportForm") && dict["SupportForm"] != nil {
                self.supportForm = dict["SupportForm"] as! Int32
            }
            if dict.keys.contains("Target") && dict["Target"] != nil {
                self.target = dict["Target"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! Int64
            }
            if dict.keys.contains("WarnLevel") && dict["WarnLevel"] != nil {
                self.warnLevel = dict["WarnLevel"] as! Int32
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeRulesResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeRulesResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeRulesResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTablesRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var instanceId: Int64?

    public var lang: String?

    public var name: String?

    public var packageId: Int64?

    public var pageSize: Int32?

    public var productCode: String?

    public var productId: Int64?

    public var riskLevelId: Int64?

    public var ruleId: Int64?

    public var serviceRegionId: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.packageId != nil {
            map["PackageId"] = self.packageId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.riskLevelId != nil {
            map["RiskLevelId"] = self.riskLevelId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.serviceRegionId != nil {
            map["ServiceRegionId"] = self.serviceRegionId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PackageId") && dict["PackageId"] != nil {
            self.packageId = dict["PackageId"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! Int64
        }
        if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
            self.riskLevelId = dict["RiskLevelId"] as! Int64
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
            self.ruleId = dict["RuleId"] as! Int64
        }
        if dict.keys.contains("ServiceRegionId") && dict["ServiceRegionId"] != nil {
            self.serviceRegionId = dict["ServiceRegionId"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class DescribeTablesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class RuleList : Tea.TeaModel {
            public var count: Int64?

            public var name: String?

            public var riskLevelId: Int64?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.riskLevelId != nil {
                    map["RiskLevelId"] = self.riskLevelId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") && dict["Count"] != nil {
                    self.count = dict["Count"] as! Int64
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
                    self.riskLevelId = dict["RiskLevelId"] as! Int64
                }
            }
        }
        public var creationTime: Int64?

        public var id: Int64?

        public var instanceDescription: String?

        public var instanceId: Int64?

        public var instanceName: String?

        public var name: String?

        public var owner: String?

        public var productCode: String?

        public var productId: String?

        public var riskLevelId: Int64?

        public var riskLevelName: String?

        public var ruleList: [DescribeTablesResponseBody.Items.RuleList]?

        public var sensitive: Bool?

        public var sensitiveCount: Int32?

        public var sensitiveRatio: String?

        public var tenantName: String?

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
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceDescription != nil {
                map["InstanceDescription"] = self.instanceDescription!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.riskLevelId != nil {
                map["RiskLevelId"] = self.riskLevelId!
            }
            if self.riskLevelName != nil {
                map["RiskLevelName"] = self.riskLevelName!
            }
            if self.ruleList != nil {
                var tmp : [Any] = []
                for k in self.ruleList! {
                    tmp.append(k.toMap())
                }
                map["RuleList"] = tmp
            }
            if self.sensitive != nil {
                map["Sensitive"] = self.sensitive!
            }
            if self.sensitiveCount != nil {
                map["SensitiveCount"] = self.sensitiveCount!
            }
            if self.sensitiveRatio != nil {
                map["SensitiveRatio"] = self.sensitiveRatio!
            }
            if self.tenantName != nil {
                map["TenantName"] = self.tenantName!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                self.creationTime = dict["CreationTime"] as! Int64
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("InstanceDescription") && dict["InstanceDescription"] != nil {
                self.instanceDescription = dict["InstanceDescription"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! Int64
            }
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Owner") && dict["Owner"] != nil {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
                self.riskLevelId = dict["RiskLevelId"] as! Int64
            }
            if dict.keys.contains("RiskLevelName") && dict["RiskLevelName"] != nil {
                self.riskLevelName = dict["RiskLevelName"] as! String
            }
            if dict.keys.contains("RuleList") && dict["RuleList"] != nil {
                var tmp : [DescribeTablesResponseBody.Items.RuleList] = []
                for v in dict["RuleList"] as! [Any] {
                    var model = DescribeTablesResponseBody.Items.RuleList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ruleList = tmp
            }
            if dict.keys.contains("Sensitive") && dict["Sensitive"] != nil {
                self.sensitive = dict["Sensitive"] as! Bool
            }
            if dict.keys.contains("SensitiveCount") && dict["SensitiveCount"] != nil {
                self.sensitiveCount = dict["SensitiveCount"] as! Int32
            }
            if dict.keys.contains("SensitiveRatio") && dict["SensitiveRatio"] != nil {
                self.sensitiveRatio = dict["SensitiveRatio"] as! String
            }
            if dict.keys.contains("TenantName") && dict["TenantName"] != nil {
                self.tenantName = dict["TenantName"] as! String
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeTablesResponseBody.Items]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeTablesResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeTablesResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTemplateAllRulesRequest : Tea.TeaModel {
    public var featureType: Int32?

    public var lang: String?

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
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class DescribeTemplateAllRulesResponseBody : Tea.TeaModel {
    public class RuleList : Tea.TeaModel {
        public var id: Int64?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var requestId: String?

    public var ruleList: [DescribeTemplateAllRulesResponseBody.RuleList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleList") && dict["RuleList"] != nil {
            var tmp : [DescribeTemplateAllRulesResponseBody.RuleList] = []
            for v in dict["RuleList"] as! [Any] {
                var model = DescribeTemplateAllRulesResponseBody.RuleList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ruleList = tmp
        }
    }
}

public class DescribeTemplateAllRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTemplateAllRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeTemplateAllRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUserStatusRequest : Tea.TeaModel {
    public var featureType: Int32?

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
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
    }
}

public class DescribeUserStatusResponseBody : Tea.TeaModel {
    public class UserStatus : Tea.TeaModel {
        public var accessKeyId: String?

        public var auditClosable: Bool?

        public var auditReleasable: Bool?

        public var authed: Bool?

        public var chargeType: String?

        public var dataManagerRole: Int32?

        public var instanceId: String?

        public var instanceNum: Int32?

        public var instanceTotalCount: Int64?

        public var labStatus: Int32?

        public var ossTotalSize: Int64?

        public var protectionDays: Int32?

        public var purchased: Bool?

        public var releaseDays: Int32?

        public var releaseTime: Int64?

        public var remainDays: Int32?

        public var trail: Bool?

        public var useAgentAudit: Bool?

        public var useInstanceNum: Int32?

        public var useOssSize: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeyId != nil {
                map["AccessKeyId"] = self.accessKeyId!
            }
            if self.auditClosable != nil {
                map["AuditClosable"] = self.auditClosable!
            }
            if self.auditReleasable != nil {
                map["AuditReleasable"] = self.auditReleasable!
            }
            if self.authed != nil {
                map["Authed"] = self.authed!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.dataManagerRole != nil {
                map["DataManagerRole"] = self.dataManagerRole!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceNum != nil {
                map["InstanceNum"] = self.instanceNum!
            }
            if self.instanceTotalCount != nil {
                map["InstanceTotalCount"] = self.instanceTotalCount!
            }
            if self.labStatus != nil {
                map["LabStatus"] = self.labStatus!
            }
            if self.ossTotalSize != nil {
                map["OssTotalSize"] = self.ossTotalSize!
            }
            if self.protectionDays != nil {
                map["ProtectionDays"] = self.protectionDays!
            }
            if self.purchased != nil {
                map["Purchased"] = self.purchased!
            }
            if self.releaseDays != nil {
                map["ReleaseDays"] = self.releaseDays!
            }
            if self.releaseTime != nil {
                map["ReleaseTime"] = self.releaseTime!
            }
            if self.remainDays != nil {
                map["RemainDays"] = self.remainDays!
            }
            if self.trail != nil {
                map["Trail"] = self.trail!
            }
            if self.useAgentAudit != nil {
                map["UseAgentAudit"] = self.useAgentAudit!
            }
            if self.useInstanceNum != nil {
                map["UseInstanceNum"] = self.useInstanceNum!
            }
            if self.useOssSize != nil {
                map["UseOssSize"] = self.useOssSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
                self.accessKeyId = dict["AccessKeyId"] as! String
            }
            if dict.keys.contains("AuditClosable") && dict["AuditClosable"] != nil {
                self.auditClosable = dict["AuditClosable"] as! Bool
            }
            if dict.keys.contains("AuditReleasable") && dict["AuditReleasable"] != nil {
                self.auditReleasable = dict["AuditReleasable"] as! Bool
            }
            if dict.keys.contains("Authed") && dict["Authed"] != nil {
                self.authed = dict["Authed"] as! Bool
            }
            if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("DataManagerRole") && dict["DataManagerRole"] != nil {
                self.dataManagerRole = dict["DataManagerRole"] as! Int32
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceNum") && dict["InstanceNum"] != nil {
                self.instanceNum = dict["InstanceNum"] as! Int32
            }
            if dict.keys.contains("InstanceTotalCount") && dict["InstanceTotalCount"] != nil {
                self.instanceTotalCount = dict["InstanceTotalCount"] as! Int64
            }
            if dict.keys.contains("LabStatus") && dict["LabStatus"] != nil {
                self.labStatus = dict["LabStatus"] as! Int32
            }
            if dict.keys.contains("OssTotalSize") && dict["OssTotalSize"] != nil {
                self.ossTotalSize = dict["OssTotalSize"] as! Int64
            }
            if dict.keys.contains("ProtectionDays") && dict["ProtectionDays"] != nil {
                self.protectionDays = dict["ProtectionDays"] as! Int32
            }
            if dict.keys.contains("Purchased") && dict["Purchased"] != nil {
                self.purchased = dict["Purchased"] as! Bool
            }
            if dict.keys.contains("ReleaseDays") && dict["ReleaseDays"] != nil {
                self.releaseDays = dict["ReleaseDays"] as! Int32
            }
            if dict.keys.contains("ReleaseTime") && dict["ReleaseTime"] != nil {
                self.releaseTime = dict["ReleaseTime"] as! Int64
            }
            if dict.keys.contains("RemainDays") && dict["RemainDays"] != nil {
                self.remainDays = dict["RemainDays"] as! Int32
            }
            if dict.keys.contains("Trail") && dict["Trail"] != nil {
                self.trail = dict["Trail"] as! Bool
            }
            if dict.keys.contains("UseAgentAudit") && dict["UseAgentAudit"] != nil {
                self.useAgentAudit = dict["UseAgentAudit"] as! Bool
            }
            if dict.keys.contains("UseInstanceNum") && dict["UseInstanceNum"] != nil {
                self.useInstanceNum = dict["UseInstanceNum"] as! Int32
            }
            if dict.keys.contains("UseOssSize") && dict["UseOssSize"] != nil {
                self.useOssSize = dict["UseOssSize"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var userStatus: DescribeUserStatusResponseBody.UserStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userStatus != nil {
            map["UserStatus"] = self.userStatus?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserStatus") && dict["UserStatus"] != nil {
            var model = DescribeUserStatusResponseBody.UserStatus()
            model.fromMap(dict["UserStatus"] as! [String: Any])
            self.userStatus = model
        }
    }
}

public class DescribeUserStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeUserStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableUserConfigRequest : Tea.TeaModel {
    public var code: String?

    public var featureType: Int32?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
    }
}

public class DisableUserConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DisableUserConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableUserConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableUserConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExecDatamaskRequest : Tea.TeaModel {
    public var data: String?

    public var featureType: Int32?

    public var lang: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
    }
}

public class ExecDatamaskResponseBody : Tea.TeaModel {
    public var data: String?

    public var requestId: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ExecDatamaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecDatamaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ExecDatamaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ManualTriggerMaskingProcessRequest : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
    }
}

public class ManualTriggerMaskingProcessResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ManualTriggerMaskingProcessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ManualTriggerMaskingProcessResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ManualTriggerMaskingProcessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDataLimitRequest : Tea.TeaModel {
    public var auditStatus: Int32?

    public var autoScan: Int32?

    public var engineType: String?

    public var featureType: Int32?

    public var id: Int64?

    public var lang: String?

    public var logStoreDay: Int32?

    public var modifyPassword: Bool?

    public var password: String?

    public var port: Int32?

    public var resourceType: Int32?

    public var samplingSize: Int32?

    public var securityGroupIdList: [String]?

    public var serviceRegionId: String?

    public var userName: String?

    public var vSwitchIdList: [String]?

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
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.autoScan != nil {
            map["AutoScan"] = self.autoScan!
        }
        if self.engineType != nil {
            map["EngineType"] = self.engineType!
        }
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.logStoreDay != nil {
            map["LogStoreDay"] = self.logStoreDay!
        }
        if self.modifyPassword != nil {
            map["ModifyPassword"] = self.modifyPassword!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.samplingSize != nil {
            map["SamplingSize"] = self.samplingSize!
        }
        if self.securityGroupIdList != nil {
            map["SecurityGroupIdList"] = self.securityGroupIdList!
        }
        if self.serviceRegionId != nil {
            map["ServiceRegionId"] = self.serviceRegionId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.vSwitchIdList != nil {
            map["VSwitchIdList"] = self.vSwitchIdList!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
            self.auditStatus = dict["AuditStatus"] as! Int32
        }
        if dict.keys.contains("AutoScan") && dict["AutoScan"] != nil {
            self.autoScan = dict["AutoScan"] as! Int32
        }
        if dict.keys.contains("EngineType") && dict["EngineType"] != nil {
            self.engineType = dict["EngineType"] as! String
        }
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("LogStoreDay") && dict["LogStoreDay"] != nil {
            self.logStoreDay = dict["LogStoreDay"] as! Int32
        }
        if dict.keys.contains("ModifyPassword") && dict["ModifyPassword"] != nil {
            self.modifyPassword = dict["ModifyPassword"] as! Bool
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Port") && dict["Port"] != nil {
            self.port = dict["Port"] as! Int32
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! Int32
        }
        if dict.keys.contains("SamplingSize") && dict["SamplingSize"] != nil {
            self.samplingSize = dict["SamplingSize"] as! Int32
        }
        if dict.keys.contains("SecurityGroupIdList") && dict["SecurityGroupIdList"] != nil {
            self.securityGroupIdList = dict["SecurityGroupIdList"] as! [String]
        }
        if dict.keys.contains("ServiceRegionId") && dict["ServiceRegionId"] != nil {
            self.serviceRegionId = dict["ServiceRegionId"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("VSwitchIdList") && dict["VSwitchIdList"] != nil {
            self.vSwitchIdList = dict["VSwitchIdList"] as! [String]
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class ModifyDataLimitResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyDataLimitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDataLimitResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyDataLimitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDefaultLevelRequest : Tea.TeaModel {
    public var defaultId: Int64?

    public var lang: String?

    public var sensitiveIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultId != nil {
            map["DefaultId"] = self.defaultId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.sensitiveIds != nil {
            map["SensitiveIds"] = self.sensitiveIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefaultId") && dict["DefaultId"] != nil {
            self.defaultId = dict["DefaultId"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SensitiveIds") && dict["SensitiveIds"] != nil {
            self.sensitiveIds = dict["SensitiveIds"] as! String
        }
    }
}

public class ModifyDefaultLevelResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyDefaultLevelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDefaultLevelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyDefaultLevelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyEventStatusRequest : Tea.TeaModel {
    public var backed: Bool?

    public var dealReason: String?

    public var id: Int64?

    public var lang: String?

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
        if self.backed != nil {
            map["Backed"] = self.backed!
        }
        if self.dealReason != nil {
            map["DealReason"] = self.dealReason!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Backed") && dict["Backed"] != nil {
            self.backed = dict["Backed"] as! Bool
        }
        if dict.keys.contains("DealReason") && dict["DealReason"] != nil {
            self.dealReason = dict["DealReason"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class ModifyEventStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyEventStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyEventStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyEventStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyEventTypeStatusRequest : Tea.TeaModel {
    public var featureType: Int32?

    public var lang: String?

    public var subTypeIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.subTypeIds != nil {
            map["SubTypeIds"] = self.subTypeIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("SubTypeIds") && dict["SubTypeIds"] != nil {
            self.subTypeIds = dict["SubTypeIds"] as! String
        }
    }
}

public class ModifyEventTypeStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyEventTypeStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyEventTypeStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyEventTypeStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyReportTaskStatusRequest : Tea.TeaModel {
    public var featureType: Int32?

    public var lang: String?

    public var reportTaskStatus: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.reportTaskStatus != nil {
            map["ReportTaskStatus"] = self.reportTaskStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeatureType") && dict["FeatureType"] != nil {
            self.featureType = dict["FeatureType"] as! Int32
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("ReportTaskStatus") && dict["ReportTaskStatus"] != nil {
            self.reportTaskStatus = dict["ReportTaskStatus"] as! Int32
        }
    }
}

public class ModifyReportTaskStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyReportTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyReportTaskStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyReportTaskStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyRuleRequest : Tea.TeaModel {
    public var category: Int32?

    public var content: String?

    public var id: Int64?

    public var lang: String?

    public var matchType: Int32?

    public var name: String?

    public var productCode: String?

    public var productId: Int64?

    public var riskLevelId: Int64?

    public var ruleType: Int32?

    public var supportForm: Int32?

    public var warnLevel: Int32?

    public override init() {
        super.init()
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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.matchType != nil {
            map["MatchType"] = self.matchType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.riskLevelId != nil {
            map["RiskLevelId"] = self.riskLevelId!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.supportForm != nil {
            map["SupportForm"] = self.supportForm!
        }
        if self.warnLevel != nil {
            map["WarnLevel"] = self.warnLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") && dict["Category"] != nil {
            self.category = dict["Category"] as! Int32
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MatchType") && dict["MatchType"] != nil {
            self.matchType = dict["MatchType"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! Int64
        }
        if dict.keys.contains("RiskLevelId") && dict["RiskLevelId"] != nil {
            self.riskLevelId = dict["RiskLevelId"] as! Int64
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! Int32
        }
        if dict.keys.contains("SupportForm") && dict["SupportForm"] != nil {
            self.supportForm = dict["SupportForm"] as! Int32
        }
        if dict.keys.contains("WarnLevel") && dict["WarnLevel"] != nil {
            self.warnLevel = dict["WarnLevel"] as! Int32
        }
    }
}

public class ModifyRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyRuleStatusRequest : Tea.TeaModel {
    public var id: Int64?

    public var ids: String?

    public var lang: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Ids") && dict["Ids"] != nil {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class ModifyRuleStatusResponseBody : Tea.TeaModel {
    public var failedIds: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failedIds != nil {
            map["FailedIds"] = self.failedIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FailedIds") && dict["FailedIds"] != nil {
            self.failedIds = dict["FailedIds"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyRuleStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyRuleStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyRuleStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopMaskingProcessRequest : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Lang") && dict["Lang"] != nil {
            self.lang = dict["Lang"] as! String
        }
    }
}

public class StopMaskingProcessResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class StopMaskingProcessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopMaskingProcessResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StopMaskingProcessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
