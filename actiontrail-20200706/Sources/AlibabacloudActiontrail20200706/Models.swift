import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateAdvancedQueryHistoryRequest : Tea.TeaModel {
    public var querySql: String?

    public var simpleQuery: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.querySql != nil {
            map["QuerySql"] = self.querySql!
        }
        if self.simpleQuery != nil {
            map["SimpleQuery"] = self.simpleQuery!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QuerySql"] as? String {
            self.querySql = value
        }
        if let value = dict["SimpleQuery"] as? Bool {
            self.simpleQuery = value
        }
    }
}

public class CreateAdvancedQueryHistoryResponseBody : Tea.TeaModel {
    public var queryId: String?

    public var querySql: String?

    public var requestId: String?

    public var simpleQuery: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queryId != nil {
            map["QueryId"] = self.queryId!
        }
        if self.querySql != nil {
            map["QuerySql"] = self.querySql!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.simpleQuery != nil {
            map["SimpleQuery"] = self.simpleQuery!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QueryId"] as? String {
            self.queryId = value
        }
        if let value = dict["QuerySql"] as? String {
            self.querySql = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SimpleQuery"] as? Bool {
            self.simpleQuery = value
        }
    }
}

public class CreateAdvancedQueryHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAdvancedQueryHistoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAdvancedQueryHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAdvancedQueryTemplateRequest : Tea.TeaModel {
    public var simpleQuery: Bool?

    public var templateName: String?

    public var templateSql: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.simpleQuery != nil {
            map["SimpleQuery"] = self.simpleQuery!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateSql != nil {
            map["TemplateSql"] = self.templateSql!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SimpleQuery"] as? Bool {
            self.simpleQuery = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateSql"] as? String {
            self.templateSql = value
        }
    }
}

public class CreateAdvancedQueryTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var simpleQuery: String?

    public var templateId: String?

    public var templateName: String?

    public var templateSql: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.simpleQuery != nil {
            map["SimpleQuery"] = self.simpleQuery!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateSql != nil {
            map["TemplateSql"] = self.templateSql!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SimpleQuery"] as? String {
            self.simpleQuery = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateSql"] as? String {
            self.templateSql = value
        }
    }
}

public class CreateAdvancedQueryTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAdvancedQueryTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAdvancedQueryTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDeliveryHistoryJobRequest : Tea.TeaModel {
    public var clientToken: String?

    public var trailName: String?

    public override init() {
        super.init()
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
        if self.trailName != nil {
            map["TrailName"] = self.trailName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["TrailName"] as? String {
            self.trailName = value
        }
    }
}

public class CreateDeliveryHistoryJobResponseBody : Tea.TeaModel {
    public var jobId: Int32?

    public var requestId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? Int32 {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDeliveryHistoryJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDeliveryHistoryJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDeliveryHistoryJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTrailRequest : Tea.TeaModel {
    public var eventRW: String?

    public var isOrganizationTrail: Bool?

    public var maxComputeProjectArn: String?

    public var maxComputeWriteRoleArn: String?

    public var name: String?

    public var ossBucketName: String?

    public var ossKeyPrefix: String?

    public var ossWriteRoleArn: String?

    public var slsProjectArn: String?

    public var slsWriteRoleArn: String?

    public var trailRegion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventRW != nil {
            map["EventRW"] = self.eventRW!
        }
        if self.isOrganizationTrail != nil {
            map["IsOrganizationTrail"] = self.isOrganizationTrail!
        }
        if self.maxComputeProjectArn != nil {
            map["MaxComputeProjectArn"] = self.maxComputeProjectArn!
        }
        if self.maxComputeWriteRoleArn != nil {
            map["MaxComputeWriteRoleArn"] = self.maxComputeWriteRoleArn!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossKeyPrefix != nil {
            map["OssKeyPrefix"] = self.ossKeyPrefix!
        }
        if self.ossWriteRoleArn != nil {
            map["OssWriteRoleArn"] = self.ossWriteRoleArn!
        }
        if self.slsProjectArn != nil {
            map["SlsProjectArn"] = self.slsProjectArn!
        }
        if self.slsWriteRoleArn != nil {
            map["SlsWriteRoleArn"] = self.slsWriteRoleArn!
        }
        if self.trailRegion != nil {
            map["TrailRegion"] = self.trailRegion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventRW"] as? String {
            self.eventRW = value
        }
        if let value = dict["IsOrganizationTrail"] as? Bool {
            self.isOrganizationTrail = value
        }
        if let value = dict["MaxComputeProjectArn"] as? String {
            self.maxComputeProjectArn = value
        }
        if let value = dict["MaxComputeWriteRoleArn"] as? String {
            self.maxComputeWriteRoleArn = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OssBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["OssKeyPrefix"] as? String {
            self.ossKeyPrefix = value
        }
        if let value = dict["OssWriteRoleArn"] as? String {
            self.ossWriteRoleArn = value
        }
        if let value = dict["SlsProjectArn"] as? String {
            self.slsProjectArn = value
        }
        if let value = dict["SlsWriteRoleArn"] as? String {
            self.slsWriteRoleArn = value
        }
        if let value = dict["TrailRegion"] as? String {
            self.trailRegion = value
        }
    }
}

public class CreateTrailResponseBody : Tea.TeaModel {
    public var eventRW: String?

    public var homeRegion: String?

    public var maxComputeProjectArn: String?

    public var maxComputeWriteRoleArn: String?

    public var name: String?

    public var ossBucketName: String?

    public var ossKeyPrefix: String?

    public var ossWriteRoleArn: String?

    public var requestId: String?

    public var slsProjectArn: String?

    public var slsWriteRoleArn: String?

    public var trailRegion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventRW != nil {
            map["EventRW"] = self.eventRW!
        }
        if self.homeRegion != nil {
            map["HomeRegion"] = self.homeRegion!
        }
        if self.maxComputeProjectArn != nil {
            map["MaxComputeProjectArn"] = self.maxComputeProjectArn!
        }
        if self.maxComputeWriteRoleArn != nil {
            map["MaxComputeWriteRoleArn"] = self.maxComputeWriteRoleArn!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossKeyPrefix != nil {
            map["OssKeyPrefix"] = self.ossKeyPrefix!
        }
        if self.ossWriteRoleArn != nil {
            map["OssWriteRoleArn"] = self.ossWriteRoleArn!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.slsProjectArn != nil {
            map["SlsProjectArn"] = self.slsProjectArn!
        }
        if self.slsWriteRoleArn != nil {
            map["SlsWriteRoleArn"] = self.slsWriteRoleArn!
        }
        if self.trailRegion != nil {
            map["TrailRegion"] = self.trailRegion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventRW"] as? String {
            self.eventRW = value
        }
        if let value = dict["HomeRegion"] as? String {
            self.homeRegion = value
        }
        if let value = dict["MaxComputeProjectArn"] as? String {
            self.maxComputeProjectArn = value
        }
        if let value = dict["MaxComputeWriteRoleArn"] as? String {
            self.maxComputeWriteRoleArn = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OssBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["OssKeyPrefix"] as? String {
            self.ossKeyPrefix = value
        }
        if let value = dict["OssWriteRoleArn"] as? String {
            self.ossWriteRoleArn = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SlsProjectArn"] as? String {
            self.slsProjectArn = value
        }
        if let value = dict["SlsWriteRoleArn"] as? String {
            self.slsWriteRoleArn = value
        }
        if let value = dict["TrailRegion"] as? String {
            self.trailRegion = value
        }
    }
}

public class CreateTrailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTrailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTrailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAdvancedQueryHistoryRequest : Tea.TeaModel {
    public var queryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queryId != nil {
            map["QueryId"] = self.queryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QueryId"] as? String {
            self.queryId = value
        }
    }
}

public class DeleteAdvancedQueryHistoryResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteAdvancedQueryHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAdvancedQueryHistoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAdvancedQueryHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAdvancedQueryTemplateRequest : Tea.TeaModel {
    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class DeleteAdvancedQueryTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteAdvancedQueryTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAdvancedQueryTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAdvancedQueryTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDataEventSelectorRequest : Tea.TeaModel {
    public var trailName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.trailName != nil {
            map["TrailName"] = self.trailName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TrailName"] as? String {
            self.trailName = value
        }
    }
}

public class DeleteDataEventSelectorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteDataEventSelectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataEventSelectorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDataEventSelectorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDeliveryHistoryJobRequest : Tea.TeaModel {
    public var jobId: Int32?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? Int32 {
            self.jobId = value
        }
    }
}

public class DeleteDeliveryHistoryJobResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteDeliveryHistoryJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDeliveryHistoryJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDeliveryHistoryJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTrailRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DeleteTrailResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteTrailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTrailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteTrailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAdvancedQueryHistoryResponseBody : Tea.TeaModel {
    public class QueryHistoryList : Tea.TeaModel {
        public var queryId: String?

        public var querySql: String?

        public var simpleQuery: Bool?

        public var timeStamp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.queryId != nil {
                map["QueryId"] = self.queryId!
            }
            if self.querySql != nil {
                map["QuerySql"] = self.querySql!
            }
            if self.simpleQuery != nil {
                map["SimpleQuery"] = self.simpleQuery!
            }
            if self.timeStamp != nil {
                map["TimeStamp"] = self.timeStamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["QueryId"] as? String {
                self.queryId = value
            }
            if let value = dict["QuerySql"] as? String {
                self.querySql = value
            }
            if let value = dict["SimpleQuery"] as? Bool {
                self.simpleQuery = value
            }
            if let value = dict["TimeStamp"] as? String {
                self.timeStamp = value
            }
        }
    }
    public var queryHistoryList: [DescribeAdvancedQueryHistoryResponseBody.QueryHistoryList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queryHistoryList != nil {
            var tmp : [Any] = []
            for k in self.queryHistoryList! {
                tmp.append(k.toMap())
            }
            map["QueryHistoryList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QueryHistoryList"] as? [Any?] {
            var tmp : [DescribeAdvancedQueryHistoryResponseBody.QueryHistoryList] = []
            for v in value {
                if v != nil {
                    var model = DescribeAdvancedQueryHistoryResponseBody.QueryHistoryList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.queryHistoryList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeAdvancedQueryHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAdvancedQueryHistoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAdvancedQueryHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAdvancedQueryTemplateRequest : Tea.TeaModel {
    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class DescribeAdvancedQueryTemplateResponseBody : Tea.TeaModel {
    public class TemplatePage : Tea.TeaModel {
        public class TemplateList : Tea.TeaModel {
            public var simpleQuery: Bool?

            public var templateId: String?

            public var templateName: String?

            public var templateSql: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.simpleQuery != nil {
                    map["SimpleQuery"] = self.simpleQuery!
                }
                if self.templateId != nil {
                    map["TemplateId"] = self.templateId!
                }
                if self.templateName != nil {
                    map["TemplateName"] = self.templateName!
                }
                if self.templateSql != nil {
                    map["TemplateSql"] = self.templateSql!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SimpleQuery"] as? Bool {
                    self.simpleQuery = value
                }
                if let value = dict["TemplateId"] as? String {
                    self.templateId = value
                }
                if let value = dict["TemplateName"] as? String {
                    self.templateName = value
                }
                if let value = dict["TemplateSql"] as? String {
                    self.templateSql = value
                }
            }
        }
        public var pageNumber: String?

        public var pageSize: String?

        public var templateList: [DescribeAdvancedQueryTemplateResponseBody.TemplatePage.TemplateList]?

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
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.templateList != nil {
                var tmp : [Any] = []
                for k in self.templateList! {
                    tmp.append(k.toMap())
                }
                map["TemplateList"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNumber"] as? String {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? String {
                self.pageSize = value
            }
            if let value = dict["TemplateList"] as? [Any?] {
                var tmp : [DescribeAdvancedQueryTemplateResponseBody.TemplatePage.TemplateList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAdvancedQueryTemplateResponseBody.TemplatePage.TemplateList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.templateList = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var requestId: String?

    public var templatePage: DescribeAdvancedQueryTemplateResponseBody.TemplatePage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.templatePage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templatePage != nil {
            map["TemplatePage"] = self.templatePage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TemplatePage"] as? [String: Any?] {
            var model = DescribeAdvancedQueryTemplateResponseBody.TemplatePage()
            model.fromMap(value)
            self.templatePage = model
        }
    }
}

public class DescribeAdvancedQueryTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAdvancedQueryTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAdvancedQueryTemplateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LocalName"] as? String {
                    self.localName = value
                }
                if let value = dict["RegionEndpoint"] as? String {
                    self.regionEndpoint = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
            }
        }
        public var region: [DescribeRegionsResponseBody.Regions.Region]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                var tmp : [Any] = []
                for k in self.region! {
                    tmp.append(k.toMap())
                }
                map["Region"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Region"] as? [Any?] {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRegionsResponseBody.Regions.Region()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.region = tmp
            }
        }
    }
    public var regions: DescribeRegionsResponseBody.Regions?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.regions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Regions"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(value)
            self.regions = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeResourceLifeCycleEventsRequest : Tea.TeaModel {
    public var resourceType: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
    }
}

public class DescribeResourceLifeCycleEventsResponseBody : Tea.TeaModel {
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

public class DescribeResourceLifeCycleEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourceLifeCycleEventsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeResourceLifeCycleEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeScenesRequest : Tea.TeaModel {
    public var searchCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.searchCode != nil {
            map["SearchCode"] = self.searchCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SearchCode"] as? String {
            self.searchCode = value
        }
    }
}

public class DescribeScenesResponseBody : Tea.TeaModel {
    public class SceneList : Tea.TeaModel {
        public var description_: String?

        public var name: String?

        public var sceneId: String?

        public var token: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["Token"] as? String {
                self.token = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var requestId: String?

    public var sceneList: [DescribeScenesResponseBody.SceneList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sceneList != nil {
            var tmp : [Any] = []
            for k in self.sceneList! {
                tmp.append(k.toMap())
            }
            map["SceneList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SceneList"] as? [Any?] {
            var tmp : [DescribeScenesResponseBody.SceneList] = []
            for v in value {
                if v != nil {
                    var model = DescribeScenesResponseBody.SceneList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sceneList = tmp
        }
    }
}

public class DescribeScenesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScenesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeScenesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSearchTemplatesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sceneId: String?

    public override init() {
        super.init()
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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
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
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
    }
}

public class DescribeSearchTemplatesResponseBody : Tea.TeaModel {
    public class TemplateList : Tea.TeaModel {
        public var charts: String?

        public var description_: String?

        public var params: String?

        public var sceneId: String?

        public var sql: String?

        public var templateId: String?

        public var templateName: String?

        public var token: String?

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
            if self.charts != nil {
                map["Charts"] = self.charts!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.params != nil {
                map["Params"] = self.params!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.sql != nil {
                map["Sql"] = self.sql!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Charts"] as? String {
                self.charts = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Params"] as? String {
                self.params = value
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["Sql"] as? String {
                self.sql = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["Token"] as? String {
                self.token = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var templateList: [DescribeSearchTemplatesResponseBody.TemplateList]?

    public override init() {
        super.init()
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
        if self.templateList != nil {
            var tmp : [Any] = []
            for k in self.templateList! {
                tmp.append(k.toMap())
            }
            map["TemplateList"] = tmp
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
        if let value = dict["TemplateList"] as? [Any?] {
            var tmp : [DescribeSearchTemplatesResponseBody.TemplateList] = []
            for v in value {
                if v != nil {
                    var model = DescribeSearchTemplatesResponseBody.TemplateList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.templateList = tmp
        }
    }
}

public class DescribeSearchTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSearchTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSearchTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTrailsRequest : Tea.TeaModel {
    public var includeOrganizationTrail: Bool?

    public var includeShadowTrails: Bool?

    public var nameList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.includeOrganizationTrail != nil {
            map["IncludeOrganizationTrail"] = self.includeOrganizationTrail!
        }
        if self.includeShadowTrails != nil {
            map["IncludeShadowTrails"] = self.includeShadowTrails!
        }
        if self.nameList != nil {
            map["NameList"] = self.nameList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IncludeOrganizationTrail"] as? Bool {
            self.includeOrganizationTrail = value
        }
        if let value = dict["IncludeShadowTrails"] as? Bool {
            self.includeShadowTrails = value
        }
        if let value = dict["NameList"] as? String {
            self.nameList = value
        }
    }
}

public class DescribeTrailsResponseBody : Tea.TeaModel {
    public class TrailList : Tea.TeaModel {
        public var createTime: String?

        public var eventRW: String?

        public var homeRegion: String?

        public var isOrganizationTrail: Bool?

        public var maxComputeProjectArn: String?

        public var maxComputeWriteRoleArn: String?

        public var name: String?

        public var organizationId: String?

        public var ossBucketLocation: String?

        public var ossBucketName: String?

        public var ossKeyPrefix: String?

        public var ossWriteRoleArn: String?

        public var region: String?

        public var slsProjectArn: String?

        public var slsWriteRoleArn: String?

        public var startLoggingTime: String?

        public var status: String?

        public var stopLoggingTime: String?

        public var trailArn: String?

        public var trailRegion: String?

        public var updateTime: String?

        public override init() {
            super.init()
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
            if self.eventRW != nil {
                map["EventRW"] = self.eventRW!
            }
            if self.homeRegion != nil {
                map["HomeRegion"] = self.homeRegion!
            }
            if self.isOrganizationTrail != nil {
                map["IsOrganizationTrail"] = self.isOrganizationTrail!
            }
            if self.maxComputeProjectArn != nil {
                map["MaxComputeProjectArn"] = self.maxComputeProjectArn!
            }
            if self.maxComputeWriteRoleArn != nil {
                map["MaxComputeWriteRoleArn"] = self.maxComputeWriteRoleArn!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            if self.ossBucketLocation != nil {
                map["OssBucketLocation"] = self.ossBucketLocation!
            }
            if self.ossBucketName != nil {
                map["OssBucketName"] = self.ossBucketName!
            }
            if self.ossKeyPrefix != nil {
                map["OssKeyPrefix"] = self.ossKeyPrefix!
            }
            if self.ossWriteRoleArn != nil {
                map["OssWriteRoleArn"] = self.ossWriteRoleArn!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.slsProjectArn != nil {
                map["SlsProjectArn"] = self.slsProjectArn!
            }
            if self.slsWriteRoleArn != nil {
                map["SlsWriteRoleArn"] = self.slsWriteRoleArn!
            }
            if self.startLoggingTime != nil {
                map["StartLoggingTime"] = self.startLoggingTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.stopLoggingTime != nil {
                map["StopLoggingTime"] = self.stopLoggingTime!
            }
            if self.trailArn != nil {
                map["TrailArn"] = self.trailArn!
            }
            if self.trailRegion != nil {
                map["TrailRegion"] = self.trailRegion!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EventRW"] as? String {
                self.eventRW = value
            }
            if let value = dict["HomeRegion"] as? String {
                self.homeRegion = value
            }
            if let value = dict["IsOrganizationTrail"] as? Bool {
                self.isOrganizationTrail = value
            }
            if let value = dict["MaxComputeProjectArn"] as? String {
                self.maxComputeProjectArn = value
            }
            if let value = dict["MaxComputeWriteRoleArn"] as? String {
                self.maxComputeWriteRoleArn = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OrganizationId"] as? String {
                self.organizationId = value
            }
            if let value = dict["OssBucketLocation"] as? String {
                self.ossBucketLocation = value
            }
            if let value = dict["OssBucketName"] as? String {
                self.ossBucketName = value
            }
            if let value = dict["OssKeyPrefix"] as? String {
                self.ossKeyPrefix = value
            }
            if let value = dict["OssWriteRoleArn"] as? String {
                self.ossWriteRoleArn = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["SlsProjectArn"] as? String {
                self.slsProjectArn = value
            }
            if let value = dict["SlsWriteRoleArn"] as? String {
                self.slsWriteRoleArn = value
            }
            if let value = dict["StartLoggingTime"] as? String {
                self.startLoggingTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StopLoggingTime"] as? String {
                self.stopLoggingTime = value
            }
            if let value = dict["TrailArn"] as? String {
                self.trailArn = value
            }
            if let value = dict["TrailRegion"] as? String {
                self.trailRegion = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var requestId: String?

    public var trailList: [DescribeTrailsResponseBody.TrailList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.trailList != nil {
            var tmp : [Any] = []
            for k in self.trailList! {
                tmp.append(k.toMap())
            }
            map["TrailList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TrailList"] as? [Any?] {
            var tmp : [DescribeTrailsResponseBody.TrailList] = []
            for v in value {
                if v != nil {
                    var model = DescribeTrailsResponseBody.TrailList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.trailList = tmp
        }
    }
}

public class DescribeTrailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTrailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeTrailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUserAlertCountRequest : Tea.TeaModel {
    public var endDate: String?

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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class DescribeUserAlertCountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var counts: [Int64]?

        public var dates: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.counts != nil {
                map["Counts"] = self.counts!
            }
            if self.dates != nil {
                map["Dates"] = self.dates!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Counts"] as? [Int64] {
                self.counts = value
            }
            if let value = dict["Dates"] as? [String] {
                self.dates = value
            }
        }
    }
    public var data: DescribeUserAlertCountResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeUserAlertCountResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeUserAlertCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserAlertCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeUserAlertCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUserLogCountRequest : Tea.TeaModel {
    public var endDate: String?

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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class DescribeUserLogCountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var counts: [Int64]?

        public var dates: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.counts != nil {
                map["Counts"] = self.counts!
            }
            if self.dates != nil {
                map["Dates"] = self.dates!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Counts"] as? [Int64] {
                self.counts = value
            }
            if let value = dict["Dates"] as? [String] {
                self.dates = value
            }
        }
    }
    public var data: DescribeUserLogCountResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeUserLogCountResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeUserLogCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserLogCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeUserLogCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableInsightRequest : Tea.TeaModel {
    public var insightType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.insightType != nil {
            map["InsightType"] = self.insightType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InsightType"] as? String {
            self.insightType = value
        }
    }
}

public class EnableInsightResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class EnableInsightResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableInsightResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableInsightResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAccessKeyLastUsedEventsRequest : Tea.TeaModel {
    public var accessKey: String?

    public var nextToken: String?

    public var pageSize: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKey != nil {
            map["AccessKey"] = self.accessKey!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessKey"] as? String {
            self.accessKey = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
    }
}

public class GetAccessKeyLastUsedEventsResponseBody : Tea.TeaModel {
    public class Events : Tea.TeaModel {
        public var detail: String?

        public var eventName: String?

        public var source: String?

        public var usedTimestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detail != nil {
                map["Detail"] = self.detail!
            }
            if self.eventName != nil {
                map["EventName"] = self.eventName!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.usedTimestamp != nil {
                map["UsedTimestamp"] = self.usedTimestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Detail"] as? String {
                self.detail = value
            }
            if let value = dict["EventName"] as? String {
                self.eventName = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["UsedTimestamp"] as? Int64 {
                self.usedTimestamp = value
            }
        }
    }
    public var events: [GetAccessKeyLastUsedEventsResponseBody.Events]?

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
        if self.events != nil {
            var tmp : [Any] = []
            for k in self.events! {
                tmp.append(k.toMap())
            }
            map["Events"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Events"] as? [Any?] {
            var tmp : [GetAccessKeyLastUsedEventsResponseBody.Events] = []
            for v in value {
                if v != nil {
                    var model = GetAccessKeyLastUsedEventsResponseBody.Events()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.events = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAccessKeyLastUsedEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessKeyLastUsedEventsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAccessKeyLastUsedEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAccessKeyLastUsedInfoRequest : Tea.TeaModel {
    public var accessKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKey != nil {
            map["AccessKey"] = self.accessKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessKey"] as? String {
            self.accessKey = value
        }
    }
}

public class GetAccessKeyLastUsedInfoResponseBody : Tea.TeaModel {
    public var accessKeyId: String?

    public var accountId: String?

    public var accountType: String?

    public var detail: String?

    public var ownerId: String?

    public var requestId: String?

    public var serviceName: String?

    public var serviceNameCn: String?

    public var serviceNameEn: String?

    public var source: String?

    public var usedTimestamp: Int64?

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
        if self.accessKeyId != nil {
            map["AccessKeyId"] = self.accessKeyId!
        }
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.serviceNameCn != nil {
            map["ServiceNameCn"] = self.serviceNameCn!
        }
        if self.serviceNameEn != nil {
            map["ServiceNameEn"] = self.serviceNameEn!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.usedTimestamp != nil {
            map["UsedTimestamp"] = self.usedTimestamp!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessKeyId"] as? String {
            self.accessKeyId = value
        }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["AccountType"] as? String {
            self.accountType = value
        }
        if let value = dict["Detail"] as? String {
            self.detail = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["ServiceNameCn"] as? String {
            self.serviceNameCn = value
        }
        if let value = dict["ServiceNameEn"] as? String {
            self.serviceNameEn = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["UsedTimestamp"] as? Int64 {
            self.usedTimestamp = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class GetAccessKeyLastUsedInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessKeyLastUsedInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAccessKeyLastUsedInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAccessKeyLastUsedIpsRequest : Tea.TeaModel {
    public var accessKey: String?

    public var nextToken: String?

    public var pageSize: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKey != nil {
            map["AccessKey"] = self.accessKey!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessKey"] as? String {
            self.accessKey = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
    }
}

public class GetAccessKeyLastUsedIpsResponseBody : Tea.TeaModel {
    public class Ips : Tea.TeaModel {
        public var detail: String?

        public var ip: String?

        public var source: String?

        public var usedTimestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detail != nil {
                map["Detail"] = self.detail!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.usedTimestamp != nil {
                map["UsedTimestamp"] = self.usedTimestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Detail"] as? String {
                self.detail = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["UsedTimestamp"] as? Int64 {
                self.usedTimestamp = value
            }
        }
    }
    public var ips: [GetAccessKeyLastUsedIpsResponseBody.Ips]?

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
        if self.ips != nil {
            var tmp : [Any] = []
            for k in self.ips! {
                tmp.append(k.toMap())
            }
            map["Ips"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ips"] as? [Any?] {
            var tmp : [GetAccessKeyLastUsedIpsResponseBody.Ips] = []
            for v in value {
                if v != nil {
                    var model = GetAccessKeyLastUsedIpsResponseBody.Ips()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ips = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAccessKeyLastUsedIpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessKeyLastUsedIpsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAccessKeyLastUsedIpsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAccessKeyLastUsedProductsRequest : Tea.TeaModel {
    public var accessKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKey != nil {
            map["AccessKey"] = self.accessKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessKey"] as? String {
            self.accessKey = value
        }
    }
}

public class GetAccessKeyLastUsedProductsResponseBody : Tea.TeaModel {
    public class Products : Tea.TeaModel {
        public var detail: String?

        public var serviceName: String?

        public var serviceNameCn: String?

        public var serviceNameEn: String?

        public var source: String?

        public var usedTimestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detail != nil {
                map["Detail"] = self.detail!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.serviceNameCn != nil {
                map["ServiceNameCn"] = self.serviceNameCn!
            }
            if self.serviceNameEn != nil {
                map["ServiceNameEn"] = self.serviceNameEn!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.usedTimestamp != nil {
                map["UsedTimestamp"] = self.usedTimestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Detail"] as? String {
                self.detail = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["ServiceNameCn"] as? String {
                self.serviceNameCn = value
            }
            if let value = dict["ServiceNameEn"] as? String {
                self.serviceNameEn = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["UsedTimestamp"] as? Int64 {
                self.usedTimestamp = value
            }
        }
    }
    public var products: [GetAccessKeyLastUsedProductsResponseBody.Products]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.products != nil {
            var tmp : [Any] = []
            for k in self.products! {
                tmp.append(k.toMap())
            }
            map["Products"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Products"] as? [Any?] {
            var tmp : [GetAccessKeyLastUsedProductsResponseBody.Products] = []
            for v in value {
                if v != nil {
                    var model = GetAccessKeyLastUsedProductsResponseBody.Products()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.products = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAccessKeyLastUsedProductsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessKeyLastUsedProductsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAccessKeyLastUsedProductsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAccessKeyLastUsedResourcesRequest : Tea.TeaModel {
    public var accessKey: String?

    public var nextToken: String?

    public var pageSize: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKey != nil {
            map["AccessKey"] = self.accessKey!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessKey"] as? String {
            self.accessKey = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
    }
}

public class GetAccessKeyLastUsedResourcesResponseBody : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var detail: String?

        public var resourceName: String?

        public var resourceType: String?

        public var source: String?

        public var usedTimestamp: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detail != nil {
                map["Detail"] = self.detail!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.usedTimestamp != nil {
                map["UsedTimestamp"] = self.usedTimestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Detail"] as? String {
                self.detail = value
            }
            if let value = dict["ResourceName"] as? String {
                self.resourceName = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["UsedTimestamp"] as? Int64 {
                self.usedTimestamp = value
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var resources: [GetAccessKeyLastUsedResourcesResponseBody.Resources]?

    public override init() {
        super.init()
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
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
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
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [GetAccessKeyLastUsedResourcesResponseBody.Resources] = []
            for v in value {
                if v != nil {
                    var model = GetAccessKeyLastUsedResourcesResponseBody.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
    }
}

public class GetAccessKeyLastUsedResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessKeyLastUsedResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAccessKeyLastUsedResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAdvancedQueryTemplateRequest : Tea.TeaModel {
    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class GetAdvancedQueryTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var simpleQuery: Bool?

    public var templateId: String?

    public var templateName: String?

    public var templateSql: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.simpleQuery != nil {
            map["SimpleQuery"] = self.simpleQuery!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateSql != nil {
            map["TemplateSql"] = self.templateSql!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SimpleQuery"] as? Bool {
            self.simpleQuery = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateSql"] as? String {
            self.templateSql = value
        }
    }
}

public class GetAdvancedQueryTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAdvancedQueryTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAdvancedQueryTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDataEventSelectorRequest : Tea.TeaModel {
    public var trailName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.trailName != nil {
            map["TrailName"] = self.trailName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TrailName"] as? String {
            self.trailName = value
        }
    }
}

public class GetDataEventSelectorResponseBody : Tea.TeaModel {
    public class SlsDeliveryConfigs : Tea.TeaModel {
        public var createTime: String?

        public var errorCode: String?

        public var errorMessage: String?

        public var regionSlsProjectArn: String?

        public var status: String?

        public var trailRegion: String?

        public override init() {
            super.init()
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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.regionSlsProjectArn != nil {
                map["RegionSlsProjectArn"] = self.regionSlsProjectArn!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.trailRegion != nil {
                map["TrailRegion"] = self.trailRegion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["RegionSlsProjectArn"] as? String {
                self.regionSlsProjectArn = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TrailRegion"] as? String {
                self.trailRegion = value
            }
        }
    }
    public var dataEventSelectors: String?

    public var isTrailAllRegion: Bool?

    public var requestId: String?

    public var slsDeliveryConfigs: [GetDataEventSelectorResponseBody.SlsDeliveryConfigs]?

    public var trailArn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataEventSelectors != nil {
            map["DataEventSelectors"] = self.dataEventSelectors!
        }
        if self.isTrailAllRegion != nil {
            map["IsTrailAllRegion"] = self.isTrailAllRegion!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.slsDeliveryConfigs != nil {
            var tmp : [Any] = []
            for k in self.slsDeliveryConfigs! {
                tmp.append(k.toMap())
            }
            map["SlsDeliveryConfigs"] = tmp
        }
        if self.trailArn != nil {
            map["TrailArn"] = self.trailArn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataEventSelectors"] as? String {
            self.dataEventSelectors = value
        }
        if let value = dict["IsTrailAllRegion"] as? Bool {
            self.isTrailAllRegion = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SlsDeliveryConfigs"] as? [Any?] {
            var tmp : [GetDataEventSelectorResponseBody.SlsDeliveryConfigs] = []
            for v in value {
                if v != nil {
                    var model = GetDataEventSelectorResponseBody.SlsDeliveryConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.slsDeliveryConfigs = tmp
        }
        if let value = dict["TrailArn"] as? String {
            self.trailArn = value
        }
    }
}

public class GetDataEventSelectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataEventSelectorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDataEventSelectorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDeliveryHistoryJobRequest : Tea.TeaModel {
    public var jobId: Int64?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
    }
}

public class GetDeliveryHistoryJobResponseBody : Tea.TeaModel {
    public class Status : Tea.TeaModel {
        public var region: String?

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
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var createdTime: String?

    public var endTime: String?

    public var homeRegion: String?

    public var jobId: Int64?

    public var jobStatus: Int32?

    public var requestId: String?

    public var startTime: String?

    public var status: [GetDeliveryHistoryJobResponseBody.Status]?

    public var trailName: String?

    public var updatedTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.homeRegion != nil {
            map["HomeRegion"] = self.homeRegion!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobStatus != nil {
            map["JobStatus"] = self.jobStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            var tmp : [Any] = []
            for k in self.status! {
                tmp.append(k.toMap())
            }
            map["Status"] = tmp
        }
        if self.trailName != nil {
            map["TrailName"] = self.trailName!
        }
        if self.updatedTime != nil {
            map["UpdatedTime"] = self.updatedTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatedTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["HomeRegion"] as? String {
            self.homeRegion = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["JobStatus"] as? Int32 {
            self.jobStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? [Any?] {
            var tmp : [GetDeliveryHistoryJobResponseBody.Status] = []
            for v in value {
                if v != nil {
                    var model = GetDeliveryHistoryJobResponseBody.Status()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.status = tmp
        }
        if let value = dict["TrailName"] as? String {
            self.trailName = value
        }
        if let value = dict["UpdatedTime"] as? String {
            self.updatedTime = value
        }
    }
}

public class GetDeliveryHistoryJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeliveryHistoryJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDeliveryHistoryJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetGlobalEventsStorageRegionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var storageRegion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.storageRegion != nil {
            map["StorageRegion"] = self.storageRegion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StorageRegion"] as? String {
            self.storageRegion = value
        }
    }
}

public class GetGlobalEventsStorageRegionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGlobalEventsStorageRegionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetGlobalEventsStorageRegionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetGovernanceMetricsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class GovernanceMetrics : Tea.TeaModel {
            public var columnsSchema: String?

            public var governanceItem: String?

            public var governanceScore: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.columnsSchema != nil {
                    map["ColumnsSchema"] = self.columnsSchema!
                }
                if self.governanceItem != nil {
                    map["GovernanceItem"] = self.governanceItem!
                }
                if self.governanceScore != nil {
                    map["GovernanceScore"] = self.governanceScore!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ColumnsSchema"] as? String {
                    self.columnsSchema = value
                }
                if let value = dict["GovernanceItem"] as? String {
                    self.governanceItem = value
                }
                if let value = dict["GovernanceScore"] as? String {
                    self.governanceScore = value
                }
            }
        }
        public var accountId: String?

        public var governanceMetrics: [GetGovernanceMetricsResponseBody.Data.GovernanceMetrics]?

        public override init() {
            super.init()
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
            if self.governanceMetrics != nil {
                var tmp : [Any] = []
                for k in self.governanceMetrics! {
                    tmp.append(k.toMap())
                }
                map["GovernanceMetrics"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["GovernanceMetrics"] as? [Any?] {
                var tmp : [GetGovernanceMetricsResponseBody.Data.GovernanceMetrics] = []
                for v in value {
                    if v != nil {
                        var model = GetGovernanceMetricsResponseBody.Data.GovernanceMetrics()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.governanceMetrics = tmp
            }
        }
    }
    public var data: GetGovernanceMetricsResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetGovernanceMetricsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetGovernanceMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGovernanceMetricsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetGovernanceMetricsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTrailStatusRequest : Tea.TeaModel {
    public var isOrganizationTrail: Bool?

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
        if self.isOrganizationTrail != nil {
            map["IsOrganizationTrail"] = self.isOrganizationTrail!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsOrganizationTrail"] as? Bool {
            self.isOrganizationTrail = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class GetTrailStatusResponseBody : Tea.TeaModel {
    public var isLogging: Bool?

    public var latestDeliveryError: String?

    public var latestDeliveryLogServiceError: String?

    public var latestDeliveryLogServiceTime: String?

    public var latestDeliveryTime: String?

    public var ossBucketStatus: Bool?

    public var requestId: String?

    public var slsLogStoreStatus: Bool?

    public var startLoggingTime: String?

    public var stopLoggingTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isLogging != nil {
            map["IsLogging"] = self.isLogging!
        }
        if self.latestDeliveryError != nil {
            map["LatestDeliveryError"] = self.latestDeliveryError!
        }
        if self.latestDeliveryLogServiceError != nil {
            map["LatestDeliveryLogServiceError"] = self.latestDeliveryLogServiceError!
        }
        if self.latestDeliveryLogServiceTime != nil {
            map["LatestDeliveryLogServiceTime"] = self.latestDeliveryLogServiceTime!
        }
        if self.latestDeliveryTime != nil {
            map["LatestDeliveryTime"] = self.latestDeliveryTime!
        }
        if self.ossBucketStatus != nil {
            map["OssBucketStatus"] = self.ossBucketStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.slsLogStoreStatus != nil {
            map["SlsLogStoreStatus"] = self.slsLogStoreStatus!
        }
        if self.startLoggingTime != nil {
            map["StartLoggingTime"] = self.startLoggingTime!
        }
        if self.stopLoggingTime != nil {
            map["StopLoggingTime"] = self.stopLoggingTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsLogging"] as? Bool {
            self.isLogging = value
        }
        if let value = dict["LatestDeliveryError"] as? String {
            self.latestDeliveryError = value
        }
        if let value = dict["LatestDeliveryLogServiceError"] as? String {
            self.latestDeliveryLogServiceError = value
        }
        if let value = dict["LatestDeliveryLogServiceTime"] as? String {
            self.latestDeliveryLogServiceTime = value
        }
        if let value = dict["LatestDeliveryTime"] as? String {
            self.latestDeliveryTime = value
        }
        if let value = dict["OssBucketStatus"] as? Bool {
            self.ossBucketStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SlsLogStoreStatus"] as? Bool {
            self.slsLogStoreStatus = value
        }
        if let value = dict["StartLoggingTime"] as? String {
            self.startLoggingTime = value
        }
        if let value = dict["StopLoggingTime"] as? String {
            self.stopLoggingTime = value
        }
    }
}

public class GetTrailStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTrailStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTrailStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataEventSelectorsRequest : Tea.TeaModel {
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListDataEventSelectorsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DataEventSelectorInfos : Tea.TeaModel {
            public class SlsDeliveryConfigs : Tea.TeaModel {
                public var createTime: String?

                public var errorCode: String?

                public var errorMessage: String?

                public var regionSlsProjectArn: String?

                public var status: String?

                public var trailRegion: String?

                public override init() {
                    super.init()
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
                    if self.errorCode != nil {
                        map["ErrorCode"] = self.errorCode!
                    }
                    if self.errorMessage != nil {
                        map["ErrorMessage"] = self.errorMessage!
                    }
                    if self.regionSlsProjectArn != nil {
                        map["RegionSlsProjectArn"] = self.regionSlsProjectArn!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.trailRegion != nil {
                        map["TrailRegion"] = self.trailRegion!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CreateTime"] as? String {
                        self.createTime = value
                    }
                    if let value = dict["ErrorCode"] as? String {
                        self.errorCode = value
                    }
                    if let value = dict["ErrorMessage"] as? String {
                        self.errorMessage = value
                    }
                    if let value = dict["RegionSlsProjectArn"] as? String {
                        self.regionSlsProjectArn = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                    if let value = dict["TrailRegion"] as? String {
                        self.trailRegion = value
                    }
                }
            }
            public var eventSelectors: String?

            public var isTrailAllRegion: Bool?

            public var slsDeliveryConfigs: [ListDataEventSelectorsResponseBody.Data.DataEventSelectorInfos.SlsDeliveryConfigs]?

            public var trailArn: String?

            public var trailName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.eventSelectors != nil {
                    map["EventSelectors"] = self.eventSelectors!
                }
                if self.isTrailAllRegion != nil {
                    map["IsTrailAllRegion"] = self.isTrailAllRegion!
                }
                if self.slsDeliveryConfigs != nil {
                    var tmp : [Any] = []
                    for k in self.slsDeliveryConfigs! {
                        tmp.append(k.toMap())
                    }
                    map["SlsDeliveryConfigs"] = tmp
                }
                if self.trailArn != nil {
                    map["TrailArn"] = self.trailArn!
                }
                if self.trailName != nil {
                    map["TrailName"] = self.trailName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EventSelectors"] as? String {
                    self.eventSelectors = value
                }
                if let value = dict["IsTrailAllRegion"] as? Bool {
                    self.isTrailAllRegion = value
                }
                if let value = dict["SlsDeliveryConfigs"] as? [Any?] {
                    var tmp : [ListDataEventSelectorsResponseBody.Data.DataEventSelectorInfos.SlsDeliveryConfigs] = []
                    for v in value {
                        if v != nil {
                            var model = ListDataEventSelectorsResponseBody.Data.DataEventSelectorInfos.SlsDeliveryConfigs()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.slsDeliveryConfigs = tmp
                }
                if let value = dict["TrailArn"] as? String {
                    self.trailArn = value
                }
                if let value = dict["TrailName"] as? String {
                    self.trailName = value
                }
            }
        }
        public var dataEventSelectorInfos: [ListDataEventSelectorsResponseBody.Data.DataEventSelectorInfos]?

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
            if self.dataEventSelectorInfos != nil {
                var tmp : [Any] = []
                for k in self.dataEventSelectorInfos! {
                    tmp.append(k.toMap())
                }
                map["DataEventSelectorInfos"] = tmp
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataEventSelectorInfos"] as? [Any?] {
                var tmp : [ListDataEventSelectorsResponseBody.Data.DataEventSelectorInfos] = []
                for v in value {
                    if v != nil {
                        var model = ListDataEventSelectorsResponseBody.Data.DataEventSelectorInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataEventSelectorInfos = tmp
            }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
        }
    }
    public var data: ListDataEventSelectorsResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListDataEventSelectorsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDataEventSelectorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataEventSelectorsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDataEventSelectorsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataEventServicesRequest : Tea.TeaModel {
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListDataEventServicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ServiceInfos : Tea.TeaModel {
            public var eventNames: [String]?

            public var serviceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.eventNames != nil {
                    map["EventNames"] = self.eventNames!
                }
                if self.serviceName != nil {
                    map["ServiceName"] = self.serviceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EventNames"] as? [String] {
                    self.eventNames = value
                }
                if let value = dict["ServiceName"] as? String {
                    self.serviceName = value
                }
            }
        }
        public var maxResults: Int32?

        public var nextToken: String?

        public var serviceInfos: [ListDataEventServicesResponseBody.Data.ServiceInfos]?

        public override init() {
            super.init()
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
            if self.serviceInfos != nil {
                var tmp : [Any] = []
                for k in self.serviceInfos! {
                    tmp.append(k.toMap())
                }
                map["ServiceInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["ServiceInfos"] as? [Any?] {
                var tmp : [ListDataEventServicesResponseBody.Data.ServiceInfos] = []
                for v in value {
                    if v != nil {
                        var model = ListDataEventServicesResponseBody.Data.ServiceInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.serviceInfos = tmp
            }
        }
    }
    public var data: ListDataEventServicesResponseBody.Data?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListDataEventServicesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDataEventServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataEventServicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDataEventServicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDeliveryHistoryJobsRequest : Tea.TeaModel {
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
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListDeliveryHistoryJobsResponseBody : Tea.TeaModel {
    public class DeliveryHistoryJobs : Tea.TeaModel {
        public var createdTime: String?

        public var endTime: String?

        public var homeRegion: String?

        public var jobId: Int64?

        public var jobStatus: Int32?

        public var startTime: String?

        public var trailName: String?

        public var updatedTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.homeRegion != nil {
                map["HomeRegion"] = self.homeRegion!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.jobStatus != nil {
                map["JobStatus"] = self.jobStatus!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.trailName != nil {
                map["TrailName"] = self.trailName!
            }
            if self.updatedTime != nil {
                map["UpdatedTime"] = self.updatedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedTime"] as? String {
                self.createdTime = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["HomeRegion"] as? String {
                self.homeRegion = value
            }
            if let value = dict["JobId"] as? Int64 {
                self.jobId = value
            }
            if let value = dict["JobStatus"] as? Int32 {
                self.jobStatus = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["TrailName"] as? String {
                self.trailName = value
            }
            if let value = dict["UpdatedTime"] as? String {
                self.updatedTime = value
            }
        }
    }
    public var deliveryHistoryJobs: [ListDeliveryHistoryJobsResponseBody.DeliveryHistoryJobs]?

    public var pageNumber: Int32?

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
        if self.deliveryHistoryJobs != nil {
            var tmp : [Any] = []
            for k in self.deliveryHistoryJobs! {
                tmp.append(k.toMap())
            }
            map["DeliveryHistoryJobs"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        if let value = dict["DeliveryHistoryJobs"] as? [Any?] {
            var tmp : [ListDeliveryHistoryJobsResponseBody.DeliveryHistoryJobs] = []
            for v in value {
                if v != nil {
                    var model = ListDeliveryHistoryJobsResponseBody.DeliveryHistoryJobs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.deliveryHistoryJobs = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
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

public class ListDeliveryHistoryJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeliveryHistoryJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDeliveryHistoryJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class LookupEventsRequest : Tea.TeaModel {
    public class LookupAttribute : Tea.TeaModel {
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
    public var direction: String?

    public var endTime: String?

    public var lookupAttribute: [LookupEventsRequest.LookupAttribute]?

    public var maxResults: String?

    public var nextToken: String?

    public var startTime: String?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.lookupAttribute != nil {
            var tmp : [Any] = []
            for k in self.lookupAttribute! {
                tmp.append(k.toMap())
            }
            map["LookupAttribute"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["LookupAttribute"] as? [Any?] {
            var tmp : [LookupEventsRequest.LookupAttribute] = []
            for v in value {
                if v != nil {
                    var model = LookupEventsRequest.LookupAttribute()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.lookupAttribute = tmp
        }
        if let value = dict["MaxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class LookupEventsResponseBody : Tea.TeaModel {
    public var endTime: String?

    public var events: [[String: Any]]?

    public var nextToken: String?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
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
        if self.events != nil {
            map["Events"] = self.events!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Events"] as? [[String: Any]] {
            self.events = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class LookupEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LookupEventsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = LookupEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutDataEventSelectorRequest : Tea.TeaModel {
    public var eventSelectors: String?

    public var isTrailAllRegion: Bool?

    public var trailName: String?

    public var trailRegionIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventSelectors != nil {
            map["EventSelectors"] = self.eventSelectors!
        }
        if self.isTrailAllRegion != nil {
            map["IsTrailAllRegion"] = self.isTrailAllRegion!
        }
        if self.trailName != nil {
            map["TrailName"] = self.trailName!
        }
        if self.trailRegionIds != nil {
            map["TrailRegionIds"] = self.trailRegionIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventSelectors"] as? String {
            self.eventSelectors = value
        }
        if let value = dict["IsTrailAllRegion"] as? Bool {
            self.isTrailAllRegion = value
        }
        if let value = dict["TrailName"] as? String {
            self.trailName = value
        }
        if let value = dict["TrailRegionIds"] as? String {
            self.trailRegionIds = value
        }
    }
}

public class PutDataEventSelectorResponseBody : Tea.TeaModel {
    public var dataEventSelectors: String?

    public var requestId: String?

    public var trailArn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataEventSelectors != nil {
            map["DataEventSelectors"] = self.dataEventSelectors!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.trailArn != nil {
            map["TrailArn"] = self.trailArn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataEventSelectors"] as? String {
            self.dataEventSelectors = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TrailArn"] as? String {
            self.trailArn = value
        }
    }
}

public class PutDataEventSelectorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutDataEventSelectorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PutDataEventSelectorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartLoggingRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class StartLoggingResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class StartLoggingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartLoggingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartLoggingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopLoggingRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class StopLoggingResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class StopLoggingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopLoggingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopLoggingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAdvancedQueryTemplateRequest : Tea.TeaModel {
    public var simpleQuery: Bool?

    public var templateId: String?

    public var templateName: String?

    public var templateSql: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.simpleQuery != nil {
            map["SimpleQuery"] = self.simpleQuery!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateSql != nil {
            map["TemplateSql"] = self.templateSql!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SimpleQuery"] as? Bool {
            self.simpleQuery = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateSql"] as? String {
            self.templateSql = value
        }
    }
}

public class UpdateAdvancedQueryTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var simpleQuery: String?

    public var templateId: String?

    public var templateName: String?

    public var templateSql: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.simpleQuery != nil {
            map["SimpleQuery"] = self.simpleQuery!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateSql != nil {
            map["TemplateSql"] = self.templateSql!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SimpleQuery"] as? String {
            self.simpleQuery = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateSql"] as? String {
            self.templateSql = value
        }
    }
}

public class UpdateAdvancedQueryTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAdvancedQueryTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateAdvancedQueryTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateGlobalEventsStorageRegionRequest : Tea.TeaModel {
    public var storageRegion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.storageRegion != nil {
            map["StorageRegion"] = self.storageRegion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["StorageRegion"] as? String {
            self.storageRegion = value
        }
    }
}

public class UpdateGlobalEventsStorageRegionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateGlobalEventsStorageRegionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGlobalEventsStorageRegionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateGlobalEventsStorageRegionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTrailRequest : Tea.TeaModel {
    public var eventRW: String?

    public var maxComputeProjectArn: String?

    public var maxComputeWriteRoleArn: String?

    public var name: String?

    public var ossBucketName: String?

    public var ossKeyPrefix: String?

    public var ossWriteRoleArn: String?

    public var slsProjectArn: String?

    public var slsWriteRoleArn: String?

    public var trailRegion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventRW != nil {
            map["EventRW"] = self.eventRW!
        }
        if self.maxComputeProjectArn != nil {
            map["MaxComputeProjectArn"] = self.maxComputeProjectArn!
        }
        if self.maxComputeWriteRoleArn != nil {
            map["MaxComputeWriteRoleArn"] = self.maxComputeWriteRoleArn!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossKeyPrefix != nil {
            map["OssKeyPrefix"] = self.ossKeyPrefix!
        }
        if self.ossWriteRoleArn != nil {
            map["OssWriteRoleArn"] = self.ossWriteRoleArn!
        }
        if self.slsProjectArn != nil {
            map["SlsProjectArn"] = self.slsProjectArn!
        }
        if self.slsWriteRoleArn != nil {
            map["SlsWriteRoleArn"] = self.slsWriteRoleArn!
        }
        if self.trailRegion != nil {
            map["TrailRegion"] = self.trailRegion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventRW"] as? String {
            self.eventRW = value
        }
        if let value = dict["MaxComputeProjectArn"] as? String {
            self.maxComputeProjectArn = value
        }
        if let value = dict["MaxComputeWriteRoleArn"] as? String {
            self.maxComputeWriteRoleArn = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OssBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["OssKeyPrefix"] as? String {
            self.ossKeyPrefix = value
        }
        if let value = dict["OssWriteRoleArn"] as? String {
            self.ossWriteRoleArn = value
        }
        if let value = dict["SlsProjectArn"] as? String {
            self.slsProjectArn = value
        }
        if let value = dict["SlsWriteRoleArn"] as? String {
            self.slsWriteRoleArn = value
        }
        if let value = dict["TrailRegion"] as? String {
            self.trailRegion = value
        }
    }
}

public class UpdateTrailResponseBody : Tea.TeaModel {
    public var eventRW: String?

    public var homeRegion: String?

    public var maxComputeProjectArn: String?

    public var maxComputeWriteRoleArn: String?

    public var name: String?

    public var ossBucketName: String?

    public var ossKeyPrefix: String?

    public var ossWriteRoleArn: String?

    public var requestId: String?

    public var slsProjectArn: String?

    public var slsWriteRoleArn: String?

    public var trailRegion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventRW != nil {
            map["EventRW"] = self.eventRW!
        }
        if self.homeRegion != nil {
            map["HomeRegion"] = self.homeRegion!
        }
        if self.maxComputeProjectArn != nil {
            map["MaxComputeProjectArn"] = self.maxComputeProjectArn!
        }
        if self.maxComputeWriteRoleArn != nil {
            map["MaxComputeWriteRoleArn"] = self.maxComputeWriteRoleArn!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossKeyPrefix != nil {
            map["OssKeyPrefix"] = self.ossKeyPrefix!
        }
        if self.ossWriteRoleArn != nil {
            map["OssWriteRoleArn"] = self.ossWriteRoleArn!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.slsProjectArn != nil {
            map["SlsProjectArn"] = self.slsProjectArn!
        }
        if self.slsWriteRoleArn != nil {
            map["SlsWriteRoleArn"] = self.slsWriteRoleArn!
        }
        if self.trailRegion != nil {
            map["TrailRegion"] = self.trailRegion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventRW"] as? String {
            self.eventRW = value
        }
        if let value = dict["HomeRegion"] as? String {
            self.homeRegion = value
        }
        if let value = dict["MaxComputeProjectArn"] as? String {
            self.maxComputeProjectArn = value
        }
        if let value = dict["MaxComputeWriteRoleArn"] as? String {
            self.maxComputeWriteRoleArn = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OssBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["OssKeyPrefix"] as? String {
            self.ossKeyPrefix = value
        }
        if let value = dict["OssWriteRoleArn"] as? String {
            self.ossWriteRoleArn = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SlsProjectArn"] as? String {
            self.slsProjectArn = value
        }
        if let value = dict["SlsWriteRoleArn"] as? String {
            self.slsWriteRoleArn = value
        }
        if let value = dict["TrailRegion"] as? String {
            self.trailRegion = value
        }
    }
}

public class UpdateTrailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTrailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateTrailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
