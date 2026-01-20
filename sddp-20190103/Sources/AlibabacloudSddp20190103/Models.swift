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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateConfigResponseBody()
            model.fromMap(value)
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

    public var instantlyScan: Bool?

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
        if self.instantlyScan != nil {
            map["InstantlyScan"] = self.instantlyScan!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditStatus"] as? Int32 {
            self.auditStatus = value
        }
        if let value = dict["AutoScan"] as? Int32 {
            self.autoScan = value
        }
        if let value = dict["CertificatePermission"] as? String {
            self.certificatePermission = value
        }
        if let value = dict["Enable"] as? Int32 {
            self.enable = value
        }
        if let value = dict["EngineType"] as? String {
            self.engineType = value
        }
        if let value = dict["EventStatus"] as? Int32 {
            self.eventStatus = value
        }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["InstantlyScan"] as? Bool {
            self.instantlyScan = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogStoreDay"] as? Int32 {
            self.logStoreDay = value
        }
        if let value = dict["OcrStatus"] as? Int32 {
            self.ocrStatus = value
        }
        if let value = dict["ParentId"] as? String {
            self.parentId = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["Port"] as? Int32 {
            self.port = value
        }
        if let value = dict["ResourceType"] as? Int32 {
            self.resourceType = value
        }
        if let value = dict["SamplingSize"] as? Int32 {
            self.samplingSize = value
        }
        if let value = dict["ServiceRegionId"] as? String {
            self.serviceRegionId = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int32 {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDataLimitResponseBody()
            model.fromMap(value)
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

    public var modelRuleIds: String?

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

    public var templateRuleIds: String?

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
        if self.modelRuleIds != nil {
            map["ModelRuleIds"] = self.modelRuleIds!
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
        if self.templateRuleIds != nil {
            map["TemplateRuleIds"] = self.templateRuleIds!
        }
        if self.warnLevel != nil {
            map["WarnLevel"] = self.warnLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? Int32 {
            self.category = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["ContentCategory"] as? Int32 {
            self.contentCategory = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MatchType"] as? Int32 {
            self.matchType = value
        }
        if let value = dict["ModelRuleIds"] as? String {
            self.modelRuleIds = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["RiskLevelId"] as? Int64 {
            self.riskLevelId = value
        }
        if let value = dict["RuleType"] as? Int32 {
            self.ruleType = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["StatExpress"] as? String {
            self.statExpress = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["SupportForm"] as? Int32 {
            self.supportForm = value
        }
        if let value = dict["Target"] as? String {
            self.target = value
        }
        if let value = dict["TemplateRuleIds"] as? String {
            self.templateRuleIds = value
        }
        if let value = dict["WarnLevel"] as? Int32 {
            self.warnLevel = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int32 {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataLimitId"] as? Int64 {
            self.dataLimitId = value
        }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["IntervalDay"] as? Int32 {
            self.intervalDay = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OssScanPath"] as? String {
            self.ossScanPath = value
        }
        if let value = dict["ResourceType"] as? Int64 {
            self.resourceType = value
        }
        if let value = dict["RunHour"] as? Int32 {
            self.runHour = value
        }
        if let value = dict["RunMinute"] as? Int32 {
            self.runMinute = value
        }
        if let value = dict["ScanRange"] as? Int32 {
            self.scanRange = value
        }
        if let value = dict["ScanRangeContent"] as? String {
            self.scanRangeContent = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TaskUserName"] as? String {
            self.taskUserName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int32 {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateScanTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSlrRoleRequest : Tea.TeaModel {
    public var featureType: Int32?

    public var lang: String?

    public var serviceName: String?

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
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HasPermission"] as? Bool {
            self.hasPermission = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSlrRoleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDataLimitResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
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

public class DescribeAuditLogsRequest : Tea.TeaModel {
    public var asyncRequestId: String?

    public var clientIp: String?

    public var clientUa: String?

    public var currentPage: Int32?

    public var databaseName: String?

    public var effectRowRange: String?

    public var endTime: Int64?

    public var executeTimeRange: String?

    public var instanceName: String?

    public var ipType: String?

    public var lang: String?

    public var loadWhiteList: Bool?

    public var logQueryOpJson: String?

    public var logSource: String?

    public var memberAccount: String?

    public var message: String?

    public var operateType: String?

    public var ossObjectKey: String?

    public var pageSize: Int32?

    public var productCode: String?

    public var productId: Int64?

    public var ruleAggQuery: Bool?

    public var ruleCategory: String?

    public var ruleID: String?

    public var ruleId: String?

    public var ruleName: String?

    public var sqlText: String?

    public var startTime: Int64?

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
        if self.asyncRequestId != nil {
            map["AsyncRequestId"] = self.asyncRequestId!
        }
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.clientUa != nil {
            map["ClientUa"] = self.clientUa!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.databaseName != nil {
            map["DatabaseName"] = self.databaseName!
        }
        if self.effectRowRange != nil {
            map["EffectRowRange"] = self.effectRowRange!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.executeTimeRange != nil {
            map["ExecuteTimeRange"] = self.executeTimeRange!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.ipType != nil {
            map["IpType"] = self.ipType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.loadWhiteList != nil {
            map["LoadWhiteList"] = self.loadWhiteList!
        }
        if self.logQueryOpJson != nil {
            map["LogQueryOpJson"] = self.logQueryOpJson!
        }
        if self.logSource != nil {
            map["LogSource"] = self.logSource!
        }
        if self.memberAccount != nil {
            map["MemberAccount"] = self.memberAccount!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.ossObjectKey != nil {
            map["OssObjectKey"] = self.ossObjectKey!
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
        if self.ruleAggQuery != nil {
            map["RuleAggQuery"] = self.ruleAggQuery!
        }
        if self.ruleCategory != nil {
            map["RuleCategory"] = self.ruleCategory!
        }
        if self.ruleID != nil {
            map["RuleID"] = self.ruleID!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.sqlText != nil {
            map["SqlText"] = self.sqlText!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AsyncRequestId"] as? String {
            self.asyncRequestId = value
        }
        if let value = dict["ClientIp"] as? String {
            self.clientIp = value
        }
        if let value = dict["ClientUa"] as? String {
            self.clientUa = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DatabaseName"] as? String {
            self.databaseName = value
        }
        if let value = dict["EffectRowRange"] as? String {
            self.effectRowRange = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["ExecuteTimeRange"] as? String {
            self.executeTimeRange = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["IpType"] as? String {
            self.ipType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LoadWhiteList"] as? Bool {
            self.loadWhiteList = value
        }
        if let value = dict["LogQueryOpJson"] as? String {
            self.logQueryOpJson = value
        }
        if let value = dict["LogSource"] as? String {
            self.logSource = value
        }
        if let value = dict["MemberAccount"] as? String {
            self.memberAccount = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OperateType"] as? String {
            self.operateType = value
        }
        if let value = dict["OssObjectKey"] as? String {
            self.ossObjectKey = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["RuleAggQuery"] as? Bool {
            self.ruleAggQuery = value
        }
        if let value = dict["RuleCategory"] as? String {
            self.ruleCategory = value
        }
        if let value = dict["RuleID"] as? String {
            self.ruleID = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["SqlText"] as? String {
            self.sqlText = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class DescribeAuditLogsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var clientIp: String?

        public var clientPort: String?

        public var clientUa: String?

        public var columnName: String?

        public var creationTime: Int64?

        public var dataSet: String?

        public var databaseName: String?

        public var dbType: String?

        public var effectRow: Int64?

        public var executeStatus: Int32?

        public var executeTime: Int64?

        public var inWhiteList: Bool?

        public var instanceAuditStatus: String?

        public var instanceDescription: String?

        public var instanceName: String?

        public var ipType: String?

        public var logSource: String?

        public var logTime: Int64?

        public var memberAccount: String?

        public var message: String?

        public var modelName: String?

        public var operateType: String?

        public var ossObjectKey: String?

        public var packageName: String?

        public var productCode: String?

        public var productId: Int64?

        public var ruleCategory: String?

        public var ruleId: String?

        public var ruleName: String?

        public var sqlText: String?

        public var tableName: String?

        public var userId: String?

        public var userName: String?

        public var warnLevel: String?

        public var warnLevelName: String?

        public override init() {
            super.init()
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
            if self.clientPort != nil {
                map["ClientPort"] = self.clientPort!
            }
            if self.clientUa != nil {
                map["ClientUa"] = self.clientUa!
            }
            if self.columnName != nil {
                map["ColumnName"] = self.columnName!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.dataSet != nil {
                map["DataSet"] = self.dataSet!
            }
            if self.databaseName != nil {
                map["DatabaseName"] = self.databaseName!
            }
            if self.dbType != nil {
                map["DbType"] = self.dbType!
            }
            if self.effectRow != nil {
                map["EffectRow"] = self.effectRow!
            }
            if self.executeStatus != nil {
                map["ExecuteStatus"] = self.executeStatus!
            }
            if self.executeTime != nil {
                map["ExecuteTime"] = self.executeTime!
            }
            if self.inWhiteList != nil {
                map["InWhiteList"] = self.inWhiteList!
            }
            if self.instanceAuditStatus != nil {
                map["InstanceAuditStatus"] = self.instanceAuditStatus!
            }
            if self.instanceDescription != nil {
                map["InstanceDescription"] = self.instanceDescription!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.ipType != nil {
                map["IpType"] = self.ipType!
            }
            if self.logSource != nil {
                map["LogSource"] = self.logSource!
            }
            if self.logTime != nil {
                map["LogTime"] = self.logTime!
            }
            if self.memberAccount != nil {
                map["MemberAccount"] = self.memberAccount!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            if self.operateType != nil {
                map["OperateType"] = self.operateType!
            }
            if self.ossObjectKey != nil {
                map["OssObjectKey"] = self.ossObjectKey!
            }
            if self.packageName != nil {
                map["PackageName"] = self.packageName!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.ruleCategory != nil {
                map["RuleCategory"] = self.ruleCategory!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.sqlText != nil {
                map["SqlText"] = self.sqlText!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
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
            if self.warnLevelName != nil {
                map["WarnLevelName"] = self.warnLevelName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClientIp"] as? String {
                self.clientIp = value
            }
            if let value = dict["ClientPort"] as? String {
                self.clientPort = value
            }
            if let value = dict["ClientUa"] as? String {
                self.clientUa = value
            }
            if let value = dict["ColumnName"] as? String {
                self.columnName = value
            }
            if let value = dict["CreationTime"] as? Int64 {
                self.creationTime = value
            }
            if let value = dict["DataSet"] as? String {
                self.dataSet = value
            }
            if let value = dict["DatabaseName"] as? String {
                self.databaseName = value
            }
            if let value = dict["DbType"] as? String {
                self.dbType = value
            }
            if let value = dict["EffectRow"] as? Int64 {
                self.effectRow = value
            }
            if let value = dict["ExecuteStatus"] as? Int32 {
                self.executeStatus = value
            }
            if let value = dict["ExecuteTime"] as? Int64 {
                self.executeTime = value
            }
            if let value = dict["InWhiteList"] as? Bool {
                self.inWhiteList = value
            }
            if let value = dict["InstanceAuditStatus"] as? String {
                self.instanceAuditStatus = value
            }
            if let value = dict["InstanceDescription"] as? String {
                self.instanceDescription = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["IpType"] as? String {
                self.ipType = value
            }
            if let value = dict["LogSource"] as? String {
                self.logSource = value
            }
            if let value = dict["LogTime"] as? Int64 {
                self.logTime = value
            }
            if let value = dict["MemberAccount"] as? String {
                self.memberAccount = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["ModelName"] as? String {
                self.modelName = value
            }
            if let value = dict["OperateType"] as? String {
                self.operateType = value
            }
            if let value = dict["OssObjectKey"] as? String {
                self.ossObjectKey = value
            }
            if let value = dict["PackageName"] as? String {
                self.packageName = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductId"] as? Int64 {
                self.productId = value
            }
            if let value = dict["RuleCategory"] as? String {
                self.ruleCategory = value
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["SqlText"] as? String {
                self.sqlText = value
            }
            if let value = dict["TableName"] as? String {
                self.tableName = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
            if let value = dict["WarnLevel"] as? String {
                self.warnLevel = value
            }
            if let value = dict["WarnLevelName"] as? String {
                self.warnLevelName = value
            }
        }
    }
    public var asyncRequestId: String?

    public var currentPage: Int32?

    public var items: [DescribeAuditLogsResponseBody.Items]?

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
        if self.asyncRequestId != nil {
            map["AsyncRequestId"] = self.asyncRequestId!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AsyncRequestId"] as? String {
            self.asyncRequestId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeAuditLogsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeAuditLogsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeAuditLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAuditLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAuditLogsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["UsageScenario"] as? Int32 {
            self.usageScenario = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentRiskLevel"] as? Int32 {
                self.currentRiskLevel = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["MaxCategoryLevel"] as? Int32 {
                self.maxCategoryLevel = value
            }
            if let value = dict["MaxRiskLevel"] as? Int32 {
                self.maxRiskLevel = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["SupportEdit"] as? Int32 {
                self.supportEdit = value
            }
            if let value = dict["Type"] as? Int32 {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeCategoryTemplateListResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeCategoryTemplateListResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCategoryTemplateListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RiskLevelId"] as? Int64 {
            self.riskLevelId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["IdentificationRuleIds"] as? String {
                self.identificationRuleIds = value
            }
            if let value = dict["IdentificationScope"] as? String {
                self.identificationScope = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RiskLevelId"] as? Int64 {
                self.riskLevelId = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeCategoryTemplateRuleListResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeCategoryTemplateRuleListResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCategoryTemplateRuleListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeColumnsRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var engineType: String?

    public var instanceId: Int64?

    public var instanceName: String?

    public var lang: String?

    public var modelTagId: String?

    public var name: String?

    public var pageSize: Int32?

    public var productCode: String?

    public var productId: String?

    public var riskLevelId: Int64?

    public var ruleId: Int64?

    public var ruleName: String?

    public var sensLevelName: String?

    public var tableId: Int64?

    public var tableName: String?

    public var templateId: String?

    public var templateRuleId: String?

    public override init() {
        super.init()
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
        if self.engineType != nil {
            map["EngineType"] = self.engineType!
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
        if self.modelTagId != nil {
            map["ModelTagId"] = self.modelTagId!
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateRuleId != nil {
            map["TemplateRuleId"] = self.templateRuleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EngineType"] as? String {
            self.engineType = value
        }
        if let value = dict["InstanceId"] as? Int64 {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ModelTagId"] as? String {
            self.modelTagId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["RiskLevelId"] as? Int64 {
            self.riskLevelId = value
        }
        if let value = dict["RuleId"] as? Int64 {
            self.ruleId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["SensLevelName"] as? String {
            self.sensLevelName = value
        }
        if let value = dict["TableId"] as? Int64 {
            self.tableId = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateRuleId"] as? String {
            self.templateRuleId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var creationTime: Int64?

        public var dataType: String?

        public var engineType: String?

        public var id: String?

        public var instanceId: Int64?

        public var instanceName: String?

        public var maskingStatus: Int32?

        public var modelTags: [DescribeColumnsResponseBody.Items.ModelTags]?

        public var name: String?

        public var odpsRiskLevelName: String?

        public var odpsRiskLevelValue: Int32?

        public var productCode: String?

        public var productId: Int64?

        public var regionId: String?

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
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
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
            if self.maskingStatus != nil {
                map["MaskingStatus"] = self.maskingStatus!
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
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreationTime"] as? Int64 {
                self.creationTime = value
            }
            if let value = dict["DataType"] as? String {
                self.dataType = value
            }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["InstanceId"] as? Int64 {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["MaskingStatus"] as? Int32 {
                self.maskingStatus = value
            }
            if let value = dict["ModelTags"] as? [Any?] {
                var tmp : [DescribeColumnsResponseBody.Items.ModelTags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeColumnsResponseBody.Items.ModelTags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.modelTags = tmp
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OdpsRiskLevelName"] as? String {
                self.odpsRiskLevelName = value
            }
            if let value = dict["OdpsRiskLevelValue"] as? Int32 {
                self.odpsRiskLevelValue = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductId"] as? Int64 {
                self.productId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RevisionId"] as? Int64 {
                self.revisionId = value
            }
            if let value = dict["RevisionStatus"] as? Int64 {
                self.revisionStatus = value
            }
            if let value = dict["RiskLevelId"] as? Int64 {
                self.riskLevelId = value
            }
            if let value = dict["RiskLevelName"] as? String {
                self.riskLevelName = value
            }
            if let value = dict["RuleId"] as? Int64 {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["SensLevelName"] as? String {
                self.sensLevelName = value
            }
            if let value = dict["Sensitive"] as? Bool {
                self.sensitive = value
            }
            if let value = dict["TableId"] as? Int64 {
                self.tableId = value
            }
            if let value = dict["TableName"] as? String {
                self.tableName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeColumnsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeColumnsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeColumnsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeColumnsV2Request : Tea.TeaModel {
    public var currentPage: Int32?

    public var engineType: String?

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
        if self.engineType != nil {
            map["EngineType"] = self.engineType!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EngineType"] as? String {
            self.engineType = value
        }
        if let value = dict["InstanceId"] as? Int64 {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["RiskLevelId"] as? Int64 {
            self.riskLevelId = value
        }
        if let value = dict["RuleId"] as? Int64 {
            self.ruleId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["SensLevelName"] as? String {
            self.sensLevelName = value
        }
        if let value = dict["TableId"] as? String {
            self.tableId = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var creationTime: Int64?

        public var dataType: String?

        public var engineType: String?

        public var id: String?

        public var instanceId: Int64?

        public var instanceName: String?

        public var maskingStatus: Int32?

        public var modelTags: [DescribeColumnsV2ResponseBody.Items.ModelTags]?

        public var name: String?

        public var odpsRiskLevelName: String?

        public var odpsRiskLevelValue: Int32?

        public var productCode: String?

        public var productId: Int64?

        public var regionId: String?

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
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
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
            if self.maskingStatus != nil {
                map["MaskingStatus"] = self.maskingStatus!
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
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreationTime"] as? Int64 {
                self.creationTime = value
            }
            if let value = dict["DataType"] as? String {
                self.dataType = value
            }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["InstanceId"] as? Int64 {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["MaskingStatus"] as? Int32 {
                self.maskingStatus = value
            }
            if let value = dict["ModelTags"] as? [Any?] {
                var tmp : [DescribeColumnsV2ResponseBody.Items.ModelTags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeColumnsV2ResponseBody.Items.ModelTags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.modelTags = tmp
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OdpsRiskLevelName"] as? String {
                self.odpsRiskLevelName = value
            }
            if let value = dict["OdpsRiskLevelValue"] as? Int32 {
                self.odpsRiskLevelValue = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductId"] as? Int64 {
                self.productId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RevisionId"] as? Int64 {
                self.revisionId = value
            }
            if let value = dict["RevisionStatus"] as? Int64 {
                self.revisionStatus = value
            }
            if let value = dict["RiskLevelId"] as? Int64 {
                self.riskLevelId = value
            }
            if let value = dict["RiskLevelName"] as? String {
                self.riskLevelName = value
            }
            if let value = dict["RuleId"] as? Int64 {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["SensLevelName"] as? String {
                self.sensLevelName = value
            }
            if let value = dict["Sensitive"] as? Bool {
                self.sensitive = value
            }
            if let value = dict["TableId"] as? Int64 {
                self.tableId = value
            }
            if let value = dict["TableName"] as? String {
                self.tableName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeColumnsV2ResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeColumnsV2ResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeColumnsV2ResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["DefaultValue"] as? String {
                self.defaultValue = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigList"] as? [Any?] {
            var tmp : [DescribeConfigsResponseBody.ConfigList] = []
            for v in value {
                if v != nil {
                    var model = DescribeConfigsResponseBody.ConfigList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeConfigsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RangeId"] as? Int32 {
            self.rangeId = value
        }
        if let value = dict["RiskLevels"] as? String {
            self.riskLevels = value
        }
        if let value = dict["RuleId"] as? Int64 {
            self.ruleId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Acl"] as? String {
                self.acl = value
            }
            if let value = dict["CreationTime"] as? Int64 {
                self.creationTime = value
            }
            if let value = dict["DataType"] as? String {
                self.dataType = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Labelsec"] as? Bool {
                self.labelsec = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ObjectKey"] as? String {
                self.objectKey = value
            }
            if let value = dict["OdpsRiskLevelName"] as? String {
                self.odpsRiskLevelName = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductId"] as? String {
                self.productId = value
            }
            if let value = dict["Protection"] as? Bool {
                self.protection = value
            }
            if let value = dict["RiskLevelId"] as? Int64 {
                self.riskLevelId = value
            }
            if let value = dict["RiskLevelName"] as? String {
                self.riskLevelName = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["Sensitive"] as? Bool {
                self.sensitive = value
            }
            if let value = dict["SensitiveCount"] as? Int32 {
                self.sensitiveCount = value
            }
            if let value = dict["SensitiveRatio"] as? String {
                self.sensitiveRatio = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeDataAssetsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeDataAssetsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDataAssetsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["NetworkType"] as? Int32 {
            self.networkType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CheckStatus"] as? Int32 {
                self.checkStatus = value
            }
            if let value = dict["CheckStatusName"] as? String {
                self.checkStatusName = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["LocalName"] as? String {
                self.localName = value
            }
            if let value = dict["ParentId"] as? String {
                self.parentId = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceType"] as? Int64 {
                self.resourceType = value
            }
            if let value = dict["ResourceTypeCode"] as? String {
                self.resourceTypeCode = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataLimit"] as? [String: Any?] {
            var model = DescribeDataLimitDetailResponseBody.DataLimit()
            model.fromMap(value)
            self.dataLimit = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDataLimitDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDataLimitSetRequest : Tea.TeaModel {
    public var featureType: Int32?

    public var lang: String?

    public var parentId: String?

    public var regionType: String?

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
        if self.regionType != nil {
            map["RegionType"] = self.regionType!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ParentId"] as? String {
            self.parentId = value
        }
        if let value = dict["RegionType"] as? String {
            self.regionType = value
        }
        if let value = dict["ResourceType"] as? Int32 {
            self.resourceType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheckStatus"] as? Int32 {
                    self.checkStatus = value
                }
                if let value = dict["CheckStatusName"] as? String {
                    self.checkStatusName = value
                }
                if let value = dict["Connector"] as? String {
                    self.connector = value
                }
                if let value = dict["GmtCreate"] as? Int64 {
                    self.gmtCreate = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["LocalName"] as? String {
                    self.localName = value
                }
                if let value = dict["ParentId"] as? String {
                    self.parentId = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceType"] as? Int64 {
                    self.resourceType = value
                }
                if let value = dict["ResourceTypeCode"] as? String {
                    self.resourceTypeCode = value
                }
                if let value = dict["UserName"] as? String {
                    self.userName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BucketName"] as? String {
                    self.bucketName = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LocalName"] as? String {
                    self.localName = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataLimitList"] as? [Any?] {
                var tmp : [DescribeDataLimitSetResponseBody.DataLimitSet.DataLimitList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDataLimitSetResponseBody.DataLimitSet.DataLimitList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataLimitList = tmp
            }
            if let value = dict["OssBucketList"] as? [Any?] {
                var tmp : [DescribeDataLimitSetResponseBody.DataLimitSet.OssBucketList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDataLimitSetResponseBody.DataLimitSet.OssBucketList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ossBucketList = tmp
            }
            if let value = dict["RegionList"] as? [Any?] {
                var tmp : [DescribeDataLimitSetResponseBody.DataLimitSet.RegionList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDataLimitSetResponseBody.DataLimitSet.RegionList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.regionList = tmp
            }
            if let value = dict["ResourceType"] as? Int64 {
                self.resourceType = value
            }
            if let value = dict["ResourceTypeCode"] as? String {
                self.resourceTypeCode = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataLimitSet"] as? [String: Any?] {
            var model = DescribeDataLimitSetResponseBody.DataLimitSet()
            model.fromMap(value)
            self.dataLimitSet = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDataLimitSetResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditStatus"] as? Int32 {
            self.auditStatus = value
        }
        if let value = dict["CheckStatus"] as? Int32 {
            self.checkStatus = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DatamaskStatus"] as? Int32 {
            self.datamaskStatus = value
        }
        if let value = dict["Enable"] as? Int32 {
            self.enable = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["EngineType"] as? String {
            self.engineType = value
        }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberAccount"] as? Int64 {
            self.memberAccount = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ParentId"] as? String {
            self.parentId = value
        }
        if let value = dict["ResourceType"] as? Int32 {
            self.resourceType = value
        }
        if let value = dict["ServiceRegionId"] as? String {
            self.serviceRegionId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
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

        public var lastStartTime: Int64?

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
            if self.lastStartTime != nil {
                map["LastStartTime"] = self.lastStartTime!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuditStatus"] as? Int32 {
                self.auditStatus = value
            }
            if let value = dict["AutoScan"] as? Int32 {
                self.autoScan = value
            }
            if let value = dict["CheckStatus"] as? Int32 {
                self.checkStatus = value
            }
            if let value = dict["CheckStatusName"] as? String {
                self.checkStatusName = value
            }
            if let value = dict["DatamaskStatus"] as? Int32 {
                self.datamaskStatus = value
            }
            if let value = dict["DbVersion"] as? String {
                self.dbVersion = value
            }
            if let value = dict["Enable"] as? Int32 {
                self.enable = value
            }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["EventStatus"] as? Int32 {
                self.eventStatus = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InstanceDescription"] as? String {
                self.instanceDescription = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LastFinishedTime"] as? Int64 {
                self.lastFinishedTime = value
            }
            if let value = dict["LastStartTime"] as? Int64 {
                self.lastStartTime = value
            }
            if let value = dict["LocalName"] as? String {
                self.localName = value
            }
            if let value = dict["LogStoreDay"] as? Int32 {
                self.logStoreDay = value
            }
            if let value = dict["MemberAccount"] as? Int64 {
                self.memberAccount = value
            }
            if let value = dict["NextStartTime"] as? Int64 {
                self.nextStartTime = value
            }
            if let value = dict["OcrStatus"] as? Int32 {
                self.ocrStatus = value
            }
            if let value = dict["ParentId"] as? String {
                self.parentId = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["ProcessStatus"] as? Int32 {
                self.processStatus = value
            }
            if let value = dict["ProcessTotalCount"] as? Int32 {
                self.processTotalCount = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceType"] as? Int64 {
                self.resourceType = value
            }
            if let value = dict["ResourceTypeCode"] as? String {
                self.resourceTypeCode = value
            }
            if let value = dict["SamplingSize"] as? Int32 {
                self.samplingSize = value
            }
            if let value = dict["SecurityGroupIdList"] as? [String] {
                self.securityGroupIdList = value
            }
            if let value = dict["SupportAudit"] as? Bool {
                self.supportAudit = value
            }
            if let value = dict["SupportDatamask"] as? Bool {
                self.supportDatamask = value
            }
            if let value = dict["SupportEvent"] as? Bool {
                self.supportEvent = value
            }
            if let value = dict["SupportOcr"] as? Bool {
                self.supportOcr = value
            }
            if let value = dict["SupportScan"] as? Bool {
                self.supportScan = value
            }
            if let value = dict["TenantName"] as? String {
                self.tenantName = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
            if let value = dict["VSwitchIdList"] as? [String] {
                self.vSwitchIdList = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeDataLimitsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeDataLimitsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDataLimitsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DstType"] as? Int32 {
            self.dstType = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MainProcessId"] as? Int64 {
            self.mainProcessId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SrcTableName"] as? String {
            self.srcTableName = value
        }
        if let value = dict["SrcType"] as? Int32 {
            self.srcType = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConflictCount"] as? Int64 {
                self.conflictCount = value
            }
            if let value = dict["DstType"] as? Int32 {
                self.dstType = value
            }
            if let value = dict["DstTypeCode"] as? String {
                self.dstTypeCode = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["FailCode"] as? String {
                self.failCode = value
            }
            if let value = dict["FailMsg"] as? String {
                self.failMsg = value
            }
            if let value = dict["HasDownloadFile"] as? Int32 {
                self.hasDownloadFile = value
            }
            if let value = dict["HasSubProcess"] as? Int32 {
                self.hasSubProcess = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["MaskingCount"] as? Int64 {
                self.maskingCount = value
            }
            if let value = dict["Percentage"] as? Int32 {
                self.percentage = value
            }
            if let value = dict["RunIndex"] as? Int32 {
                self.runIndex = value
            }
            if let value = dict["SrcTableName"] as? String {
                self.srcTableName = value
            }
            if let value = dict["SrcType"] as? Int32 {
                self.srcType = value
            }
            if let value = dict["SrcTypeCode"] as? String {
                self.srcTypeCode = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["Type"] as? Int32 {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeDataMaskingRunHistoryResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeDataMaskingRunHistoryResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDataMaskingRunHistoryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DstType"] as? Int32 {
            self.dstType = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SearchKey"] as? String {
            self.searchKey = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DstMemberAccount"] as? Int64 {
                self.dstMemberAccount = value
            }
            if let value = dict["DstPath"] as? String {
                self.dstPath = value
            }
            if let value = dict["DstType"] as? Int32 {
                self.dstType = value
            }
            if let value = dict["DstTypeCode"] as? String {
                self.dstTypeCode = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["HasUnfinishProcess"] as? Bool {
                self.hasUnfinishProcess = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["OriginalTable"] as? Bool {
                self.originalTable = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["RunCount"] as? Int32 {
                self.runCount = value
            }
            if let value = dict["SrcMemberAccount"] as? Int64 {
                self.srcMemberAccount = value
            }
            if let value = dict["SrcPath"] as? String {
                self.srcPath = value
            }
            if let value = dict["SrcType"] as? Int32 {
                self.srcType = value
            }
            if let value = dict["SrcTypeCode"] as? String {
                self.srcTypeCode = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskName"] as? String {
                self.taskName = value
            }
            if let value = dict["TriggerType"] as? Int32 {
                self.triggerType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeDataMaskingTasksResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeDataMaskingTasksResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDataMaskingTasksResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var categories: [String]?

        public var columnComment: String?

        public var columnName: String?

        public var dataType: String?

        public var engineType: String?

        public var id: String?

        public var instanceName: String?

        public var maskingStatus: Int32?

        public var modelTags: [DescribeDataObjectColumnDetailResponseBody.Items.ModelTags]?

        public var primaryKey: Bool?

        public var productId: Int64?

        public var regionId: String?

        public var riskLevelId: Int64?

        public var riskLevelName: String?

        public var ruleId: Int64?

        public var ruleName: String?

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
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.maskingStatus != nil {
                map["MaskingStatus"] = self.maskingStatus!
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
            if self.productId != nil {
                map["ProductId"] = self.productId!
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
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Categories"] as? [String] {
                self.categories = value
            }
            if let value = dict["ColumnComment"] as? String {
                self.columnComment = value
            }
            if let value = dict["ColumnName"] as? String {
                self.columnName = value
            }
            if let value = dict["DataType"] as? String {
                self.dataType = value
            }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["MaskingStatus"] as? Int32 {
                self.maskingStatus = value
            }
            if let value = dict["ModelTags"] as? [Any?] {
                var tmp : [DescribeDataObjectColumnDetailResponseBody.Items.ModelTags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDataObjectColumnDetailResponseBody.Items.ModelTags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.modelTags = tmp
            }
            if let value = dict["PrimaryKey"] as? Bool {
                self.primaryKey = value
            }
            if let value = dict["ProductId"] as? Int64 {
                self.productId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RiskLevelId"] as? Int64 {
                self.riskLevelId = value
            }
            if let value = dict["RiskLevelName"] as? String {
                self.riskLevelName = value
            }
            if let value = dict["RuleId"] as? Int64 {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["TableName"] as? String {
                self.tableName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeDataObjectColumnDetailResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeDataObjectColumnDetailResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDataObjectColumnDetailResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var categories: [String]?

        public var columnComment: String?

        public var columnName: String?

        public var dataType: String?

        public var engineType: String?

        public var id: String?

        public var instanceName: String?

        public var maskingStatus: Int32?

        public var modelTags: [DescribeDataObjectColumnDetailV2ResponseBody.Items.ModelTags]?

        public var primaryKey: Bool?

        public var productId: Int64?

        public var regionId: String?

        public var riskLevelId: Int64?

        public var riskLevelName: String?

        public var ruleId: Int64?

        public var ruleName: String?

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
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.maskingStatus != nil {
                map["MaskingStatus"] = self.maskingStatus!
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
            if self.productId != nil {
                map["ProductId"] = self.productId!
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
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Categories"] as? [String] {
                self.categories = value
            }
            if let value = dict["ColumnComment"] as? String {
                self.columnComment = value
            }
            if let value = dict["ColumnName"] as? String {
                self.columnName = value
            }
            if let value = dict["DataType"] as? String {
                self.dataType = value
            }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["MaskingStatus"] as? Int32 {
                self.maskingStatus = value
            }
            if let value = dict["ModelTags"] as? [Any?] {
                var tmp : [DescribeDataObjectColumnDetailV2ResponseBody.Items.ModelTags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDataObjectColumnDetailV2ResponseBody.Items.ModelTags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.modelTags = tmp
            }
            if let value = dict["PrimaryKey"] as? Bool {
                self.primaryKey = value
            }
            if let value = dict["ProductId"] as? Int64 {
                self.productId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RiskLevelId"] as? Int64 {
                self.riskLevelId = value
            }
            if let value = dict["RiskLevelName"] as? String {
                self.riskLevelName = value
            }
            if let value = dict["RuleId"] as? Int64 {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["TableName"] as? String {
                self.tableName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeDataObjectColumnDetailV2ResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeDataObjectColumnDetailV2ResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDataObjectColumnDetailV2ResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DomainId"] as? Int64 {
            self.domainId = value
        }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["FileCategoryCode"] as? Int64 {
            self.fileCategoryCode = value
        }
        if let value = dict["FileType"] as? Int64 {
            self.fileType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberAccount"] as? Int64 {
            self.memberAccount = value
        }
        if let value = dict["ModelIds"] as? String {
            self.modelIds = value
        }
        if let value = dict["ModelTagIds"] as? String {
            self.modelTagIds = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ParentCategoryIds"] as? String {
            self.parentCategoryIds = value
        }
        if let value = dict["ProductIds"] as? String {
            self.productIds = value
        }
        if let value = dict["QueryName"] as? String {
            self.queryName = value
        }
        if let value = dict["RiskLevels"] as? String {
            self.riskLevels = value
        }
        if let value = dict["ServiceRegionId"] as? String {
            self.serviceRegionId = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RiskLevelId"] as? Int64 {
                    self.riskLevelId = value
                }
                if let value = dict["RiskLevelName"] as? String {
                    self.riskLevelName = value
                }
                if let value = dict["RuleCount"] as? Int32 {
                    self.ruleCount = value
                }
                if let value = dict["RuleId"] as? Int64 {
                    self.ruleId = value
                }
                if let value = dict["RuleName"] as? String {
                    self.ruleName = value
                }
            }
        }
        public var categories: [String]?

        public var id: String?

        public var instanceDescription: String?

        public var instanceId: String?

        public var lastModifiedTime: Int64?

        public var lastScanTime: Int64?

        public var memberAccount: Int64?

        public var modelTags: [DescribeDataObjectsResponseBody.Items.ModelTags]?

        public var name: String?

        public var objectFileCategory: String?

        public var objectType: String?

        public var path: String?

        public var productCode: String?

        public var productId: Int64?

        public var regionId: String?

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
            if self.lastModifiedTime != nil {
                map["LastModifiedTime"] = self.lastModifiedTime!
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
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Categories"] as? [String] {
                self.categories = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["InstanceDescription"] as? String {
                self.instanceDescription = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LastModifiedTime"] as? Int64 {
                self.lastModifiedTime = value
            }
            if let value = dict["LastScanTime"] as? Int64 {
                self.lastScanTime = value
            }
            if let value = dict["MemberAccount"] as? Int64 {
                self.memberAccount = value
            }
            if let value = dict["ModelTags"] as? [Any?] {
                var tmp : [DescribeDataObjectsResponseBody.Items.ModelTags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDataObjectsResponseBody.Items.ModelTags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.modelTags = tmp
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ObjectFileCategory"] as? String {
                self.objectFileCategory = value
            }
            if let value = dict["ObjectType"] as? String {
                self.objectType = value
            }
            if let value = dict["Path"] as? String {
                self.path = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductId"] as? Int64 {
                self.productId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RegionName"] as? String {
                self.regionName = value
            }
            if let value = dict["RuleList"] as? [Any?] {
                var tmp : [DescribeDataObjectsResponseBody.Items.RuleList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDataObjectsResponseBody.Items.RuleList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ruleList = tmp
            }
            if let value = dict["SensitiveCount"] as? Int32 {
                self.sensitiveCount = value
            }
            if let value = dict["TemplateId"] as? Int64 {
                self.templateId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeDataObjectsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeDataObjectsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDataObjectsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? Int64 {
                self.code = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DocTypeList"] as? [Any?] {
            var tmp : [DescribeDocTypesResponseBody.DocTypeList] = []
            for v in value {
                if v != nil {
                    var model = DescribeDocTypesResponseBody.DocTypeList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.docTypeList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDocTypesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
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

                    public var z: [String]?

                    public override init() {
                        super.init()
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
                        if self.z != nil {
                            map["Z"] = self.z!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["X"] as? [String] {
                            self.x = value
                        }
                        if let value = dict["Y"] as? [String] {
                            self.y = value
                        }
                        if let value = dict["Z"] as? [String] {
                            self.z = value
                        }
                    }
                }
                public var chatType: Int32?

                public var data: DescribeEventDetailResponseBody.Event.Detail.Chart.Data?

                public var label: String?

                public var name: String?

                public var type: String?

                public var XLabel: String?

                public var YLabel: String?

                public var ZLabel: String?

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
                    if self.chatType != nil {
                        map["ChatType"] = self.chatType!
                    }
                    if self.data != nil {
                        map["Data"] = self.data?.toMap()
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
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
                    if self.ZLabel != nil {
                        map["ZLabel"] = self.ZLabel!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ChatType"] as? Int32 {
                        self.chatType = value
                    }
                    if let value = dict["Data"] as? [String: Any?] {
                        var model = DescribeEventDetailResponseBody.Event.Detail.Chart.Data()
                        model.fromMap(value)
                        self.data = model
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["XLabel"] as? String {
                        self.XLabel = value
                    }
                    if let value = dict["YLabel"] as? String {
                        self.YLabel = value
                    }
                    if let value = dict["ZLabel"] as? String {
                        self.ZLabel = value
                    }
                }
            }
            public class Content : Tea.TeaModel {
                public var label: String?

                public var name: String?

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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Chart"] as? [Any?] {
                    var tmp : [DescribeEventDetailResponseBody.Event.Detail.Chart] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeEventDetailResponseBody.Event.Detail.Chart()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.chart = tmp
                }
                if let value = dict["Content"] as? [Any?] {
                    var tmp : [DescribeEventDetailResponseBody.Event.Detail.Content] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeEventDetailResponseBody.Event.Detail.Content()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.content = tmp
                }
                if let value = dict["ResourceInfo"] as? [Any?] {
                    var tmp : [DescribeEventDetailResponseBody.Event.Detail.ResourceInfo] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeEventDetailResponseBody.Event.Detail.ResourceInfo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CurrentValue"] as? String {
                    self.currentValue = value
                }
                if let value = dict["DisableTime"] as? Int64 {
                    self.disableTime = value
                }
                if let value = dict["EnableTime"] as? Int64 {
                    self.enableTime = value
                }
                if let value = dict["HandlerName"] as? String {
                    self.handlerName = value
                }
                if let value = dict["HandlerType"] as? String {
                    self.handlerType = value
                }
                if let value = dict["HandlerValue"] as? Int32 {
                    self.handlerValue = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
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

        public var newAlarm: Bool?

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
            if self.newAlarm != nil {
                map["NewAlarm"] = self.newAlarm!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlertTime"] as? Int64 {
                self.alertTime = value
            }
            if let value = dict["Backed"] as? Bool {
                self.backed = value
            }
            if let value = dict["DataInstance"] as? String {
                self.dataInstance = value
            }
            if let value = dict["DealDisplayName"] as? String {
                self.dealDisplayName = value
            }
            if let value = dict["DealLoginName"] as? String {
                self.dealLoginName = value
            }
            if let value = dict["DealReason"] as? String {
                self.dealReason = value
            }
            if let value = dict["DealTime"] as? Int64 {
                self.dealTime = value
            }
            if let value = dict["DealUserId"] as? Int64 {
                self.dealUserId = value
            }
            if let value = dict["Detail"] as? [String: Any?] {
                var model = DescribeEventDetailResponseBody.Event.Detail()
                model.fromMap(value)
                self.detail = model
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["EventTime"] as? Int64 {
                self.eventTime = value
            }
            if let value = dict["HandleInfoList"] as? [Any?] {
                var tmp : [DescribeEventDetailResponseBody.Event.HandleInfoList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeEventDetailResponseBody.Event.HandleInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.handleInfoList = tmp
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["LogDetail"] as? String {
                self.logDetail = value
            }
            if let value = dict["LoginName"] as? String {
                self.loginName = value
            }
            if let value = dict["NewAlarm"] as? Bool {
                self.newAlarm = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["StatusName"] as? String {
                self.statusName = value
            }
            if let value = dict["SubTypeCode"] as? String {
                self.subTypeCode = value
            }
            if let value = dict["SubTypeName"] as? String {
                self.subTypeName = value
            }
            if let value = dict["TypeCode"] as? String {
                self.typeCode = value
            }
            if let value = dict["TypeName"] as? String {
                self.typeName = value
            }
            if let value = dict["UserId"] as? Int64 {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Event"] as? [String: Any?] {
            var model = DescribeEventDetailResponseBody.Event()
            model.fromMap(value)
            self.event = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeEventDetailResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ParentTypeId"] as? Int64 {
            self.parentTypeId = value
        }
        if let value = dict["ResourceId"] as? Int32 {
            self.resourceId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AdaptedProduct"] as? String {
                    self.adaptedProduct = value
                }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["ConfigCode"] as? String {
                    self.configCode = value
                }
                if let value = dict["ConfigContentType"] as? Int32 {
                    self.configContentType = value
                }
                if let value = dict["ConfigDescription"] as? String {
                    self.configDescription = value
                }
                if let value = dict["ConfigValue"] as? String {
                    self.configValue = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EventHitCount"] as? Int32 {
                    self.eventHitCount = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SubTypeList"] as? [Any?] {
                var tmp : [DescribeEventTypesResponseBody.EventTypeList.SubTypeList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeEventTypesResponseBody.EventTypeList.SubTypeList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventTypeList"] as? [Any?] {
            var tmp : [DescribeEventTypesResponseBody.EventTypeList] = []
            for v in value {
                if v != nil {
                    var model = DescribeEventTypesResponseBody.EventTypeList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.eventTypeList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeEventTypesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DealUserId"] as? String {
            self.dealUserId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SubTypeCode"] as? String {
            self.subTypeCode = value
        }
        if let value = dict["TargetProductCode"] as? String {
            self.targetProductCode = value
        }
        if let value = dict["TypeCode"] as? String {
            self.typeCode = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["WarnLevel"] as? Int32 {
            self.warnLevel = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlertTime"] as? Int64 {
                self.alertTime = value
            }
            if let value = dict["Backed"] as? Bool {
                self.backed = value
            }
            if let value = dict["DealDisplayName"] as? String {
                self.dealDisplayName = value
            }
            if let value = dict["DealLoginName"] as? String {
                self.dealLoginName = value
            }
            if let value = dict["DealTime"] as? Int64 {
                self.dealTime = value
            }
            if let value = dict["DealUserId"] as? Int64 {
                self.dealUserId = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["EventTime"] as? Int64 {
                self.eventTime = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["LoginName"] as? String {
                self.loginName = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["StatusName"] as? String {
                self.statusName = value
            }
            if let value = dict["SubTypeCode"] as? String {
                self.subTypeCode = value
            }
            if let value = dict["SubTypeName"] as? String {
                self.subTypeName = value
            }
            if let value = dict["TargetProductCode"] as? String {
                self.targetProductCode = value
            }
            if let value = dict["TypeCode"] as? String {
                self.typeCode = value
            }
            if let value = dict["TypeName"] as? String {
                self.typeName = value
            }
            if let value = dict["UserId"] as? Int64 {
                self.userId = value
            }
            if let value = dict["WarnLevel"] as? Int32 {
                self.warnLevel = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeEventsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeEventsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeIdentifyTaskStatusRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class DescribeIdentifyTaskStatusResponseBody : Tea.TeaModel {
    public class Content : Tea.TeaModel {
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
    public var content: DescribeIdentifyTaskStatusResponseBody.Content?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.content?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? [String: Any?] {
            var model = DescribeIdentifyTaskStatusResponseBody.Content()
            model.fromMap(value)
            self.content = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeIdentifyTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIdentifyTaskStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeIdentifyTaskStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditStatus"] as? Int32 {
            self.auditStatus = value
        }
        if let value = dict["AuthStatus"] as? Int32 {
            self.authStatus = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EngineType"] as? String {
            self.engineType = value
        }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
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
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["SearchKey"] as? String {
            self.searchKey = value
        }
        if let value = dict["SearchType"] as? String {
            self.searchType = value
        }
        if let value = dict["ServiceRegionId"] as? String {
            self.serviceRegionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuditStatus"] as? Int32 {
                self.auditStatus = value
            }
            if let value = dict["AutoScan"] as? Int32 {
                self.autoScan = value
            }
            if let value = dict["CanModifyUserName"] as? Bool {
                self.canModifyUserName = value
            }
            if let value = dict["CheckStatus"] as? Int32 {
                self.checkStatus = value
            }
            if let value = dict["DatamaskStatus"] as? Int32 {
                self.datamaskStatus = value
            }
            if let value = dict["DbName"] as? String {
                self.dbName = value
            }
            if let value = dict["Enable"] as? Int32 {
                self.enable = value
            }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InstanceDescription"] as? String {
                self.instanceDescription = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceSize"] as? Int64 {
                self.instanceSize = value
            }
            if let value = dict["LastModifyTime"] as? Int64 {
                self.lastModifyTime = value
            }
            if let value = dict["LastModifyUserId"] as? String {
                self.lastModifyUserId = value
            }
            if let value = dict["LogStoreDay"] as? Int32 {
                self.logStoreDay = value
            }
            if let value = dict["PasswordStatus"] as? Int32 {
                self.passwordStatus = value
            }
            if let value = dict["ProductId"] as? Int64 {
                self.productId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RegionName"] as? String {
                self.regionName = value
            }
            if let value = dict["SamplingSize"] as? Int32 {
                self.samplingSize = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["TenantName"] as? String {
                self.tenantName = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeInstanceSourcesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceSourcesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeInstanceSourcesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["RiskLevelId"] as? Int64 {
            self.riskLevelId = value
        }
        if let value = dict["RuleId"] as? Int64 {
            self.ruleId = value
        }
        if let value = dict["ServiceRegionId"] as? String {
            self.serviceRegionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var creationTime: Int64?

        public var departName: String?

        public var id: Int64?

        public var instanceDescription: String?

        public var labelsec: Bool?

        public var lastFinishTime: Int64?

        public var memberAliUid: String?

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
            if self.memberAliUid != nil {
                map["MemberAliUid"] = self.memberAliUid!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreationTime"] as? Int64 {
                self.creationTime = value
            }
            if let value = dict["DepartName"] as? String {
                self.departName = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InstanceDescription"] as? String {
                self.instanceDescription = value
            }
            if let value = dict["Labelsec"] as? Bool {
                self.labelsec = value
            }
            if let value = dict["LastFinishTime"] as? Int64 {
                self.lastFinishTime = value
            }
            if let value = dict["MemberAliUid"] as? String {
                self.memberAliUid = value
            }
            if let value = dict["ModelTags"] as? [Any?] {
                var tmp : [DescribeInstancesResponseBody.Items.ModelTags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInstancesResponseBody.Items.ModelTags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.modelTags = tmp
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OdpsRiskLevelName"] as? String {
                self.odpsRiskLevelName = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductId"] as? String {
                self.productId = value
            }
            if let value = dict["Protection"] as? Bool {
                self.protection = value
            }
            if let value = dict["RiskLevelId"] as? Int64 {
                self.riskLevelId = value
            }
            if let value = dict["RiskLevelName"] as? String {
                self.riskLevelName = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["Sensitive"] as? Bool {
                self.sensitive = value
            }
            if let value = dict["SensitiveCount"] as? Int32 {
                self.sensitiveCount = value
            }
            if let value = dict["TenantName"] as? String {
                self.tenantName = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeInstancesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstancesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? Int64 {
                        self.id = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CategoryName"] as? String {
                    self.categoryName = value
                }
                if let value = dict["Count"] as? Int64 {
                    self.count = value
                }
                if let value = dict["ModelTags"] as? [Any?] {
                    var tmp : [DescribeOssObjectDetailResponseBody.OssObjectDetail.RuleList.ModelTags] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeOssObjectDetailResponseBody.OssObjectDetail.RuleList.ModelTags()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.modelTags = tmp
                }
                if let value = dict["RiskLevelId"] as? Int64 {
                    self.riskLevelId = value
                }
                if let value = dict["RiskLevelName"] as? String {
                    self.riskLevelName = value
                }
                if let value = dict["RuleName"] as? String {
                    self.ruleName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BucketName"] as? String {
                self.bucketName = value
            }
            if let value = dict["CategoryName"] as? String {
                self.categoryName = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RiskLevelName"] as? String {
                self.riskLevelName = value
            }
            if let value = dict["RuleList"] as? [Any?] {
                var tmp : [DescribeOssObjectDetailResponseBody.OssObjectDetail.RuleList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeOssObjectDetailResponseBody.OssObjectDetail.RuleList()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OssObjectDetail"] as? [String: Any?] {
            var model = DescribeOssObjectDetailResponseBody.OssObjectDetail()
            model.fromMap(value)
            self.ossObjectDetail = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeOssObjectDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeOssObjectDetailV2Request : Tea.TeaModel {
    public var bucketName: String?

    public var id: String?

    public var lang: String?

    public var objectKey: String?

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
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.objectKey != nil {
            map["ObjectKey"] = self.objectKey!
        }
        if self.serviceRegionId != nil {
            map["ServiceRegionId"] = self.serviceRegionId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BucketName"] as? String {
            self.bucketName = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ObjectKey"] as? String {
            self.objectKey = value
        }
        if let value = dict["ServiceRegionId"] as? String {
            self.serviceRegionId = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? Int64 {
                        self.id = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CategoryName"] as? String {
                    self.categoryName = value
                }
                if let value = dict["Count"] as? Int64 {
                    self.count = value
                }
                if let value = dict["ModelTags"] as? [Any?] {
                    var tmp : [DescribeOssObjectDetailV2ResponseBody.OssObjectDetail.RuleList.ModelTags] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeOssObjectDetailV2ResponseBody.OssObjectDetail.RuleList.ModelTags()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.modelTags = tmp
                }
                if let value = dict["RiskLevelId"] as? Int64 {
                    self.riskLevelId = value
                }
                if let value = dict["RiskLevelName"] as? String {
                    self.riskLevelName = value
                }
                if let value = dict["RuleName"] as? String {
                    self.ruleName = value
                }
            }
        }
        public var bucketName: String?

        public var categoryName: String?

        public var fileCategoryName: String?

        public var id: String?

        public var modelTagIds: String?

        public var name: String?

        public var objectAcl: String?

        public var regionId: String?

        public var riskLevelId: Int32?

        public var riskLevelName: String?

        public var ruleList: [DescribeOssObjectDetailV2ResponseBody.OssObjectDetail.RuleList]?

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
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.fileCategoryName != nil {
                map["FileCategoryName"] = self.fileCategoryName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.modelTagIds != nil {
                map["ModelTagIds"] = self.modelTagIds!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.objectAcl != nil {
                map["ObjectAcl"] = self.objectAcl!
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
            if self.ruleList != nil {
                var tmp : [Any] = []
                for k in self.ruleList! {
                    tmp.append(k.toMap())
                }
                map["RuleList"] = tmp
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BucketName"] as? String {
                self.bucketName = value
            }
            if let value = dict["CategoryName"] as? String {
                self.categoryName = value
            }
            if let value = dict["FileCategoryName"] as? String {
                self.fileCategoryName = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["ModelTagIds"] as? String {
                self.modelTagIds = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ObjectAcl"] as? String {
                self.objectAcl = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RiskLevelId"] as? Int32 {
                self.riskLevelId = value
            }
            if let value = dict["RiskLevelName"] as? String {
                self.riskLevelName = value
            }
            if let value = dict["RuleList"] as? [Any?] {
                var tmp : [DescribeOssObjectDetailV2ResponseBody.OssObjectDetail.RuleList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeOssObjectDetailV2ResponseBody.OssObjectDetail.RuleList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ruleList = tmp
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OssObjectDetail"] as? [String: Any?] {
            var model = DescribeOssObjectDetailV2ResponseBody.OssObjectDetail()
            model.fromMap(value)
            self.ossObjectDetail = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeOssObjectDetailV2ResponseBody()
            model.fromMap(value)
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

    public var marker: Int64?

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
        if self.marker != nil {
            map["Marker"] = self.marker!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["FileCategoryCode"] as? Int64 {
            self.fileCategoryCode = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LastScanTimeEnd"] as? Int64 {
            self.lastScanTimeEnd = value
        }
        if let value = dict["LastScanTimeStart"] as? Int64 {
            self.lastScanTimeStart = value
        }
        if let value = dict["Marker"] as? Int64 {
            self.marker = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RiskLevelId"] as? Int32 {
            self.riskLevelId = value
        }
        if let value = dict["RuleId"] as? Int64 {
            self.ruleId = value
        }
        if let value = dict["ServiceRegionId"] as? String {
            self.serviceRegionId = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int64 {
                    self.count = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RiskLevelId"] as? Int64 {
                    self.riskLevelId = value
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

        public var lastModifiedTime: Int64?

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
            if self.lastModifiedTime != nil {
                map["LastModifiedTime"] = self.lastModifiedTime!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BucketName"] as? String {
                self.bucketName = value
            }
            if let value = dict["Category"] as? Int64 {
                self.category = value
            }
            if let value = dict["CategoryName"] as? String {
                self.categoryName = value
            }
            if let value = dict["FileCategoryCode"] as? Int64 {
                self.fileCategoryCode = value
            }
            if let value = dict["FileCategoryName"] as? String {
                self.fileCategoryName = value
            }
            if let value = dict["FileId"] as? String {
                self.fileId = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["InstanceId"] as? Int64 {
                self.instanceId = value
            }
            if let value = dict["LastModifiedTime"] as? Int64 {
                self.lastModifiedTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RiskLevelId"] as? Int64 {
                self.riskLevelId = value
            }
            if let value = dict["RiskLevelName"] as? String {
                self.riskLevelName = value
            }
            if let value = dict["RuleCount"] as? Int32 {
                self.ruleCount = value
            }
            if let value = dict["RuleList"] as? [Any?] {
                var tmp : [DescribeOssObjectsResponseBody.Items.RuleList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeOssObjectsResponseBody.Items.RuleList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ruleList = tmp
            }
            if let value = dict["SensitiveCount"] as? Int32 {
                self.sensitiveCount = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeOssObjectsResponseBody.Items]?

    public var marker: String?

    public var nextMarker: String?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var truncated: Bool?

    public override init() {
        super.init()
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
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.nextMarker != nil {
            map["NextMarker"] = self.nextMarker!
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
        if self.truncated != nil {
            map["Truncated"] = self.truncated!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeOssObjectsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeOssObjectsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["NextMarker"] as? String {
            self.nextMarker = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["Truncated"] as? Bool {
            self.truncated = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeOssObjectsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["InstanceId"] as? Int64 {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["RiskLevelId"] as? Int64 {
            self.riskLevelId = value
        }
        if let value = dict["RuleId"] as? Int64 {
            self.ruleId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreationTime"] as? Int64 {
                self.creationTime = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InstanceId"] as? Int64 {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["RiskLevelId"] as? Int64 {
                self.riskLevelId = value
            }
            if let value = dict["RiskLevelName"] as? String {
                self.riskLevelName = value
            }
            if let value = dict["Sensitive"] as? Bool {
                self.sensitive = value
            }
            if let value = dict["SensitiveCount"] as? Int32 {
                self.sensitiveCount = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribePackagesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribePackagesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePackagesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthStatus"] as? Int32 {
            self.authStatus = value
        }
        if let value = dict["CheckStatus"] as? Int32 {
            self.checkStatus = value
        }
        if let value = dict["ClusterStatus"] as? String {
            self.clusterStatus = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["EngineType"] as? String {
            self.engineType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MemberAccount"] as? Int64 {
            self.memberAccount = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceType"] as? Int64 {
            self.resourceType = value
        }
        if let value = dict["ServiceRegionId"] as? String {
            self.serviceRegionId = value
        }
    }
}

public class DescribeParentInstanceResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var auditStatus: Int32?

        public var authStatus: Int32?

        public var authTime: Int64?

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

        public var regionId: String?

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
            if self.authTime != nil {
                map["AuthTime"] = self.authTime!
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
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuditStatus"] as? Int32 {
                self.auditStatus = value
            }
            if let value = dict["AuthStatus"] as? Int32 {
                self.authStatus = value
            }
            if let value = dict["AuthTime"] as? Int64 {
                self.authTime = value
            }
            if let value = dict["ClusterStatus"] as? String {
                self.clusterStatus = value
            }
            if let value = dict["ConnectNode"] as? String {
                self.connectNode = value
            }
            if let value = dict["DbNum"] as? String {
                self.dbNum = value
            }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["InstanceDescription"] as? String {
                self.instanceDescription = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceSize"] as? Int64 {
                self.instanceSize = value
            }
            if let value = dict["LocalName"] as? String {
                self.localName = value
            }
            if let value = dict["MemberAccount"] as? Int64 {
                self.memberAccount = value
            }
            if let value = dict["ParentId"] as? String {
                self.parentId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["SupportConnectNodes"] as? String {
                self.supportConnectNodes = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["TenantName"] as? String {
                self.tenantName = value
            }
            if let value = dict["UnConnectDbCount"] as? String {
                self.unConnectDbCount = value
            }
            if let value = dict["UnSupportOneClickAuthReason"] as? String {
                self.unSupportOneClickAuthReason = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeParentInstanceResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeParentInstanceResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeParentInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ReferenceNum"] as? Int32 {
                self.referenceNum = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RiskLevelList"] as? [Any?] {
            var tmp : [DescribeRiskLevelsResponseBody.RiskLevelList] = []
            for v in value {
                if v != nil {
                    var model = DescribeRiskLevelsResponseBody.RiskLevelList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRiskLevelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRulesRequest : Tea.TeaModel {
    public var category: Int32?

    public var contentCategory: Int32?

    public var cooperationChannel: String?

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

    public var simplify: Bool?

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
        if self.cooperationChannel != nil {
            map["CooperationChannel"] = self.cooperationChannel!
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
        if self.simplify != nil {
            map["Simplify"] = self.simplify!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? Int32 {
            self.category = value
        }
        if let value = dict["ContentCategory"] as? Int32 {
            self.contentCategory = value
        }
        if let value = dict["CooperationChannel"] as? String {
            self.cooperationChannel = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["CustomType"] as? Int32 {
            self.customType = value
        }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["KeywordCompatible"] as? Bool {
            self.keywordCompatible = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MatchType"] as? Int32 {
            self.matchType = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductCode"] as? Int32 {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["RiskLevelId"] as? Int64 {
            self.riskLevelId = value
        }
        if let value = dict["RuleType"] as? Int32 {
            self.ruleType = value
        }
        if let value = dict["Simplify"] as? Bool {
            self.simplify = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["SupportForm"] as? Int32 {
            self.supportForm = value
        }
        if let value = dict["WarnLevel"] as? Int32 {
            self.warnLevel = value
        }
    }
}

public class DescribeRulesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var auditMode: Int32?

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

        public var modelRuleIds: String?

        public var name: String?

        public var productCode: String?

        public var productId: Int64?

        public var riskLevelId: Int64?

        public var riskLevelName: String?

        public var statExpress: String?

        public var status: Int32?

        public var supportForm: Int32?

        public var target: String?

        public var templateRuleIds: String?

        public var threatAnalysisStatus: Int32?

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
            if self.auditMode != nil {
                map["AuditMode"] = self.auditMode!
            }
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
            if self.modelRuleIds != nil {
                map["ModelRuleIds"] = self.modelRuleIds!
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
            if self.templateRuleIds != nil {
                map["TemplateRuleIds"] = self.templateRuleIds!
            }
            if self.threatAnalysisStatus != nil {
                map["ThreatAnalysisStatus"] = self.threatAnalysisStatus!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.warnLevel != nil {
                map["WarnLevel"] = self.warnLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuditMode"] as? Int32 {
                self.auditMode = value
            }
            if let value = dict["Category"] as? Int32 {
                self.category = value
            }
            if let value = dict["CategoryName"] as? String {
                self.categoryName = value
            }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["ContentCategory"] as? String {
                self.contentCategory = value
            }
            if let value = dict["CustomType"] as? Int32 {
                self.customType = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["HitTotalCount"] as? Int32 {
                self.hitTotalCount = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["LoginName"] as? String {
                self.loginName = value
            }
            if let value = dict["MajorKey"] as? String {
                self.majorKey = value
            }
            if let value = dict["MatchType"] as? Int32 {
                self.matchType = value
            }
            if let value = dict["ModelRuleIds"] as? String {
                self.modelRuleIds = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductId"] as? Int64 {
                self.productId = value
            }
            if let value = dict["RiskLevelId"] as? Int64 {
                self.riskLevelId = value
            }
            if let value = dict["RiskLevelName"] as? String {
                self.riskLevelName = value
            }
            if let value = dict["StatExpress"] as? String {
                self.statExpress = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["SupportForm"] as? Int32 {
                self.supportForm = value
            }
            if let value = dict["Target"] as? String {
                self.target = value
            }
            if let value = dict["TemplateRuleIds"] as? String {
                self.templateRuleIds = value
            }
            if let value = dict["ThreatAnalysisStatus"] as? Int32 {
                self.threatAnalysisStatus = value
            }
            if let value = dict["UserId"] as? Int64 {
                self.userId = value
            }
            if let value = dict["WarnLevel"] as? Int32 {
                self.warnLevel = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeRulesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeRulesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["InstanceId"] as? Int64 {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PackageId"] as? Int64 {
            self.packageId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["RiskLevelId"] as? Int64 {
            self.riskLevelId = value
        }
        if let value = dict["RuleId"] as? Int64 {
            self.ruleId = value
        }
        if let value = dict["ServiceRegionId"] as? String {
            self.serviceRegionId = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int64 {
                    self.count = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RiskLevelId"] as? Int64 {
                    self.riskLevelId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreationTime"] as? Int64 {
                self.creationTime = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InstanceDescription"] as? String {
                self.instanceDescription = value
            }
            if let value = dict["InstanceId"] as? Int64 {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductId"] as? String {
                self.productId = value
            }
            if let value = dict["RiskLevelId"] as? Int64 {
                self.riskLevelId = value
            }
            if let value = dict["RiskLevelName"] as? String {
                self.riskLevelName = value
            }
            if let value = dict["RuleList"] as? [Any?] {
                var tmp : [DescribeTablesResponseBody.Items.RuleList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeTablesResponseBody.Items.RuleList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ruleList = tmp
            }
            if let value = dict["Sensitive"] as? Bool {
                self.sensitive = value
            }
            if let value = dict["SensitiveCount"] as? Int32 {
                self.sensitiveCount = value
            }
            if let value = dict["SensitiveRatio"] as? String {
                self.sensitiveRatio = value
            }
            if let value = dict["TenantName"] as? String {
                self.tenantName = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeTablesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeTablesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeTablesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RuleList"] as? [Any?] {
            var tmp : [DescribeTemplateAllRulesResponseBody.RuleList] = []
            for v in value {
                if v != nil {
                    var model = DescribeTemplateAllRulesResponseBody.RuleList()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeTemplateAllRulesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class DescribeUserStatusResponseBody : Tea.TeaModel {
    public class UserStatus : Tea.TeaModel {
        public var accessKeyId: String?

        public var assetRoleAuthed: Bool?

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
            if self.assetRoleAuthed != nil {
                map["AssetRoleAuthed"] = self.assetRoleAuthed!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["AssetRoleAuthed"] as? Bool {
                self.assetRoleAuthed = value
            }
            if let value = dict["AuditClosable"] as? Bool {
                self.auditClosable = value
            }
            if let value = dict["AuditReleasable"] as? Bool {
                self.auditReleasable = value
            }
            if let value = dict["Authed"] as? Bool {
                self.authed = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["DataManagerRole"] as? Int32 {
                self.dataManagerRole = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceNum"] as? Int32 {
                self.instanceNum = value
            }
            if let value = dict["InstanceTotalCount"] as? Int64 {
                self.instanceTotalCount = value
            }
            if let value = dict["LabStatus"] as? Int32 {
                self.labStatus = value
            }
            if let value = dict["OssTotalSize"] as? Int64 {
                self.ossTotalSize = value
            }
            if let value = dict["ProtectionDays"] as? Int32 {
                self.protectionDays = value
            }
            if let value = dict["Purchased"] as? Bool {
                self.purchased = value
            }
            if let value = dict["ReleaseDays"] as? Int32 {
                self.releaseDays = value
            }
            if let value = dict["ReleaseTime"] as? Int64 {
                self.releaseTime = value
            }
            if let value = dict["RemainDays"] as? Int32 {
                self.remainDays = value
            }
            if let value = dict["Trail"] as? Bool {
                self.trail = value
            }
            if let value = dict["UseAgentAudit"] as? Bool {
                self.useAgentAudit = value
            }
            if let value = dict["UseInstanceNum"] as? Int32 {
                self.useInstanceNum = value
            }
            if let value = dict["UseOssSize"] as? Int64 {
                self.useOssSize = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserStatus"] as? [String: Any?] {
            var model = DescribeUserStatusResponseBody.UserStatus()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeUserStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DisableUserConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ExecDatamaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ManualTriggerMaskingProcessResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MaskOssImageRequest : Tea.TeaModel {
    public var bucketName: String?

    public var isAlwaysUpload: Bool?

    public var isSupportRestore: Bool?

    public var lang: String?

    public var maskRuleIdList: String?

    public var objectKey: String?

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
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.isAlwaysUpload != nil {
            map["IsAlwaysUpload"] = self.isAlwaysUpload!
        }
        if self.isSupportRestore != nil {
            map["IsSupportRestore"] = self.isSupportRestore!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maskRuleIdList != nil {
            map["MaskRuleIdList"] = self.maskRuleIdList!
        }
        if self.objectKey != nil {
            map["ObjectKey"] = self.objectKey!
        }
        if self.serviceRegionId != nil {
            map["ServiceRegionId"] = self.serviceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BucketName"] as? String {
            self.bucketName = value
        }
        if let value = dict["IsAlwaysUpload"] as? Bool {
            self.isAlwaysUpload = value
        }
        if let value = dict["IsSupportRestore"] as? Bool {
            self.isSupportRestore = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaskRuleIdList"] as? String {
            self.maskRuleIdList = value
        }
        if let value = dict["ObjectKey"] as? String {
            self.objectKey = value
        }
        if let value = dict["ServiceRegionId"] as? String {
            self.serviceRegionId = value
        }
    }
}

public class MaskOssImageResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class MaskOssImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MaskOssImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = MaskOssImageResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditStatus"] as? Int32 {
            self.auditStatus = value
        }
        if let value = dict["AutoScan"] as? Int32 {
            self.autoScan = value
        }
        if let value = dict["EngineType"] as? String {
            self.engineType = value
        }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["LogStoreDay"] as? Int32 {
            self.logStoreDay = value
        }
        if let value = dict["ModifyPassword"] as? Bool {
            self.modifyPassword = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["Port"] as? Int32 {
            self.port = value
        }
        if let value = dict["ResourceType"] as? Int32 {
            self.resourceType = value
        }
        if let value = dict["SamplingSize"] as? Int32 {
            self.samplingSize = value
        }
        if let value = dict["SecurityGroupIdList"] as? [String] {
            self.securityGroupIdList = value
        }
        if let value = dict["ServiceRegionId"] as? String {
            self.serviceRegionId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["VSwitchIdList"] as? [String] {
            self.vSwitchIdList = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDataLimitResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefaultId"] as? Int64 {
            self.defaultId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SensitiveIds"] as? String {
            self.sensitiveIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDefaultLevelResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Backed"] as? Bool {
            self.backed = value
        }
        if let value = dict["DealReason"] as? String {
            self.dealReason = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyEventStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SubTypeIds"] as? String {
            self.subTypeIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyEventTypeStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ReportTaskStatus"] as? Int32 {
            self.reportTaskStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyReportTaskStatusResponseBody()
            model.fromMap(value)
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

    public var modelRuleIds: String?

    public var name: String?

    public var productCode: String?

    public var productId: Int64?

    public var riskLevelId: Int64?

    public var ruleType: Int32?

    public var supportForm: Int32?

    public var templateRuleIds: String?

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
        if self.modelRuleIds != nil {
            map["ModelRuleIds"] = self.modelRuleIds!
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
        if self.templateRuleIds != nil {
            map["TemplateRuleIds"] = self.templateRuleIds!
        }
        if self.warnLevel != nil {
            map["WarnLevel"] = self.warnLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? Int32 {
            self.category = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MatchType"] as? Int32 {
            self.matchType = value
        }
        if let value = dict["ModelRuleIds"] as? String {
            self.modelRuleIds = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["RiskLevelId"] as? Int64 {
            self.riskLevelId = value
        }
        if let value = dict["RuleType"] as? Int32 {
            self.ruleType = value
        }
        if let value = dict["SupportForm"] as? Int32 {
            self.supportForm = value
        }
        if let value = dict["TemplateRuleIds"] as? String {
            self.templateRuleIds = value
        }
        if let value = dict["WarnLevel"] as? Int32 {
            self.warnLevel = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Ids"] as? String {
            self.ids = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FailedIds"] as? String {
            self.failedIds = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyRuleStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestoreOssImageRequest : Tea.TeaModel {
    public var bucket: String?

    public var lang: String?

    public var objectKey: String?

    public var serviceRegionId: String?

    public var targetObjectKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucket != nil {
            map["Bucket"] = self.bucket!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.objectKey != nil {
            map["ObjectKey"] = self.objectKey!
        }
        if self.serviceRegionId != nil {
            map["ServiceRegionId"] = self.serviceRegionId!
        }
        if self.targetObjectKey != nil {
            map["TargetObjectKey"] = self.targetObjectKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bucket"] as? String {
            self.bucket = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ObjectKey"] as? String {
            self.objectKey = value
        }
        if let value = dict["ServiceRegionId"] as? String {
            self.serviceRegionId = value
        }
        if let value = dict["TargetObjectKey"] as? String {
            self.targetObjectKey = value
        }
    }
}

public class RestoreOssImageResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var restoredImageKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.restoredImageKey != nil {
            map["RestoredImageKey"] = self.restoredImageKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RestoredImageKey"] as? String {
            self.restoredImageKey = value
        }
    }
}

public class RestoreOssImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestoreOssImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RestoreOssImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ScanOssObjectV1Request : Tea.TeaModel {
    public var bucketName: String?

    public var lang: String?

    public var objectKeyList: [String]?

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
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.objectKeyList != nil {
            map["ObjectKeyList"] = self.objectKeyList!
        }
        if self.serviceRegionId != nil {
            map["ServiceRegionId"] = self.serviceRegionId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BucketName"] as? String {
            self.bucketName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ObjectKeyList"] as? [String] {
            self.objectKeyList = value
        }
        if let value = dict["ServiceRegionId"] as? String {
            self.serviceRegionId = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class ScanOssObjectV1ShrinkRequest : Tea.TeaModel {
    public var bucketName: String?

    public var lang: String?

    public var objectKeyListShrink: String?

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
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.objectKeyListShrink != nil {
            map["ObjectKeyList"] = self.objectKeyListShrink!
        }
        if self.serviceRegionId != nil {
            map["ServiceRegionId"] = self.serviceRegionId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BucketName"] as? String {
            self.bucketName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ObjectKeyList"] as? String {
            self.objectKeyListShrink = value
        }
        if let value = dict["ServiceRegionId"] as? String {
            self.serviceRegionId = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class ScanOssObjectV1ResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ScanOssObjectV1Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScanOssObjectV1ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ScanOssObjectV1ResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopMaskingProcessResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
