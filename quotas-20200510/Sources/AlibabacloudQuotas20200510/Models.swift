import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateQuotaAlarmRequest : Tea.TeaModel {
    public class QuotaDimensions : Tea.TeaModel {
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
    public var alarmName: String?

    public var originalContext: String?

    public var productCode: String?

    public var quotaActionCode: String?

    public var quotaDimensions: [CreateQuotaAlarmRequest.QuotaDimensions]?

    public var threshold: Double?

    public var thresholdPercent: Double?

    public var thresholdType: String?

    public var webHook: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmName != nil {
            map["AlarmName"] = self.alarmName!
        }
        if self.originalContext != nil {
            map["OriginalContext"] = self.originalContext!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.quotaActionCode != nil {
            map["QuotaActionCode"] = self.quotaActionCode!
        }
        if self.quotaDimensions != nil {
            var tmp : [Any] = []
            for k in self.quotaDimensions! {
                tmp.append(k.toMap())
            }
            map["QuotaDimensions"] = tmp
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        if self.thresholdPercent != nil {
            map["ThresholdPercent"] = self.thresholdPercent!
        }
        if self.thresholdType != nil {
            map["ThresholdType"] = self.thresholdType!
        }
        if self.webHook != nil {
            map["WebHook"] = self.webHook!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmName"] as? String {
            self.alarmName = value
        }
        if let value = dict["OriginalContext"] as? String {
            self.originalContext = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["QuotaActionCode"] as? String {
            self.quotaActionCode = value
        }
        if let value = dict["QuotaDimensions"] as? [Any?] {
            var tmp : [CreateQuotaAlarmRequest.QuotaDimensions] = []
            for v in value {
                if v != nil {
                    var model = CreateQuotaAlarmRequest.QuotaDimensions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.quotaDimensions = tmp
        }
        if let value = dict["Threshold"] as? Double {
            self.threshold = value
        }
        if let value = dict["ThresholdPercent"] as? Double {
            self.thresholdPercent = value
        }
        if let value = dict["ThresholdType"] as? String {
            self.thresholdType = value
        }
        if let value = dict["WebHook"] as? String {
            self.webHook = value
        }
    }
}

public class CreateQuotaAlarmResponseBody : Tea.TeaModel {
    public var alarmId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmId != nil {
            map["AlarmId"] = self.alarmId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmId"] as? String {
            self.alarmId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateQuotaAlarmResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateQuotaAlarmResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateQuotaAlarmResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateQuotaApplicationRequest : Tea.TeaModel {
    public class Dimensions : Tea.TeaModel {
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
    public var auditMode: String?

    public var desireValue: Double?

    public var dimensions: [CreateQuotaApplicationRequest.Dimensions]?

    public var effectiveTime: String?

    public var envLanguage: String?

    public var expireTime: String?

    public var noticeType: Int32?

    public var productCode: String?

    public var quotaActionCode: String?

    public var quotaCategory: String?

    public var reason: String?

    public override init() {
        super.init()
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
        if self.desireValue != nil {
            map["DesireValue"] = self.desireValue!
        }
        if self.dimensions != nil {
            var tmp : [Any] = []
            for k in self.dimensions! {
                tmp.append(k.toMap())
            }
            map["Dimensions"] = tmp
        }
        if self.effectiveTime != nil {
            map["EffectiveTime"] = self.effectiveTime!
        }
        if self.envLanguage != nil {
            map["EnvLanguage"] = self.envLanguage!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.noticeType != nil {
            map["NoticeType"] = self.noticeType!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.quotaActionCode != nil {
            map["QuotaActionCode"] = self.quotaActionCode!
        }
        if self.quotaCategory != nil {
            map["QuotaCategory"] = self.quotaCategory!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditMode"] as? String {
            self.auditMode = value
        }
        if let value = dict["DesireValue"] as? Double {
            self.desireValue = value
        }
        if let value = dict["Dimensions"] as? [Any?] {
            var tmp : [CreateQuotaApplicationRequest.Dimensions] = []
            for v in value {
                if v != nil {
                    var model = CreateQuotaApplicationRequest.Dimensions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dimensions = tmp
        }
        if let value = dict["EffectiveTime"] as? String {
            self.effectiveTime = value
        }
        if let value = dict["EnvLanguage"] as? String {
            self.envLanguage = value
        }
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["NoticeType"] as? Int32 {
            self.noticeType = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["QuotaActionCode"] as? String {
            self.quotaActionCode = value
        }
        if let value = dict["QuotaCategory"] as? String {
            self.quotaCategory = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
    }
}

public class CreateQuotaApplicationResponseBody : Tea.TeaModel {
    public var applicationId: String?

    public var applyTime: String?

    public var approveValue: Double?

    public var auditReason: String?

    public var desireValue: Int32?

    public var dimension: [String: Any]?

    public var effectiveTime: String?

    public var expireTime: String?

    public var noticeType: Int64?

    public var productCode: String?

    public var quotaActionCode: String?

    public var quotaArn: String?

    public var quotaDescription: String?

    public var quotaName: String?

    public var quotaUnit: String?

    public var reason: String?

    public var requestId: String?

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
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.applyTime != nil {
            map["ApplyTime"] = self.applyTime!
        }
        if self.approveValue != nil {
            map["ApproveValue"] = self.approveValue!
        }
        if self.auditReason != nil {
            map["AuditReason"] = self.auditReason!
        }
        if self.desireValue != nil {
            map["DesireValue"] = self.desireValue!
        }
        if self.dimension != nil {
            map["Dimension"] = self.dimension!
        }
        if self.effectiveTime != nil {
            map["EffectiveTime"] = self.effectiveTime!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.noticeType != nil {
            map["NoticeType"] = self.noticeType!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.quotaActionCode != nil {
            map["QuotaActionCode"] = self.quotaActionCode!
        }
        if self.quotaArn != nil {
            map["QuotaArn"] = self.quotaArn!
        }
        if self.quotaDescription != nil {
            map["QuotaDescription"] = self.quotaDescription!
        }
        if self.quotaName != nil {
            map["QuotaName"] = self.quotaName!
        }
        if self.quotaUnit != nil {
            map["QuotaUnit"] = self.quotaUnit!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationId"] as? String {
            self.applicationId = value
        }
        if let value = dict["ApplyTime"] as? String {
            self.applyTime = value
        }
        if let value = dict["ApproveValue"] as? Double {
            self.approveValue = value
        }
        if let value = dict["AuditReason"] as? String {
            self.auditReason = value
        }
        if let value = dict["DesireValue"] as? Int32 {
            self.desireValue = value
        }
        if let value = dict["Dimension"] as? [String: Any] {
            self.dimension = value
        }
        if let value = dict["EffectiveTime"] as? String {
            self.effectiveTime = value
        }
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["NoticeType"] as? Int64 {
            self.noticeType = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["QuotaActionCode"] as? String {
            self.quotaActionCode = value
        }
        if let value = dict["QuotaArn"] as? String {
            self.quotaArn = value
        }
        if let value = dict["QuotaDescription"] as? String {
            self.quotaDescription = value
        }
        if let value = dict["QuotaName"] as? String {
            self.quotaName = value
        }
        if let value = dict["QuotaUnit"] as? String {
            self.quotaUnit = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class CreateQuotaApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateQuotaApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateQuotaApplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateQuotaApplicationsForTemplateRequest : Tea.TeaModel {
    public class Dimensions : Tea.TeaModel {
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
    public var aliyunUids: [String]?

    public var desireValue: Double?

    public var dimensions: [CreateQuotaApplicationsForTemplateRequest.Dimensions]?

    public var effectiveTime: String?

    public var envLanguage: String?

    public var expireTime: String?

    public var noticeType: Int32?

    public var productCode: String?

    public var quotaActionCode: String?

    public var quotaCategory: String?

    public var reason: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunUids != nil {
            map["AliyunUids"] = self.aliyunUids!
        }
        if self.desireValue != nil {
            map["DesireValue"] = self.desireValue!
        }
        if self.dimensions != nil {
            var tmp : [Any] = []
            for k in self.dimensions! {
                tmp.append(k.toMap())
            }
            map["Dimensions"] = tmp
        }
        if self.effectiveTime != nil {
            map["EffectiveTime"] = self.effectiveTime!
        }
        if self.envLanguage != nil {
            map["EnvLanguage"] = self.envLanguage!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.noticeType != nil {
            map["NoticeType"] = self.noticeType!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.quotaActionCode != nil {
            map["QuotaActionCode"] = self.quotaActionCode!
        }
        if self.quotaCategory != nil {
            map["QuotaCategory"] = self.quotaCategory!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunUids"] as? [String] {
            self.aliyunUids = value
        }
        if let value = dict["DesireValue"] as? Double {
            self.desireValue = value
        }
        if let value = dict["Dimensions"] as? [Any?] {
            var tmp : [CreateQuotaApplicationsForTemplateRequest.Dimensions] = []
            for v in value {
                if v != nil {
                    var model = CreateQuotaApplicationsForTemplateRequest.Dimensions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dimensions = tmp
        }
        if let value = dict["EffectiveTime"] as? String {
            self.effectiveTime = value
        }
        if let value = dict["EnvLanguage"] as? String {
            self.envLanguage = value
        }
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["NoticeType"] as? Int32 {
            self.noticeType = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["QuotaActionCode"] as? String {
            self.quotaActionCode = value
        }
        if let value = dict["QuotaCategory"] as? String {
            self.quotaCategory = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
    }
}

public class CreateQuotaApplicationsForTemplateResponseBody : Tea.TeaModel {
    public class FailResults : Tea.TeaModel {
        public var aliyunUid: String?

        public var reason: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunUid != nil {
                map["AliyunUid"] = self.aliyunUid!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliyunUid"] as? String {
                self.aliyunUid = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
        }
    }
    public var aliyunUids: [String]?

    public var batchQuotaApplicationId: String?

    public var failResults: [CreateQuotaApplicationsForTemplateResponseBody.FailResults]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunUids != nil {
            map["AliyunUids"] = self.aliyunUids!
        }
        if self.batchQuotaApplicationId != nil {
            map["BatchQuotaApplicationId"] = self.batchQuotaApplicationId!
        }
        if self.failResults != nil {
            var tmp : [Any] = []
            for k in self.failResults! {
                tmp.append(k.toMap())
            }
            map["FailResults"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunUids"] as? [String] {
            self.aliyunUids = value
        }
        if let value = dict["BatchQuotaApplicationId"] as? String {
            self.batchQuotaApplicationId = value
        }
        if let value = dict["FailResults"] as? [Any?] {
            var tmp : [CreateQuotaApplicationsForTemplateResponseBody.FailResults] = []
            for v in value {
                if v != nil {
                    var model = CreateQuotaApplicationsForTemplateResponseBody.FailResults()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.failResults = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateQuotaApplicationsForTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateQuotaApplicationsForTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateQuotaApplicationsForTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTemplateQuotaItemRequest : Tea.TeaModel {
    public class Dimensions : Tea.TeaModel {
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
    public var desireValue: Double?

    public var dimensions: [CreateTemplateQuotaItemRequest.Dimensions]?

    public var effectiveTime: String?

    public var envLanguage: String?

    public var expireTime: String?

    public var noticeType: Int64?

    public var productCode: String?

    public var quotaActionCode: String?

    public var quotaCategory: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.desireValue != nil {
            map["DesireValue"] = self.desireValue!
        }
        if self.dimensions != nil {
            var tmp : [Any] = []
            for k in self.dimensions! {
                tmp.append(k.toMap())
            }
            map["Dimensions"] = tmp
        }
        if self.effectiveTime != nil {
            map["EffectiveTime"] = self.effectiveTime!
        }
        if self.envLanguage != nil {
            map["EnvLanguage"] = self.envLanguage!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.noticeType != nil {
            map["NoticeType"] = self.noticeType!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.quotaActionCode != nil {
            map["QuotaActionCode"] = self.quotaActionCode!
        }
        if self.quotaCategory != nil {
            map["QuotaCategory"] = self.quotaCategory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DesireValue"] as? Double {
            self.desireValue = value
        }
        if let value = dict["Dimensions"] as? [Any?] {
            var tmp : [CreateTemplateQuotaItemRequest.Dimensions] = []
            for v in value {
                if v != nil {
                    var model = CreateTemplateQuotaItemRequest.Dimensions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dimensions = tmp
        }
        if let value = dict["EffectiveTime"] as? String {
            self.effectiveTime = value
        }
        if let value = dict["EnvLanguage"] as? String {
            self.envLanguage = value
        }
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["NoticeType"] as? Int64 {
            self.noticeType = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["QuotaActionCode"] as? String {
            self.quotaActionCode = value
        }
        if let value = dict["QuotaCategory"] as? String {
            self.quotaCategory = value
        }
    }
}

public class CreateTemplateQuotaItemResponseBody : Tea.TeaModel {
    public var id: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateTemplateQuotaItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTemplateQuotaItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTemplateQuotaItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteQuotaAlarmRequest : Tea.TeaModel {
    public var alarmId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmId != nil {
            map["AlarmId"] = self.alarmId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmId"] as? String {
            self.alarmId = value
        }
    }
}

public class DeleteQuotaAlarmResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteQuotaAlarmResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteQuotaAlarmResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteQuotaAlarmResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTemplateQuotaItemRequest : Tea.TeaModel {
    public var id: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
    }
}

public class DeleteTemplateQuotaItemResponseBody : Tea.TeaModel {
    public var id: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteTemplateQuotaItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTemplateQuotaItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteTemplateQuotaItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetProductQuotaRequest : Tea.TeaModel {
    public class Dimensions : Tea.TeaModel {
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
    public var dimensions: [GetProductQuotaRequest.Dimensions]?

    public var productCode: String?

    public var quotaActionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dimensions != nil {
            var tmp : [Any] = []
            for k in self.dimensions! {
                tmp.append(k.toMap())
            }
            map["Dimensions"] = tmp
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.quotaActionCode != nil {
            map["QuotaActionCode"] = self.quotaActionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Dimensions"] as? [Any?] {
            var tmp : [GetProductQuotaRequest.Dimensions] = []
            for v in value {
                if v != nil {
                    var model = GetProductQuotaRequest.Dimensions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dimensions = tmp
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["QuotaActionCode"] as? String {
            self.quotaActionCode = value
        }
    }
}

public class GetProductQuotaResponseBody : Tea.TeaModel {
    public class Quota : Tea.TeaModel {
        public class Period : Tea.TeaModel {
            public var periodUnit: String?

            public var periodValue: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.periodUnit != nil {
                    map["PeriodUnit"] = self.periodUnit!
                }
                if self.periodValue != nil {
                    map["PeriodValue"] = self.periodValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PeriodUnit"] as? String {
                    self.periodUnit = value
                }
                if let value = dict["PeriodValue"] as? Int32 {
                    self.periodValue = value
                }
            }
        }
        public class QuotaItems : Tea.TeaModel {
            public var quota: String?

            public var quotaUnit: String?

            public var type: String?

            public var usage: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.quota != nil {
                    map["Quota"] = self.quota!
                }
                if self.quotaUnit != nil {
                    map["QuotaUnit"] = self.quotaUnit!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.usage != nil {
                    map["Usage"] = self.usage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Quota"] as? String {
                    self.quota = value
                }
                if let value = dict["QuotaUnit"] as? String {
                    self.quotaUnit = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Usage"] as? String {
                    self.usage = value
                }
            }
        }
        public class UsageMetric : Tea.TeaModel {
            public var metricDimensions: [String: String]?

            public var metricName: String?

            public var metricNamespace: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.metricDimensions != nil {
                    map["MetricDimensions"] = self.metricDimensions!
                }
                if self.metricName != nil {
                    map["MetricName"] = self.metricName!
                }
                if self.metricNamespace != nil {
                    map["MetricNamespace"] = self.metricNamespace!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MetricDimensions"] as? [String: String] {
                    self.metricDimensions = value
                }
                if let value = dict["MetricName"] as? String {
                    self.metricName = value
                }
                if let value = dict["MetricNamespace"] as? String {
                    self.metricNamespace = value
                }
            }
        }
        public var adjustable: Bool?

        public var applicableRange: [Double]?

        public var applicableType: String?

        public var applyReasonTips: String?

        public var consumable: Bool?

        public var dimensions: [String: Any]?

        public var effectiveTime: String?

        public var expireTime: String?

        public var globalQuota: Bool?

        public var period: GetProductQuotaResponseBody.Quota.Period?

        public var productCode: String?

        public var quotaActionCode: String?

        public var quotaArn: String?

        public var quotaCategory: String?

        public var quotaDescription: String?

        public var quotaItems: [GetProductQuotaResponseBody.Quota.QuotaItems]?

        public var quotaName: String?

        public var quotaType: String?

        public var quotaUnit: String?

        public var supportedRange: [Double]?

        public var totalQuota: Double?

        public var totalUsage: Double?

        public var unadjustableDetail: String?

        public var usageMetric: GetProductQuotaResponseBody.Quota.UsageMetric?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.period?.validate()
            try self.usageMetric?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adjustable != nil {
                map["Adjustable"] = self.adjustable!
            }
            if self.applicableRange != nil {
                map["ApplicableRange"] = self.applicableRange!
            }
            if self.applicableType != nil {
                map["ApplicableType"] = self.applicableType!
            }
            if self.applyReasonTips != nil {
                map["ApplyReasonTips"] = self.applyReasonTips!
            }
            if self.consumable != nil {
                map["Consumable"] = self.consumable!
            }
            if self.dimensions != nil {
                map["Dimensions"] = self.dimensions!
            }
            if self.effectiveTime != nil {
                map["EffectiveTime"] = self.effectiveTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.globalQuota != nil {
                map["GlobalQuota"] = self.globalQuota!
            }
            if self.period != nil {
                map["Period"] = self.period?.toMap()
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.quotaActionCode != nil {
                map["QuotaActionCode"] = self.quotaActionCode!
            }
            if self.quotaArn != nil {
                map["QuotaArn"] = self.quotaArn!
            }
            if self.quotaCategory != nil {
                map["QuotaCategory"] = self.quotaCategory!
            }
            if self.quotaDescription != nil {
                map["QuotaDescription"] = self.quotaDescription!
            }
            if self.quotaItems != nil {
                var tmp : [Any] = []
                for k in self.quotaItems! {
                    tmp.append(k.toMap())
                }
                map["QuotaItems"] = tmp
            }
            if self.quotaName != nil {
                map["QuotaName"] = self.quotaName!
            }
            if self.quotaType != nil {
                map["QuotaType"] = self.quotaType!
            }
            if self.quotaUnit != nil {
                map["QuotaUnit"] = self.quotaUnit!
            }
            if self.supportedRange != nil {
                map["SupportedRange"] = self.supportedRange!
            }
            if self.totalQuota != nil {
                map["TotalQuota"] = self.totalQuota!
            }
            if self.totalUsage != nil {
                map["TotalUsage"] = self.totalUsage!
            }
            if self.unadjustableDetail != nil {
                map["UnadjustableDetail"] = self.unadjustableDetail!
            }
            if self.usageMetric != nil {
                map["UsageMetric"] = self.usageMetric?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Adjustable"] as? Bool {
                self.adjustable = value
            }
            if let value = dict["ApplicableRange"] as? [Double] {
                self.applicableRange = value
            }
            if let value = dict["ApplicableType"] as? String {
                self.applicableType = value
            }
            if let value = dict["ApplyReasonTips"] as? String {
                self.applyReasonTips = value
            }
            if let value = dict["Consumable"] as? Bool {
                self.consumable = value
            }
            if let value = dict["Dimensions"] as? [String: Any] {
                self.dimensions = value
            }
            if let value = dict["EffectiveTime"] as? String {
                self.effectiveTime = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["GlobalQuota"] as? Bool {
                self.globalQuota = value
            }
            if let value = dict["Period"] as? [String: Any?] {
                var model = GetProductQuotaResponseBody.Quota.Period()
                model.fromMap(value)
                self.period = model
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["QuotaActionCode"] as? String {
                self.quotaActionCode = value
            }
            if let value = dict["QuotaArn"] as? String {
                self.quotaArn = value
            }
            if let value = dict["QuotaCategory"] as? String {
                self.quotaCategory = value
            }
            if let value = dict["QuotaDescription"] as? String {
                self.quotaDescription = value
            }
            if let value = dict["QuotaItems"] as? [Any?] {
                var tmp : [GetProductQuotaResponseBody.Quota.QuotaItems] = []
                for v in value {
                    if v != nil {
                        var model = GetProductQuotaResponseBody.Quota.QuotaItems()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.quotaItems = tmp
            }
            if let value = dict["QuotaName"] as? String {
                self.quotaName = value
            }
            if let value = dict["QuotaType"] as? String {
                self.quotaType = value
            }
            if let value = dict["QuotaUnit"] as? String {
                self.quotaUnit = value
            }
            if let value = dict["SupportedRange"] as? [Double] {
                self.supportedRange = value
            }
            if let value = dict["TotalQuota"] as? Double {
                self.totalQuota = value
            }
            if let value = dict["TotalUsage"] as? Double {
                self.totalUsage = value
            }
            if let value = dict["UnadjustableDetail"] as? String {
                self.unadjustableDetail = value
            }
            if let value = dict["UsageMetric"] as? [String: Any?] {
                var model = GetProductQuotaResponseBody.Quota.UsageMetric()
                model.fromMap(value)
                self.usageMetric = model
            }
        }
    }
    public var quota: GetProductQuotaResponseBody.Quota?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.quota?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.quota != nil {
            map["Quota"] = self.quota?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Quota"] as? [String: Any?] {
            var model = GetProductQuotaResponseBody.Quota()
            model.fromMap(value)
            self.quota = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetProductQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProductQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetProductQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetProductQuotaDimensionRequest : Tea.TeaModel {
    public class DependentDimensions : Tea.TeaModel {
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
    public var dependentDimensions: [GetProductQuotaDimensionRequest.DependentDimensions]?

    public var dimensionKey: String?

    public var productCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dependentDimensions != nil {
            var tmp : [Any] = []
            for k in self.dependentDimensions! {
                tmp.append(k.toMap())
            }
            map["DependentDimensions"] = tmp
        }
        if self.dimensionKey != nil {
            map["DimensionKey"] = self.dimensionKey!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DependentDimensions"] as? [Any?] {
            var tmp : [GetProductQuotaDimensionRequest.DependentDimensions] = []
            for v in value {
                if v != nil {
                    var model = GetProductQuotaDimensionRequest.DependentDimensions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dependentDimensions = tmp
        }
        if let value = dict["DimensionKey"] as? String {
            self.dimensionKey = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
    }
}

public class GetProductQuotaDimensionResponseBody : Tea.TeaModel {
    public class QuotaDimension : Tea.TeaModel {
        public class DimensionValueDetail : Tea.TeaModel {
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
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var dependentDimensions: [String]?

        public var dimensionKey: String?

        public var dimensionValueDetail: [GetProductQuotaDimensionResponseBody.QuotaDimension.DimensionValueDetail]?

        public var dimensionValues: [String]?

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
            if self.dependentDimensions != nil {
                map["DependentDimensions"] = self.dependentDimensions!
            }
            if self.dimensionKey != nil {
                map["DimensionKey"] = self.dimensionKey!
            }
            if self.dimensionValueDetail != nil {
                var tmp : [Any] = []
                for k in self.dimensionValueDetail! {
                    tmp.append(k.toMap())
                }
                map["DimensionValueDetail"] = tmp
            }
            if self.dimensionValues != nil {
                map["DimensionValues"] = self.dimensionValues!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DependentDimensions"] as? [String] {
                self.dependentDimensions = value
            }
            if let value = dict["DimensionKey"] as? String {
                self.dimensionKey = value
            }
            if let value = dict["DimensionValueDetail"] as? [Any?] {
                var tmp : [GetProductQuotaDimensionResponseBody.QuotaDimension.DimensionValueDetail] = []
                for v in value {
                    if v != nil {
                        var model = GetProductQuotaDimensionResponseBody.QuotaDimension.DimensionValueDetail()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dimensionValueDetail = tmp
            }
            if let value = dict["DimensionValues"] as? [String] {
                self.dimensionValues = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var quotaDimension: GetProductQuotaDimensionResponseBody.QuotaDimension?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.quotaDimension?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.quotaDimension != nil {
            map["QuotaDimension"] = self.quotaDimension?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QuotaDimension"] as? [String: Any?] {
            var model = GetProductQuotaDimensionResponseBody.QuotaDimension()
            model.fromMap(value)
            self.quotaDimension = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetProductQuotaDimensionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProductQuotaDimensionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetProductQuotaDimensionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetQuotaAlarmRequest : Tea.TeaModel {
    public var alarmId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmId != nil {
            map["AlarmId"] = self.alarmId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmId"] as? String {
            self.alarmId = value
        }
    }
}

public class GetQuotaAlarmResponseBody : Tea.TeaModel {
    public class QuotaAlarm : Tea.TeaModel {
        public var alarmId: String?

        public var alarmName: String?

        public var createTime: String?

        public var notifyChannels: [String]?

        public var notifyTarget: String?

        public var productCode: String?

        public var quotaActionCode: String?

        public var quotaDimension: [String: Any]?

        public var quotaUsage: Double?

        public var quotaValue: Double?

        public var threshold: Double?

        public var thresholdPercent: Double?

        public var thresholdType: String?

        public var webhook: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alarmId != nil {
                map["AlarmId"] = self.alarmId!
            }
            if self.alarmName != nil {
                map["AlarmName"] = self.alarmName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.notifyChannels != nil {
                map["NotifyChannels"] = self.notifyChannels!
            }
            if self.notifyTarget != nil {
                map["NotifyTarget"] = self.notifyTarget!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.quotaActionCode != nil {
                map["QuotaActionCode"] = self.quotaActionCode!
            }
            if self.quotaDimension != nil {
                map["QuotaDimension"] = self.quotaDimension!
            }
            if self.quotaUsage != nil {
                map["QuotaUsage"] = self.quotaUsage!
            }
            if self.quotaValue != nil {
                map["QuotaValue"] = self.quotaValue!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            if self.thresholdPercent != nil {
                map["ThresholdPercent"] = self.thresholdPercent!
            }
            if self.thresholdType != nil {
                map["ThresholdType"] = self.thresholdType!
            }
            if self.webhook != nil {
                map["Webhook"] = self.webhook!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlarmId"] as? String {
                self.alarmId = value
            }
            if let value = dict["AlarmName"] as? String {
                self.alarmName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["NotifyChannels"] as? [String] {
                self.notifyChannels = value
            }
            if let value = dict["NotifyTarget"] as? String {
                self.notifyTarget = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["QuotaActionCode"] as? String {
                self.quotaActionCode = value
            }
            if let value = dict["QuotaDimension"] as? [String: Any] {
                self.quotaDimension = value
            }
            if let value = dict["QuotaUsage"] as? Double {
                self.quotaUsage = value
            }
            if let value = dict["QuotaValue"] as? Double {
                self.quotaValue = value
            }
            if let value = dict["Threshold"] as? Double {
                self.threshold = value
            }
            if let value = dict["ThresholdPercent"] as? Double {
                self.thresholdPercent = value
            }
            if let value = dict["ThresholdType"] as? String {
                self.thresholdType = value
            }
            if let value = dict["Webhook"] as? String {
                self.webhook = value
            }
        }
    }
    public var quotaAlarm: GetQuotaAlarmResponseBody.QuotaAlarm?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.quotaAlarm?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.quotaAlarm != nil {
            map["QuotaAlarm"] = self.quotaAlarm?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QuotaAlarm"] as? [String: Any?] {
            var model = GetQuotaAlarmResponseBody.QuotaAlarm()
            model.fromMap(value)
            self.quotaAlarm = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetQuotaAlarmResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQuotaAlarmResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetQuotaAlarmResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetQuotaApplicationRequest : Tea.TeaModel {
    public var applicationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationId"] as? String {
            self.applicationId = value
        }
    }
}

public class GetQuotaApplicationResponseBody : Tea.TeaModel {
    public class QuotaApplication : Tea.TeaModel {
        public var applicationId: String?

        public var applyTime: String?

        public var approveValue: Double?

        public var auditReason: String?

        public var desireValue: Int32?

        public var dimension: [String: Any]?

        public var effectiveTime: String?

        public var expireTime: String?

        public var noticeType: Int64?

        public var productCode: String?

        public var quotaActionCode: String?

        public var quotaArn: String?

        public var quotaCategory: String?

        public var quotaDescription: String?

        public var quotaName: String?

        public var quotaUnit: String?

        public var reason: String?

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
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.applyTime != nil {
                map["ApplyTime"] = self.applyTime!
            }
            if self.approveValue != nil {
                map["ApproveValue"] = self.approveValue!
            }
            if self.auditReason != nil {
                map["AuditReason"] = self.auditReason!
            }
            if self.desireValue != nil {
                map["DesireValue"] = self.desireValue!
            }
            if self.dimension != nil {
                map["Dimension"] = self.dimension!
            }
            if self.effectiveTime != nil {
                map["EffectiveTime"] = self.effectiveTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.noticeType != nil {
                map["NoticeType"] = self.noticeType!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.quotaActionCode != nil {
                map["QuotaActionCode"] = self.quotaActionCode!
            }
            if self.quotaArn != nil {
                map["QuotaArn"] = self.quotaArn!
            }
            if self.quotaCategory != nil {
                map["QuotaCategory"] = self.quotaCategory!
            }
            if self.quotaDescription != nil {
                map["QuotaDescription"] = self.quotaDescription!
            }
            if self.quotaName != nil {
                map["QuotaName"] = self.quotaName!
            }
            if self.quotaUnit != nil {
                map["QuotaUnit"] = self.quotaUnit!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplicationId"] as? String {
                self.applicationId = value
            }
            if let value = dict["ApplyTime"] as? String {
                self.applyTime = value
            }
            if let value = dict["ApproveValue"] as? Double {
                self.approveValue = value
            }
            if let value = dict["AuditReason"] as? String {
                self.auditReason = value
            }
            if let value = dict["DesireValue"] as? Int32 {
                self.desireValue = value
            }
            if let value = dict["Dimension"] as? [String: Any] {
                self.dimension = value
            }
            if let value = dict["EffectiveTime"] as? String {
                self.effectiveTime = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["NoticeType"] as? Int64 {
                self.noticeType = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["QuotaActionCode"] as? String {
                self.quotaActionCode = value
            }
            if let value = dict["QuotaArn"] as? String {
                self.quotaArn = value
            }
            if let value = dict["QuotaCategory"] as? String {
                self.quotaCategory = value
            }
            if let value = dict["QuotaDescription"] as? String {
                self.quotaDescription = value
            }
            if let value = dict["QuotaName"] as? String {
                self.quotaName = value
            }
            if let value = dict["QuotaUnit"] as? String {
                self.quotaUnit = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var quotaApplication: GetQuotaApplicationResponseBody.QuotaApplication?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.quotaApplication?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.quotaApplication != nil {
            map["QuotaApplication"] = self.quotaApplication?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QuotaApplication"] as? [String: Any?] {
            var model = GetQuotaApplicationResponseBody.QuotaApplication()
            model.fromMap(value)
            self.quotaApplication = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetQuotaApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQuotaApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetQuotaApplicationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetQuotaApplicationApprovalRequest : Tea.TeaModel {
    public var applicationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationId"] as? String {
            self.applicationId = value
        }
    }
}

public class GetQuotaApplicationApprovalResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var approvalHours: Int32?

        public var reminderIntervalHours: Int32?

        public var supportReminder: Bool?

        public var unsupportReminderReason: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.approvalHours != nil {
                map["ApprovalHours"] = self.approvalHours!
            }
            if self.reminderIntervalHours != nil {
                map["ReminderIntervalHours"] = self.reminderIntervalHours!
            }
            if self.supportReminder != nil {
                map["SupportReminder"] = self.supportReminder!
            }
            if self.unsupportReminderReason != nil {
                map["UnsupportReminderReason"] = self.unsupportReminderReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApprovalHours"] as? Int32 {
                self.approvalHours = value
            }
            if let value = dict["ReminderIntervalHours"] as? Int32 {
                self.reminderIntervalHours = value
            }
            if let value = dict["SupportReminder"] as? Bool {
                self.supportReminder = value
            }
            if let value = dict["UnsupportReminderReason"] as? String {
                self.unsupportReminderReason = value
            }
        }
    }
    public var allowRetry: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: GetQuotaApplicationApprovalResponseBody.Module?

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
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
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
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = GetQuotaApplicationApprovalResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetQuotaApplicationApprovalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQuotaApplicationApprovalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetQuotaApplicationApprovalResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetQuotaTemplateServiceStatusRequest : Tea.TeaModel {
    public var resourceDirectoryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceDirectoryId != nil {
            map["ResourceDirectoryId"] = self.resourceDirectoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceDirectoryId"] as? String {
            self.resourceDirectoryId = value
        }
    }
}

public class GetQuotaTemplateServiceStatusResponseBody : Tea.TeaModel {
    public class TemplateServiceStatus : Tea.TeaModel {
        public var resourceDirectoryId: String?

        public var serviceStatus: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceDirectoryId != nil {
                map["ResourceDirectoryId"] = self.resourceDirectoryId!
            }
            if self.serviceStatus != nil {
                map["ServiceStatus"] = self.serviceStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceDirectoryId"] as? String {
                self.resourceDirectoryId = value
            }
            if let value = dict["ServiceStatus"] as? Int32 {
                self.serviceStatus = value
            }
        }
    }
    public var requestId: String?

    public var templateServiceStatus: GetQuotaTemplateServiceStatusResponseBody.TemplateServiceStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.templateServiceStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateServiceStatus != nil {
            map["TemplateServiceStatus"] = self.templateServiceStatus?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TemplateServiceStatus"] as? [String: Any?] {
            var model = GetQuotaTemplateServiceStatusResponseBody.TemplateServiceStatus()
            model.fromMap(value)
            self.templateServiceStatus = model
        }
    }
}

public class GetQuotaTemplateServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQuotaTemplateServiceStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetQuotaTemplateServiceStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAlarmHistoriesRequest : Tea.TeaModel {
    public var alarmId: String?

    public var endTime: Int64?

    public var keyword: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var productCode: String?

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
        if self.alarmId != nil {
            map["AlarmId"] = self.alarmId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmId"] as? String {
            self.alarmId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class ListAlarmHistoriesResponseBody : Tea.TeaModel {
    public class AlarmHistories : Tea.TeaModel {
        public var alarmName: String?

        public var createTime: String?

        public var notifyChannels: [String]?

        public var notifyTarget: String?

        public var productCode: String?

        public var quotaActionCode: String?

        public var quotaUsage: Double?

        public var threshold: Double?

        public var thresholdPercent: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alarmName != nil {
                map["AlarmName"] = self.alarmName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.notifyChannels != nil {
                map["NotifyChannels"] = self.notifyChannels!
            }
            if self.notifyTarget != nil {
                map["NotifyTarget"] = self.notifyTarget!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.quotaActionCode != nil {
                map["QuotaActionCode"] = self.quotaActionCode!
            }
            if self.quotaUsage != nil {
                map["QuotaUsage"] = self.quotaUsage!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            if self.thresholdPercent != nil {
                map["ThresholdPercent"] = self.thresholdPercent!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlarmName"] as? String {
                self.alarmName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["NotifyChannels"] as? [String] {
                self.notifyChannels = value
            }
            if let value = dict["NotifyTarget"] as? String {
                self.notifyTarget = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["QuotaActionCode"] as? String {
                self.quotaActionCode = value
            }
            if let value = dict["QuotaUsage"] as? Double {
                self.quotaUsage = value
            }
            if let value = dict["Threshold"] as? Double {
                self.threshold = value
            }
            if let value = dict["ThresholdPercent"] as? Double {
                self.thresholdPercent = value
            }
        }
    }
    public var alarmHistories: [ListAlarmHistoriesResponseBody.AlarmHistories]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.alarmHistories != nil {
            var tmp : [Any] = []
            for k in self.alarmHistories! {
                tmp.append(k.toMap())
            }
            map["AlarmHistories"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["AlarmHistories"] as? [Any?] {
            var tmp : [ListAlarmHistoriesResponseBody.AlarmHistories] = []
            for v in value {
                if v != nil {
                    var model = ListAlarmHistoriesResponseBody.AlarmHistories()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.alarmHistories = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListAlarmHistoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAlarmHistoriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAlarmHistoriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDependentQuotasRequest : Tea.TeaModel {
    public var productCode: String?

    public var quotaActionCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.quotaActionCode != nil {
            map["QuotaActionCode"] = self.quotaActionCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["QuotaActionCode"] as? String {
            self.quotaActionCode = value
        }
    }
}

public class ListDependentQuotasResponseBody : Tea.TeaModel {
    public class Quotas : Tea.TeaModel {
        public class Dimensions : Tea.TeaModel {
            public var dependentDimension: [String]?

            public var dimensionKey: String?

            public var dimensionValues: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dependentDimension != nil {
                    map["DependentDimension"] = self.dependentDimension!
                }
                if self.dimensionKey != nil {
                    map["DimensionKey"] = self.dimensionKey!
                }
                if self.dimensionValues != nil {
                    map["DimensionValues"] = self.dimensionValues!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DependentDimension"] as? [String] {
                    self.dependentDimension = value
                }
                if let value = dict["DimensionKey"] as? String {
                    self.dimensionKey = value
                }
                if let value = dict["DimensionValues"] as? [String] {
                    self.dimensionValues = value
                }
            }
        }
        public var dimensions: [ListDependentQuotasResponseBody.Quotas.Dimensions]?

        public var productCode: String?

        public var quotaActionCode: String?

        public var scale: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dimensions != nil {
                var tmp : [Any] = []
                for k in self.dimensions! {
                    tmp.append(k.toMap())
                }
                map["Dimensions"] = tmp
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.quotaActionCode != nil {
                map["QuotaActionCode"] = self.quotaActionCode!
            }
            if self.scale != nil {
                map["Scale"] = self.scale!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Dimensions"] as? [Any?] {
                var tmp : [ListDependentQuotasResponseBody.Quotas.Dimensions] = []
                for v in value {
                    if v != nil {
                        var model = ListDependentQuotasResponseBody.Quotas.Dimensions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dimensions = tmp
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["QuotaActionCode"] as? String {
                self.quotaActionCode = value
            }
            if let value = dict["Scale"] as? Double {
                self.scale = value
            }
        }
    }
    public var quotas: [ListDependentQuotasResponseBody.Quotas]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.quotas != nil {
            var tmp : [Any] = []
            for k in self.quotas! {
                tmp.append(k.toMap())
            }
            map["Quotas"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Quotas"] as? [Any?] {
            var tmp : [ListDependentQuotasResponseBody.Quotas] = []
            for v in value {
                if v != nil {
                    var model = ListDependentQuotasResponseBody.Quotas()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.quotas = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDependentQuotasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDependentQuotasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDependentQuotasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProductDimensionGroupsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var productCode: String?

    public override init() {
        super.init()
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
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
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
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
    }
}

public class ListProductDimensionGroupsResponseBody : Tea.TeaModel {
    public class DimensionGroups : Tea.TeaModel {
        public var dimensionKeys: [String]?

        public var groupCode: String?

        public var groupName: String?

        public var productCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dimensionKeys != nil {
                map["DimensionKeys"] = self.dimensionKeys!
            }
            if self.groupCode != nil {
                map["GroupCode"] = self.groupCode!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DimensionKeys"] as? [String] {
                self.dimensionKeys = value
            }
            if let value = dict["GroupCode"] as? String {
                self.groupCode = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
        }
    }
    public var dimensionGroups: [ListProductDimensionGroupsResponseBody.DimensionGroups]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.dimensionGroups != nil {
            var tmp : [Any] = []
            for k in self.dimensionGroups! {
                tmp.append(k.toMap())
            }
            map["DimensionGroups"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["DimensionGroups"] as? [Any?] {
            var tmp : [ListProductDimensionGroupsResponseBody.DimensionGroups] = []
            for v in value {
                if v != nil {
                    var model = ListProductDimensionGroupsResponseBody.DimensionGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dimensionGroups = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListProductDimensionGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductDimensionGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListProductDimensionGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProductQuotaDimensionsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var productCode: String?

    public var quotaCategory: String?

    public override init() {
        super.init()
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
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.quotaCategory != nil {
            map["QuotaCategory"] = self.quotaCategory!
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
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["QuotaCategory"] as? String {
            self.quotaCategory = value
        }
    }
}

public class ListProductQuotaDimensionsResponseBody : Tea.TeaModel {
    public class QuotaDimensions : Tea.TeaModel {
        public class DimensionValueDetail : Tea.TeaModel {
            public class DependentDimensions : Tea.TeaModel {
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
            public var dependentDimensions: [ListProductQuotaDimensionsResponseBody.QuotaDimensions.DimensionValueDetail.DependentDimensions]?

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
                if self.dependentDimensions != nil {
                    var tmp : [Any] = []
                    for k in self.dependentDimensions! {
                        tmp.append(k.toMap())
                    }
                    map["DependentDimensions"] = tmp
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
                if let value = dict["DependentDimensions"] as? [Any?] {
                    var tmp : [ListProductQuotaDimensionsResponseBody.QuotaDimensions.DimensionValueDetail.DependentDimensions] = []
                    for v in value {
                        if v != nil {
                            var model = ListProductQuotaDimensionsResponseBody.QuotaDimensions.DimensionValueDetail.DependentDimensions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.dependentDimensions = tmp
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var dependentDimensions: [String]?

        public var dimensionKey: String?

        public var dimensionValueDetail: [ListProductQuotaDimensionsResponseBody.QuotaDimensions.DimensionValueDetail]?

        public var dimensionValues: [String]?

        public var name: String?

        public var requisite: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dependentDimensions != nil {
                map["DependentDimensions"] = self.dependentDimensions!
            }
            if self.dimensionKey != nil {
                map["DimensionKey"] = self.dimensionKey!
            }
            if self.dimensionValueDetail != nil {
                var tmp : [Any] = []
                for k in self.dimensionValueDetail! {
                    tmp.append(k.toMap())
                }
                map["DimensionValueDetail"] = tmp
            }
            if self.dimensionValues != nil {
                map["DimensionValues"] = self.dimensionValues!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.requisite != nil {
                map["Requisite"] = self.requisite!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DependentDimensions"] as? [String] {
                self.dependentDimensions = value
            }
            if let value = dict["DimensionKey"] as? String {
                self.dimensionKey = value
            }
            if let value = dict["DimensionValueDetail"] as? [Any?] {
                var tmp : [ListProductQuotaDimensionsResponseBody.QuotaDimensions.DimensionValueDetail] = []
                for v in value {
                    if v != nil {
                        var model = ListProductQuotaDimensionsResponseBody.QuotaDimensions.DimensionValueDetail()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dimensionValueDetail = tmp
            }
            if let value = dict["DimensionValues"] as? [String] {
                self.dimensionValues = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Requisite"] as? Bool {
                self.requisite = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var quotaDimensions: [ListProductQuotaDimensionsResponseBody.QuotaDimensions]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.quotaDimensions != nil {
            var tmp : [Any] = []
            for k in self.quotaDimensions! {
                tmp.append(k.toMap())
            }
            map["QuotaDimensions"] = tmp
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["QuotaDimensions"] as? [Any?] {
            var tmp : [ListProductQuotaDimensionsResponseBody.QuotaDimensions] = []
            for v in value {
                if v != nil {
                    var model = ListProductQuotaDimensionsResponseBody.QuotaDimensions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.quotaDimensions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListProductQuotaDimensionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductQuotaDimensionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListProductQuotaDimensionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProductQuotasRequest : Tea.TeaModel {
    public class Dimensions : Tea.TeaModel {
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
    public var dimensions: [ListProductQuotasRequest.Dimensions]?

    public var groupCode: String?

    public var keyWord: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var productCode: String?

    public var quotaActionCode: String?

    public var quotaCategory: String?

    public var sortField: String?

    public var sortOrder: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dimensions != nil {
            var tmp : [Any] = []
            for k in self.dimensions! {
                tmp.append(k.toMap())
            }
            map["Dimensions"] = tmp
        }
        if self.groupCode != nil {
            map["GroupCode"] = self.groupCode!
        }
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.quotaActionCode != nil {
            map["QuotaActionCode"] = self.quotaActionCode!
        }
        if self.quotaCategory != nil {
            map["QuotaCategory"] = self.quotaCategory!
        }
        if self.sortField != nil {
            map["SortField"] = self.sortField!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Dimensions"] as? [Any?] {
            var tmp : [ListProductQuotasRequest.Dimensions] = []
            for v in value {
                if v != nil {
                    var model = ListProductQuotasRequest.Dimensions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dimensions = tmp
        }
        if let value = dict["GroupCode"] as? String {
            self.groupCode = value
        }
        if let value = dict["KeyWord"] as? String {
            self.keyWord = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["QuotaActionCode"] as? String {
            self.quotaActionCode = value
        }
        if let value = dict["QuotaCategory"] as? String {
            self.quotaCategory = value
        }
        if let value = dict["SortField"] as? String {
            self.sortField = value
        }
        if let value = dict["SortOrder"] as? String {
            self.sortOrder = value
        }
    }
}

public class ListProductQuotasResponseBody : Tea.TeaModel {
    public class Quotas : Tea.TeaModel {
        public class Period : Tea.TeaModel {
            public var periodUnit: String?

            public var periodValue: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.periodUnit != nil {
                    map["PeriodUnit"] = self.periodUnit!
                }
                if self.periodValue != nil {
                    map["PeriodValue"] = self.periodValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PeriodUnit"] as? String {
                    self.periodUnit = value
                }
                if let value = dict["PeriodValue"] as? Int32 {
                    self.periodValue = value
                }
            }
        }
        public class QuotaItems : Tea.TeaModel {
            public var quota: String?

            public var quotaUnit: String?

            public var type: String?

            public var usage: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.quota != nil {
                    map["Quota"] = self.quota!
                }
                if self.quotaUnit != nil {
                    map["QuotaUnit"] = self.quotaUnit!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.usage != nil {
                    map["Usage"] = self.usage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Quota"] as? String {
                    self.quota = value
                }
                if let value = dict["QuotaUnit"] as? String {
                    self.quotaUnit = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Usage"] as? String {
                    self.usage = value
                }
            }
        }
        public class UsageMetric : Tea.TeaModel {
            public var metricDimensions: [String: String]?

            public var metricName: String?

            public var metricNamespace: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.metricDimensions != nil {
                    map["MetricDimensions"] = self.metricDimensions!
                }
                if self.metricName != nil {
                    map["MetricName"] = self.metricName!
                }
                if self.metricNamespace != nil {
                    map["MetricNamespace"] = self.metricNamespace!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MetricDimensions"] as? [String: String] {
                    self.metricDimensions = value
                }
                if let value = dict["MetricName"] as? String {
                    self.metricName = value
                }
                if let value = dict["MetricNamespace"] as? String {
                    self.metricNamespace = value
                }
            }
        }
        public var adjustable: Bool?

        public var applicableRange: [Double]?

        public var applicableType: String?

        public var applyReasonTips: String?

        public var consumable: Bool?

        public var dimensions: [String: Any]?

        public var effectiveTime: String?

        public var expireTime: String?

        public var globalQuota: Bool?

        public var period: ListProductQuotasResponseBody.Quotas.Period?

        public var productCode: String?

        public var quotaActionCode: String?

        public var quotaArn: String?

        public var quotaCategory: String?

        public var quotaDescription: String?

        public var quotaItems: [ListProductQuotasResponseBody.Quotas.QuotaItems]?

        public var quotaName: String?

        public var quotaType: String?

        public var quotaUnit: String?

        public var supportedRange: [Double]?

        public var totalQuota: Double?

        public var totalUsage: Double?

        public var unadjustableDetail: String?

        public var usageMetric: ListProductQuotasResponseBody.Quotas.UsageMetric?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.period?.validate()
            try self.usageMetric?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adjustable != nil {
                map["Adjustable"] = self.adjustable!
            }
            if self.applicableRange != nil {
                map["ApplicableRange"] = self.applicableRange!
            }
            if self.applicableType != nil {
                map["ApplicableType"] = self.applicableType!
            }
            if self.applyReasonTips != nil {
                map["ApplyReasonTips"] = self.applyReasonTips!
            }
            if self.consumable != nil {
                map["Consumable"] = self.consumable!
            }
            if self.dimensions != nil {
                map["Dimensions"] = self.dimensions!
            }
            if self.effectiveTime != nil {
                map["EffectiveTime"] = self.effectiveTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.globalQuota != nil {
                map["GlobalQuota"] = self.globalQuota!
            }
            if self.period != nil {
                map["Period"] = self.period?.toMap()
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.quotaActionCode != nil {
                map["QuotaActionCode"] = self.quotaActionCode!
            }
            if self.quotaArn != nil {
                map["QuotaArn"] = self.quotaArn!
            }
            if self.quotaCategory != nil {
                map["QuotaCategory"] = self.quotaCategory!
            }
            if self.quotaDescription != nil {
                map["QuotaDescription"] = self.quotaDescription!
            }
            if self.quotaItems != nil {
                var tmp : [Any] = []
                for k in self.quotaItems! {
                    tmp.append(k.toMap())
                }
                map["QuotaItems"] = tmp
            }
            if self.quotaName != nil {
                map["QuotaName"] = self.quotaName!
            }
            if self.quotaType != nil {
                map["QuotaType"] = self.quotaType!
            }
            if self.quotaUnit != nil {
                map["QuotaUnit"] = self.quotaUnit!
            }
            if self.supportedRange != nil {
                map["SupportedRange"] = self.supportedRange!
            }
            if self.totalQuota != nil {
                map["TotalQuota"] = self.totalQuota!
            }
            if self.totalUsage != nil {
                map["TotalUsage"] = self.totalUsage!
            }
            if self.unadjustableDetail != nil {
                map["UnadjustableDetail"] = self.unadjustableDetail!
            }
            if self.usageMetric != nil {
                map["UsageMetric"] = self.usageMetric?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Adjustable"] as? Bool {
                self.adjustable = value
            }
            if let value = dict["ApplicableRange"] as? [Double] {
                self.applicableRange = value
            }
            if let value = dict["ApplicableType"] as? String {
                self.applicableType = value
            }
            if let value = dict["ApplyReasonTips"] as? String {
                self.applyReasonTips = value
            }
            if let value = dict["Consumable"] as? Bool {
                self.consumable = value
            }
            if let value = dict["Dimensions"] as? [String: Any] {
                self.dimensions = value
            }
            if let value = dict["EffectiveTime"] as? String {
                self.effectiveTime = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["GlobalQuota"] as? Bool {
                self.globalQuota = value
            }
            if let value = dict["Period"] as? [String: Any?] {
                var model = ListProductQuotasResponseBody.Quotas.Period()
                model.fromMap(value)
                self.period = model
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["QuotaActionCode"] as? String {
                self.quotaActionCode = value
            }
            if let value = dict["QuotaArn"] as? String {
                self.quotaArn = value
            }
            if let value = dict["QuotaCategory"] as? String {
                self.quotaCategory = value
            }
            if let value = dict["QuotaDescription"] as? String {
                self.quotaDescription = value
            }
            if let value = dict["QuotaItems"] as? [Any?] {
                var tmp : [ListProductQuotasResponseBody.Quotas.QuotaItems] = []
                for v in value {
                    if v != nil {
                        var model = ListProductQuotasResponseBody.Quotas.QuotaItems()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.quotaItems = tmp
            }
            if let value = dict["QuotaName"] as? String {
                self.quotaName = value
            }
            if let value = dict["QuotaType"] as? String {
                self.quotaType = value
            }
            if let value = dict["QuotaUnit"] as? String {
                self.quotaUnit = value
            }
            if let value = dict["SupportedRange"] as? [Double] {
                self.supportedRange = value
            }
            if let value = dict["TotalQuota"] as? Double {
                self.totalQuota = value
            }
            if let value = dict["TotalUsage"] as? Double {
                self.totalUsage = value
            }
            if let value = dict["UnadjustableDetail"] as? String {
                self.unadjustableDetail = value
            }
            if let value = dict["UsageMetric"] as? [String: Any?] {
                var model = ListProductQuotasResponseBody.Quotas.UsageMetric()
                model.fromMap(value)
                self.usageMetric = model
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var quotas: [ListProductQuotasResponseBody.Quotas]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.quotas != nil {
            var tmp : [Any] = []
            for k in self.quotas! {
                tmp.append(k.toMap())
            }
            map["Quotas"] = tmp
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Quotas"] as? [Any?] {
            var tmp : [ListProductQuotasResponseBody.Quotas] = []
            for v in value {
                if v != nil {
                    var model = ListProductQuotasResponseBody.Quotas()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.quotas = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListProductQuotasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductQuotasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListProductQuotasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProductsRequest : Tea.TeaModel {
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

public class ListProductsResponseBody : Tea.TeaModel {
    public class ProductInfo : Tea.TeaModel {
        public var commonQuotaSupport: String?

        public var dynamic_: Bool?

        public var flowControlSupport: String?

        public var productCode: String?

        public var productName: String?

        public var productNameEn: String?

        public var secondCategoryId: Int64?

        public var secondCategoryName: String?

        public var secondCategoryNameEn: String?

        public var whiteListLabelQuotaSupport: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commonQuotaSupport != nil {
                map["CommonQuotaSupport"] = self.commonQuotaSupport!
            }
            if self.dynamic_ != nil {
                map["Dynamic"] = self.dynamic_!
            }
            if self.flowControlSupport != nil {
                map["FlowControlSupport"] = self.flowControlSupport!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.productNameEn != nil {
                map["ProductNameEn"] = self.productNameEn!
            }
            if self.secondCategoryId != nil {
                map["SecondCategoryId"] = self.secondCategoryId!
            }
            if self.secondCategoryName != nil {
                map["SecondCategoryName"] = self.secondCategoryName!
            }
            if self.secondCategoryNameEn != nil {
                map["SecondCategoryNameEn"] = self.secondCategoryNameEn!
            }
            if self.whiteListLabelQuotaSupport != nil {
                map["WhiteListLabelQuotaSupport"] = self.whiteListLabelQuotaSupport!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommonQuotaSupport"] as? String {
                self.commonQuotaSupport = value
            }
            if let value = dict["Dynamic"] as? Bool {
                self.dynamic_ = value
            }
            if let value = dict["FlowControlSupport"] as? String {
                self.flowControlSupport = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["ProductNameEn"] as? String {
                self.productNameEn = value
            }
            if let value = dict["SecondCategoryId"] as? Int64 {
                self.secondCategoryId = value
            }
            if let value = dict["SecondCategoryName"] as? String {
                self.secondCategoryName = value
            }
            if let value = dict["SecondCategoryNameEn"] as? String {
                self.secondCategoryNameEn = value
            }
            if let value = dict["WhiteListLabelQuotaSupport"] as? String {
                self.whiteListLabelQuotaSupport = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var productInfo: [ListProductsResponseBody.ProductInfo]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.productInfo != nil {
            var tmp : [Any] = []
            for k in self.productInfo! {
                tmp.append(k.toMap())
            }
            map["ProductInfo"] = tmp
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProductInfo"] as? [Any?] {
            var tmp : [ListProductsResponseBody.ProductInfo] = []
            for v in value {
                if v != nil {
                    var model = ListProductsResponseBody.ProductInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.productInfo = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListProductsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListProductsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListQuotaAlarmsRequest : Tea.TeaModel {
    public class QuotaDimensions : Tea.TeaModel {
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
    public var alarmName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var productCode: String?

    public var quotaActionCode: String?

    public var quotaDimensions: [ListQuotaAlarmsRequest.QuotaDimensions]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmName != nil {
            map["AlarmName"] = self.alarmName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.quotaActionCode != nil {
            map["QuotaActionCode"] = self.quotaActionCode!
        }
        if self.quotaDimensions != nil {
            var tmp : [Any] = []
            for k in self.quotaDimensions! {
                tmp.append(k.toMap())
            }
            map["QuotaDimensions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmName"] as? String {
            self.alarmName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["QuotaActionCode"] as? String {
            self.quotaActionCode = value
        }
        if let value = dict["QuotaDimensions"] as? [Any?] {
            var tmp : [ListQuotaAlarmsRequest.QuotaDimensions] = []
            for v in value {
                if v != nil {
                    var model = ListQuotaAlarmsRequest.QuotaDimensions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.quotaDimensions = tmp
        }
    }
}

public class ListQuotaAlarmsResponseBody : Tea.TeaModel {
    public class QuotaAlarms : Tea.TeaModel {
        public var alarmId: String?

        public var alarmName: String?

        public var createTime: String?

        public var exceedThreshold: Bool?

        public var notifyChannels: [String]?

        public var notifyTarget: String?

        public var productCode: String?

        public var quotaActionCode: String?

        public var quotaDimensions: [String: Any]?

        public var quotaUsage: Double?

        public var quotaValue: Double?

        public var threshold: Double?

        public var thresholdPercent: Double?

        public var thresholdType: String?

        public var webHook: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alarmId != nil {
                map["AlarmId"] = self.alarmId!
            }
            if self.alarmName != nil {
                map["AlarmName"] = self.alarmName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.exceedThreshold != nil {
                map["ExceedThreshold"] = self.exceedThreshold!
            }
            if self.notifyChannels != nil {
                map["NotifyChannels"] = self.notifyChannels!
            }
            if self.notifyTarget != nil {
                map["NotifyTarget"] = self.notifyTarget!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.quotaActionCode != nil {
                map["QuotaActionCode"] = self.quotaActionCode!
            }
            if self.quotaDimensions != nil {
                map["QuotaDimensions"] = self.quotaDimensions!
            }
            if self.quotaUsage != nil {
                map["QuotaUsage"] = self.quotaUsage!
            }
            if self.quotaValue != nil {
                map["QuotaValue"] = self.quotaValue!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            if self.thresholdPercent != nil {
                map["ThresholdPercent"] = self.thresholdPercent!
            }
            if self.thresholdType != nil {
                map["ThresholdType"] = self.thresholdType!
            }
            if self.webHook != nil {
                map["WebHook"] = self.webHook!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlarmId"] as? String {
                self.alarmId = value
            }
            if let value = dict["AlarmName"] as? String {
                self.alarmName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExceedThreshold"] as? Bool {
                self.exceedThreshold = value
            }
            if let value = dict["NotifyChannels"] as? [String] {
                self.notifyChannels = value
            }
            if let value = dict["NotifyTarget"] as? String {
                self.notifyTarget = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["QuotaActionCode"] as? String {
                self.quotaActionCode = value
            }
            if let value = dict["QuotaDimensions"] as? [String: Any] {
                self.quotaDimensions = value
            }
            if let value = dict["QuotaUsage"] as? Double {
                self.quotaUsage = value
            }
            if let value = dict["QuotaValue"] as? Double {
                self.quotaValue = value
            }
            if let value = dict["Threshold"] as? Double {
                self.threshold = value
            }
            if let value = dict["ThresholdPercent"] as? Double {
                self.thresholdPercent = value
            }
            if let value = dict["ThresholdType"] as? String {
                self.thresholdType = value
            }
            if let value = dict["WebHook"] as? String {
                self.webHook = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var quotaAlarms: [ListQuotaAlarmsResponseBody.QuotaAlarms]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.quotaAlarms != nil {
            var tmp : [Any] = []
            for k in self.quotaAlarms! {
                tmp.append(k.toMap())
            }
            map["QuotaAlarms"] = tmp
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["QuotaAlarms"] as? [Any?] {
            var tmp : [ListQuotaAlarmsResponseBody.QuotaAlarms] = []
            for v in value {
                if v != nil {
                    var model = ListQuotaAlarmsResponseBody.QuotaAlarms()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.quotaAlarms = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListQuotaAlarmsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQuotaAlarmsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListQuotaAlarmsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListQuotaApplicationTemplatesRequest : Tea.TeaModel {
    public class Dimensions : Tea.TeaModel {
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
    public var dimensions: [ListQuotaApplicationTemplatesRequest.Dimensions]?

    public var id: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var productCode: String?

    public var quotaActionCode: String?

    public var quotaCategory: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dimensions != nil {
            var tmp : [Any] = []
            for k in self.dimensions! {
                tmp.append(k.toMap())
            }
            map["Dimensions"] = tmp
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.quotaActionCode != nil {
            map["QuotaActionCode"] = self.quotaActionCode!
        }
        if self.quotaCategory != nil {
            map["QuotaCategory"] = self.quotaCategory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Dimensions"] as? [Any?] {
            var tmp : [ListQuotaApplicationTemplatesRequest.Dimensions] = []
            for v in value {
                if v != nil {
                    var model = ListQuotaApplicationTemplatesRequest.Dimensions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dimensions = tmp
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["QuotaActionCode"] as? String {
            self.quotaActionCode = value
        }
        if let value = dict["QuotaCategory"] as? String {
            self.quotaCategory = value
        }
    }
}

public class ListQuotaApplicationTemplatesResponseBody : Tea.TeaModel {
    public class QuotaApplicationTemplates : Tea.TeaModel {
        public class Period : Tea.TeaModel {
            public var periodUnit: String?

            public var periodValue: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.periodUnit != nil {
                    map["PeriodUnit"] = self.periodUnit!
                }
                if self.periodValue != nil {
                    map["PeriodValue"] = self.periodValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PeriodUnit"] as? String {
                    self.periodUnit = value
                }
                if let value = dict["PeriodValue"] as? Int32 {
                    self.periodValue = value
                }
            }
        }
        public var applicableRange: [Double]?

        public var applicableType: String?

        public var desireValue: Double?

        public var dimensions: [String: Any]?

        public var effectiveTime: String?

        public var envLanguage: String?

        public var expireTime: String?

        public var id: String?

        public var noticeType: Int32?

        public var period: ListQuotaApplicationTemplatesResponseBody.QuotaApplicationTemplates.Period?

        public var productCode: String?

        public var quotaActionCode: String?

        public var quotaCategory: String?

        public var quotaDescription: String?

        public var quotaName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.period?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicableRange != nil {
                map["ApplicableRange"] = self.applicableRange!
            }
            if self.applicableType != nil {
                map["ApplicableType"] = self.applicableType!
            }
            if self.desireValue != nil {
                map["DesireValue"] = self.desireValue!
            }
            if self.dimensions != nil {
                map["Dimensions"] = self.dimensions!
            }
            if self.effectiveTime != nil {
                map["EffectiveTime"] = self.effectiveTime!
            }
            if self.envLanguage != nil {
                map["EnvLanguage"] = self.envLanguage!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.noticeType != nil {
                map["NoticeType"] = self.noticeType!
            }
            if self.period != nil {
                map["Period"] = self.period?.toMap()
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.quotaActionCode != nil {
                map["QuotaActionCode"] = self.quotaActionCode!
            }
            if self.quotaCategory != nil {
                map["QuotaCategory"] = self.quotaCategory!
            }
            if self.quotaDescription != nil {
                map["QuotaDescription"] = self.quotaDescription!
            }
            if self.quotaName != nil {
                map["QuotaName"] = self.quotaName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplicableRange"] as? [Double] {
                self.applicableRange = value
            }
            if let value = dict["ApplicableType"] as? String {
                self.applicableType = value
            }
            if let value = dict["DesireValue"] as? Double {
                self.desireValue = value
            }
            if let value = dict["Dimensions"] as? [String: Any] {
                self.dimensions = value
            }
            if let value = dict["EffectiveTime"] as? String {
                self.effectiveTime = value
            }
            if let value = dict["EnvLanguage"] as? String {
                self.envLanguage = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["NoticeType"] as? Int32 {
                self.noticeType = value
            }
            if let value = dict["Period"] as? [String: Any?] {
                var model = ListQuotaApplicationTemplatesResponseBody.QuotaApplicationTemplates.Period()
                model.fromMap(value)
                self.period = model
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["QuotaActionCode"] as? String {
                self.quotaActionCode = value
            }
            if let value = dict["QuotaCategory"] as? String {
                self.quotaCategory = value
            }
            if let value = dict["QuotaDescription"] as? String {
                self.quotaDescription = value
            }
            if let value = dict["QuotaName"] as? String {
                self.quotaName = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var quotaApplicationTemplates: [ListQuotaApplicationTemplatesResponseBody.QuotaApplicationTemplates]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.quotaApplicationTemplates != nil {
            var tmp : [Any] = []
            for k in self.quotaApplicationTemplates! {
                tmp.append(k.toMap())
            }
            map["QuotaApplicationTemplates"] = tmp
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["QuotaApplicationTemplates"] as? [Any?] {
            var tmp : [ListQuotaApplicationTemplatesResponseBody.QuotaApplicationTemplates] = []
            for v in value {
                if v != nil {
                    var model = ListQuotaApplicationTemplatesResponseBody.QuotaApplicationTemplates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.quotaApplicationTemplates = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListQuotaApplicationTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQuotaApplicationTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListQuotaApplicationTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListQuotaApplicationsRequest : Tea.TeaModel {
    public class Dimensions : Tea.TeaModel {
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
    public var dimensions: [ListQuotaApplicationsRequest.Dimensions]?

    public var keyWord: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var productCode: String?

    public var quotaActionCode: String?

    public var quotaCategory: String?

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
        if self.dimensions != nil {
            var tmp : [Any] = []
            for k in self.dimensions! {
                tmp.append(k.toMap())
            }
            map["Dimensions"] = tmp
        }
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.quotaActionCode != nil {
            map["QuotaActionCode"] = self.quotaActionCode!
        }
        if self.quotaCategory != nil {
            map["QuotaCategory"] = self.quotaCategory!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Dimensions"] as? [Any?] {
            var tmp : [ListQuotaApplicationsRequest.Dimensions] = []
            for v in value {
                if v != nil {
                    var model = ListQuotaApplicationsRequest.Dimensions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dimensions = tmp
        }
        if let value = dict["KeyWord"] as? String {
            self.keyWord = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["QuotaActionCode"] as? String {
            self.quotaActionCode = value
        }
        if let value = dict["QuotaCategory"] as? String {
            self.quotaCategory = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListQuotaApplicationsResponseBody : Tea.TeaModel {
    public class QuotaApplications : Tea.TeaModel {
        public class Period : Tea.TeaModel {
            public var periodUnit: String?

            public var periodValue: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.periodUnit != nil {
                    map["PeriodUnit"] = self.periodUnit!
                }
                if self.periodValue != nil {
                    map["PeriodValue"] = self.periodValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PeriodUnit"] as? String {
                    self.periodUnit = value
                }
                if let value = dict["PeriodValue"] as? Int64 {
                    self.periodValue = value
                }
            }
        }
        public var applicationId: String?

        public var applyTime: String?

        public var approveValue: Double?

        public var auditReason: String?

        public var comment: String?

        public var desireValue: Double?

        public var dimension: [String: Any]?

        public var effectiveTime: String?

        public var expireTime: String?

        public var noticeType: Int32?

        public var period: ListQuotaApplicationsResponseBody.QuotaApplications.Period?

        public var productCode: String?

        public var quotaActionCode: String?

        public var quotaArn: String?

        public var quotaCategory: String?

        public var quotaDescription: String?

        public var quotaName: String?

        public var quotaUnit: String?

        public var reason: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.period?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.applyTime != nil {
                map["ApplyTime"] = self.applyTime!
            }
            if self.approveValue != nil {
                map["ApproveValue"] = self.approveValue!
            }
            if self.auditReason != nil {
                map["AuditReason"] = self.auditReason!
            }
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.desireValue != nil {
                map["DesireValue"] = self.desireValue!
            }
            if self.dimension != nil {
                map["Dimension"] = self.dimension!
            }
            if self.effectiveTime != nil {
                map["EffectiveTime"] = self.effectiveTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.noticeType != nil {
                map["NoticeType"] = self.noticeType!
            }
            if self.period != nil {
                map["Period"] = self.period?.toMap()
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.quotaActionCode != nil {
                map["QuotaActionCode"] = self.quotaActionCode!
            }
            if self.quotaArn != nil {
                map["QuotaArn"] = self.quotaArn!
            }
            if self.quotaCategory != nil {
                map["QuotaCategory"] = self.quotaCategory!
            }
            if self.quotaDescription != nil {
                map["QuotaDescription"] = self.quotaDescription!
            }
            if self.quotaName != nil {
                map["QuotaName"] = self.quotaName!
            }
            if self.quotaUnit != nil {
                map["QuotaUnit"] = self.quotaUnit!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplicationId"] as? String {
                self.applicationId = value
            }
            if let value = dict["ApplyTime"] as? String {
                self.applyTime = value
            }
            if let value = dict["ApproveValue"] as? Double {
                self.approveValue = value
            }
            if let value = dict["AuditReason"] as? String {
                self.auditReason = value
            }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["DesireValue"] as? Double {
                self.desireValue = value
            }
            if let value = dict["Dimension"] as? [String: Any] {
                self.dimension = value
            }
            if let value = dict["EffectiveTime"] as? String {
                self.effectiveTime = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["NoticeType"] as? Int32 {
                self.noticeType = value
            }
            if let value = dict["Period"] as? [String: Any?] {
                var model = ListQuotaApplicationsResponseBody.QuotaApplications.Period()
                model.fromMap(value)
                self.period = model
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["QuotaActionCode"] as? String {
                self.quotaActionCode = value
            }
            if let value = dict["QuotaArn"] as? String {
                self.quotaArn = value
            }
            if let value = dict["QuotaCategory"] as? String {
                self.quotaCategory = value
            }
            if let value = dict["QuotaDescription"] as? String {
                self.quotaDescription = value
            }
            if let value = dict["QuotaName"] as? String {
                self.quotaName = value
            }
            if let value = dict["QuotaUnit"] as? String {
                self.quotaUnit = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var quotaApplications: [ListQuotaApplicationsResponseBody.QuotaApplications]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.quotaApplications != nil {
            var tmp : [Any] = []
            for k in self.quotaApplications! {
                tmp.append(k.toMap())
            }
            map["QuotaApplications"] = tmp
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["QuotaApplications"] as? [Any?] {
            var tmp : [ListQuotaApplicationsResponseBody.QuotaApplications] = []
            for v in value {
                if v != nil {
                    var model = ListQuotaApplicationsResponseBody.QuotaApplications()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.quotaApplications = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListQuotaApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQuotaApplicationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListQuotaApplicationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListQuotaApplicationsDetailForTemplateRequest : Tea.TeaModel {
    public var aliyunUid: String?

    public var batchQuotaApplicationId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var productCode: String?

    public var quotaActionCode: String?

    public var quotaCategory: String?

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
        if self.aliyunUid != nil {
            map["AliyunUid"] = self.aliyunUid!
        }
        if self.batchQuotaApplicationId != nil {
            map["BatchQuotaApplicationId"] = self.batchQuotaApplicationId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.quotaActionCode != nil {
            map["QuotaActionCode"] = self.quotaActionCode!
        }
        if self.quotaCategory != nil {
            map["QuotaCategory"] = self.quotaCategory!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunUid"] as? String {
            self.aliyunUid = value
        }
        if let value = dict["BatchQuotaApplicationId"] as? String {
            self.batchQuotaApplicationId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["QuotaActionCode"] as? String {
            self.quotaActionCode = value
        }
        if let value = dict["QuotaCategory"] as? String {
            self.quotaCategory = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListQuotaApplicationsDetailForTemplateResponseBody : Tea.TeaModel {
    public class QuotaApplications : Tea.TeaModel {
        public class Period : Tea.TeaModel {
            public var periodUnit: String?

            public var periodValue: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.periodUnit != nil {
                    map["PeriodUnit"] = self.periodUnit!
                }
                if self.periodValue != nil {
                    map["PeriodValue"] = self.periodValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PeriodUnit"] as? String {
                    self.periodUnit = value
                }
                if let value = dict["PeriodValue"] as? Int32 {
                    self.periodValue = value
                }
            }
        }
        public var aliyunUid: String?

        public var applicationId: String?

        public var applyTime: String?

        public var approveValue: Double?

        public var auditReason: String?

        public var batchQuotaApplicationId: String?

        public var desireValue: Double?

        public var effectiveTime: String?

        public var envLanguage: String?

        public var expireTime: String?

        public var noticeType: Int32?

        public var period: ListQuotaApplicationsDetailForTemplateResponseBody.QuotaApplications.Period?

        public var productCode: String?

        public var quotaActionCode: String?

        public var quotaArn: String?

        public var quotaCategory: String?

        public var quotaDescription: String?

        public var quotaDimension: [String: String]?

        public var quotaName: String?

        public var quotaUnit: String?

        public var reason: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.period?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunUid != nil {
                map["AliyunUid"] = self.aliyunUid!
            }
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.applyTime != nil {
                map["ApplyTime"] = self.applyTime!
            }
            if self.approveValue != nil {
                map["ApproveValue"] = self.approveValue!
            }
            if self.auditReason != nil {
                map["AuditReason"] = self.auditReason!
            }
            if self.batchQuotaApplicationId != nil {
                map["BatchQuotaApplicationId"] = self.batchQuotaApplicationId!
            }
            if self.desireValue != nil {
                map["DesireValue"] = self.desireValue!
            }
            if self.effectiveTime != nil {
                map["EffectiveTime"] = self.effectiveTime!
            }
            if self.envLanguage != nil {
                map["EnvLanguage"] = self.envLanguage!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.noticeType != nil {
                map["NoticeType"] = self.noticeType!
            }
            if self.period != nil {
                map["Period"] = self.period?.toMap()
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.quotaActionCode != nil {
                map["QuotaActionCode"] = self.quotaActionCode!
            }
            if self.quotaArn != nil {
                map["QuotaArn"] = self.quotaArn!
            }
            if self.quotaCategory != nil {
                map["QuotaCategory"] = self.quotaCategory!
            }
            if self.quotaDescription != nil {
                map["QuotaDescription"] = self.quotaDescription!
            }
            if self.quotaDimension != nil {
                map["QuotaDimension"] = self.quotaDimension!
            }
            if self.quotaName != nil {
                map["QuotaName"] = self.quotaName!
            }
            if self.quotaUnit != nil {
                map["QuotaUnit"] = self.quotaUnit!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliyunUid"] as? String {
                self.aliyunUid = value
            }
            if let value = dict["ApplicationId"] as? String {
                self.applicationId = value
            }
            if let value = dict["ApplyTime"] as? String {
                self.applyTime = value
            }
            if let value = dict["ApproveValue"] as? Double {
                self.approveValue = value
            }
            if let value = dict["AuditReason"] as? String {
                self.auditReason = value
            }
            if let value = dict["BatchQuotaApplicationId"] as? String {
                self.batchQuotaApplicationId = value
            }
            if let value = dict["DesireValue"] as? Double {
                self.desireValue = value
            }
            if let value = dict["EffectiveTime"] as? String {
                self.effectiveTime = value
            }
            if let value = dict["EnvLanguage"] as? String {
                self.envLanguage = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["NoticeType"] as? Int32 {
                self.noticeType = value
            }
            if let value = dict["Period"] as? [String: Any?] {
                var model = ListQuotaApplicationsDetailForTemplateResponseBody.QuotaApplications.Period()
                model.fromMap(value)
                self.period = model
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["QuotaActionCode"] as? String {
                self.quotaActionCode = value
            }
            if let value = dict["QuotaArn"] as? String {
                self.quotaArn = value
            }
            if let value = dict["QuotaCategory"] as? String {
                self.quotaCategory = value
            }
            if let value = dict["QuotaDescription"] as? String {
                self.quotaDescription = value
            }
            if let value = dict["QuotaDimension"] as? [String: String] {
                self.quotaDimension = value
            }
            if let value = dict["QuotaName"] as? String {
                self.quotaName = value
            }
            if let value = dict["QuotaUnit"] as? String {
                self.quotaUnit = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var quotaApplications: [ListQuotaApplicationsDetailForTemplateResponseBody.QuotaApplications]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.quotaApplications != nil {
            var tmp : [Any] = []
            for k in self.quotaApplications! {
                tmp.append(k.toMap())
            }
            map["QuotaApplications"] = tmp
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["QuotaApplications"] as? [Any?] {
            var tmp : [ListQuotaApplicationsDetailForTemplateResponseBody.QuotaApplications] = []
            for v in value {
                if v != nil {
                    var model = ListQuotaApplicationsDetailForTemplateResponseBody.QuotaApplications()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.quotaApplications = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListQuotaApplicationsDetailForTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQuotaApplicationsDetailForTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListQuotaApplicationsDetailForTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListQuotaApplicationsForTemplateRequest : Tea.TeaModel {
    public var applyEndTime: String?

    public var applyStartTime: String?

    public var batchQuotaApplicationId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var productCode: String?

    public var quotaActionCode: String?

    public var quotaCategory: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyEndTime != nil {
            map["ApplyEndTime"] = self.applyEndTime!
        }
        if self.applyStartTime != nil {
            map["ApplyStartTime"] = self.applyStartTime!
        }
        if self.batchQuotaApplicationId != nil {
            map["BatchQuotaApplicationId"] = self.batchQuotaApplicationId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.quotaActionCode != nil {
            map["QuotaActionCode"] = self.quotaActionCode!
        }
        if self.quotaCategory != nil {
            map["QuotaCategory"] = self.quotaCategory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplyEndTime"] as? String {
            self.applyEndTime = value
        }
        if let value = dict["ApplyStartTime"] as? String {
            self.applyStartTime = value
        }
        if let value = dict["BatchQuotaApplicationId"] as? String {
            self.batchQuotaApplicationId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["QuotaActionCode"] as? String {
            self.quotaActionCode = value
        }
        if let value = dict["QuotaCategory"] as? String {
            self.quotaCategory = value
        }
    }
}

public class ListQuotaApplicationsForTemplateResponseBody : Tea.TeaModel {
    public class QuotaBatchApplications : Tea.TeaModel {
        public class AuditStatusVos : Tea.TeaModel {
            public var count: Int32?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int32 {
                    self.count = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var aliyunUids: [String]?

        public var applyTime: String?

        public var auditStatusVos: [ListQuotaApplicationsForTemplateResponseBody.QuotaBatchApplications.AuditStatusVos]?

        public var batchQuotaApplicationId: String?

        public var desireValue: Double?

        public var dimensions: [String: Any]?

        public var effectiveTime: String?

        public var expireTime: String?

        public var productCode: String?

        public var quotaActionCode: String?

        public var quotaCategory: String?

        public var reason: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunUids != nil {
                map["AliyunUids"] = self.aliyunUids!
            }
            if self.applyTime != nil {
                map["ApplyTime"] = self.applyTime!
            }
            if self.auditStatusVos != nil {
                var tmp : [Any] = []
                for k in self.auditStatusVos! {
                    tmp.append(k.toMap())
                }
                map["AuditStatusVos"] = tmp
            }
            if self.batchQuotaApplicationId != nil {
                map["BatchQuotaApplicationId"] = self.batchQuotaApplicationId!
            }
            if self.desireValue != nil {
                map["DesireValue"] = self.desireValue!
            }
            if self.dimensions != nil {
                map["Dimensions"] = self.dimensions!
            }
            if self.effectiveTime != nil {
                map["EffectiveTime"] = self.effectiveTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.quotaActionCode != nil {
                map["QuotaActionCode"] = self.quotaActionCode!
            }
            if self.quotaCategory != nil {
                map["QuotaCategory"] = self.quotaCategory!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliyunUids"] as? [String] {
                self.aliyunUids = value
            }
            if let value = dict["ApplyTime"] as? String {
                self.applyTime = value
            }
            if let value = dict["AuditStatusVos"] as? [Any?] {
                var tmp : [ListQuotaApplicationsForTemplateResponseBody.QuotaBatchApplications.AuditStatusVos] = []
                for v in value {
                    if v != nil {
                        var model = ListQuotaApplicationsForTemplateResponseBody.QuotaBatchApplications.AuditStatusVos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.auditStatusVos = tmp
            }
            if let value = dict["BatchQuotaApplicationId"] as? String {
                self.batchQuotaApplicationId = value
            }
            if let value = dict["DesireValue"] as? Double {
                self.desireValue = value
            }
            if let value = dict["Dimensions"] as? [String: Any] {
                self.dimensions = value
            }
            if let value = dict["EffectiveTime"] as? String {
                self.effectiveTime = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["QuotaActionCode"] as? String {
                self.quotaActionCode = value
            }
            if let value = dict["QuotaCategory"] as? String {
                self.quotaCategory = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var quotaBatchApplications: [ListQuotaApplicationsForTemplateResponseBody.QuotaBatchApplications]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.quotaBatchApplications != nil {
            var tmp : [Any] = []
            for k in self.quotaBatchApplications! {
                tmp.append(k.toMap())
            }
            map["QuotaBatchApplications"] = tmp
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["QuotaBatchApplications"] as? [Any?] {
            var tmp : [ListQuotaApplicationsForTemplateResponseBody.QuotaBatchApplications] = []
            for v in value {
                if v != nil {
                    var model = ListQuotaApplicationsForTemplateResponseBody.QuotaBatchApplications()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.quotaBatchApplications = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListQuotaApplicationsForTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQuotaApplicationsForTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListQuotaApplicationsForTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyQuotaTemplateServiceStatusRequest : Tea.TeaModel {
    public var serviceStatus: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceStatus != nil {
            map["ServiceStatus"] = self.serviceStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceStatus"] as? Int32 {
            self.serviceStatus = value
        }
    }
}

public class ModifyQuotaTemplateServiceStatusResponseBody : Tea.TeaModel {
    public class TemplateServiceStatus : Tea.TeaModel {
        public var resourceDirectoryId: String?

        public var serviceStatus: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceDirectoryId != nil {
                map["ResourceDirectoryId"] = self.resourceDirectoryId!
            }
            if self.serviceStatus != nil {
                map["ServiceStatus"] = self.serviceStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceDirectoryId"] as? String {
                self.resourceDirectoryId = value
            }
            if let value = dict["ServiceStatus"] as? Int32 {
                self.serviceStatus = value
            }
        }
    }
    public var requestId: String?

    public var templateServiceStatus: ModifyQuotaTemplateServiceStatusResponseBody.TemplateServiceStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.templateServiceStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateServiceStatus != nil {
            map["TemplateServiceStatus"] = self.templateServiceStatus?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TemplateServiceStatus"] as? [String: Any?] {
            var model = ModifyQuotaTemplateServiceStatusResponseBody.TemplateServiceStatus()
            model.fromMap(value)
            self.templateServiceStatus = model
        }
    }
}

public class ModifyQuotaTemplateServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyQuotaTemplateServiceStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyQuotaTemplateServiceStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyTemplateQuotaItemRequest : Tea.TeaModel {
    public class Dimensions : Tea.TeaModel {
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
    public var desireValue: Double?

    public var dimensions: [ModifyTemplateQuotaItemRequest.Dimensions]?

    public var effectiveTime: String?

    public var envLanguage: String?

    public var expireTime: String?

    public var id: String?

    public var noticeType: Int64?

    public var productCode: String?

    public var quotaActionCode: String?

    public var quotaCategory: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.desireValue != nil {
            map["DesireValue"] = self.desireValue!
        }
        if self.dimensions != nil {
            var tmp : [Any] = []
            for k in self.dimensions! {
                tmp.append(k.toMap())
            }
            map["Dimensions"] = tmp
        }
        if self.effectiveTime != nil {
            map["EffectiveTime"] = self.effectiveTime!
        }
        if self.envLanguage != nil {
            map["EnvLanguage"] = self.envLanguage!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.noticeType != nil {
            map["NoticeType"] = self.noticeType!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.quotaActionCode != nil {
            map["QuotaActionCode"] = self.quotaActionCode!
        }
        if self.quotaCategory != nil {
            map["QuotaCategory"] = self.quotaCategory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DesireValue"] as? Double {
            self.desireValue = value
        }
        if let value = dict["Dimensions"] as? [Any?] {
            var tmp : [ModifyTemplateQuotaItemRequest.Dimensions] = []
            for v in value {
                if v != nil {
                    var model = ModifyTemplateQuotaItemRequest.Dimensions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dimensions = tmp
        }
        if let value = dict["EffectiveTime"] as? String {
            self.effectiveTime = value
        }
        if let value = dict["EnvLanguage"] as? String {
            self.envLanguage = value
        }
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["NoticeType"] as? Int64 {
            self.noticeType = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["QuotaActionCode"] as? String {
            self.quotaActionCode = value
        }
        if let value = dict["QuotaCategory"] as? String {
            self.quotaCategory = value
        }
    }
}

public class ModifyTemplateQuotaItemResponseBody : Tea.TeaModel {
    public var id: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyTemplateQuotaItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTemplateQuotaItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyTemplateQuotaItemResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemindQuotaApplicationApprovalRequest : Tea.TeaModel {
    public var applicationId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationId"] as? String {
            self.applicationId = value
        }
    }
}

public class RemindQuotaApplicationApprovalResponseBody : Tea.TeaModel {
    public var allowRetry: Bool?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: String?

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
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module!
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
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? String {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RemindQuotaApplicationApprovalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemindQuotaApplicationApprovalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemindQuotaApplicationApprovalResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateQuotaAlarmRequest : Tea.TeaModel {
    public var alarmId: String?

    public var alarmName: String?

    public var threshold: Double?

    public var thresholdPercent: Double?

    public var thresholdType: String?

    public var webHook: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alarmId != nil {
            map["AlarmId"] = self.alarmId!
        }
        if self.alarmName != nil {
            map["AlarmName"] = self.alarmName!
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        if self.thresholdPercent != nil {
            map["ThresholdPercent"] = self.thresholdPercent!
        }
        if self.thresholdType != nil {
            map["ThresholdType"] = self.thresholdType!
        }
        if self.webHook != nil {
            map["WebHook"] = self.webHook!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmId"] as? String {
            self.alarmId = value
        }
        if let value = dict["AlarmName"] as? String {
            self.alarmName = value
        }
        if let value = dict["Threshold"] as? Double {
            self.threshold = value
        }
        if let value = dict["ThresholdPercent"] as? Double {
            self.thresholdPercent = value
        }
        if let value = dict["ThresholdType"] as? String {
            self.thresholdType = value
        }
        if let value = dict["WebHook"] as? String {
            self.webHook = value
        }
    }
}

public class UpdateQuotaAlarmResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class UpdateQuotaAlarmResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateQuotaAlarmResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateQuotaAlarmResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
