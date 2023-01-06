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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var alarmName: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmName") {
            self.alarmName = dict["AlarmName"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("QuotaActionCode") {
            self.quotaActionCode = dict["QuotaActionCode"] as! String
        }
        if dict.keys.contains("QuotaDimensions") {
            self.quotaDimensions = dict["QuotaDimensions"] as! [CreateQuotaAlarmRequest.QuotaDimensions]
        }
        if dict.keys.contains("Threshold") {
            self.threshold = dict["Threshold"] as! Double
        }
        if dict.keys.contains("ThresholdPercent") {
            self.thresholdPercent = dict["ThresholdPercent"] as! Double
        }
        if dict.keys.contains("ThresholdType") {
            self.thresholdType = dict["ThresholdType"] as! String
        }
        if dict.keys.contains("WebHook") {
            self.webHook = dict["WebHook"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmId") {
            self.alarmId = dict["AlarmId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
            var model = CreateQuotaAlarmResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditMode") {
            self.auditMode = dict["AuditMode"] as! String
        }
        if dict.keys.contains("DesireValue") {
            self.desireValue = dict["DesireValue"] as! Double
        }
        if dict.keys.contains("Dimensions") {
            self.dimensions = dict["Dimensions"] as! [CreateQuotaApplicationRequest.Dimensions]
        }
        if dict.keys.contains("EffectiveTime") {
            self.effectiveTime = dict["EffectiveTime"] as! String
        }
        if dict.keys.contains("EnvLanguage") {
            self.envLanguage = dict["EnvLanguage"] as! String
        }
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("NoticeType") {
            self.noticeType = dict["NoticeType"] as! Int32
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("QuotaActionCode") {
            self.quotaActionCode = dict["QuotaActionCode"] as! String
        }
        if dict.keys.contains("QuotaCategory") {
            self.quotaCategory = dict["QuotaCategory"] as! String
        }
        if dict.keys.contains("Reason") {
            self.reason = dict["Reason"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("ApplyTime") {
            self.applyTime = dict["ApplyTime"] as! String
        }
        if dict.keys.contains("ApproveValue") {
            self.approveValue = dict["ApproveValue"] as! Double
        }
        if dict.keys.contains("AuditReason") {
            self.auditReason = dict["AuditReason"] as! String
        }
        if dict.keys.contains("DesireValue") {
            self.desireValue = dict["DesireValue"] as! Int32
        }
        if dict.keys.contains("Dimension") {
            self.dimension = dict["Dimension"] as! [String: Any]
        }
        if dict.keys.contains("EffectiveTime") {
            self.effectiveTime = dict["EffectiveTime"] as! String
        }
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("NoticeType") {
            self.noticeType = dict["NoticeType"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("QuotaActionCode") {
            self.quotaActionCode = dict["QuotaActionCode"] as! String
        }
        if dict.keys.contains("QuotaArn") {
            self.quotaArn = dict["QuotaArn"] as! String
        }
        if dict.keys.contains("QuotaDescription") {
            self.quotaDescription = dict["QuotaDescription"] as! String
        }
        if dict.keys.contains("QuotaName") {
            self.quotaName = dict["QuotaName"] as! String
        }
        if dict.keys.contains("QuotaUnit") {
            self.quotaUnit = dict["QuotaUnit"] as! String
        }
        if dict.keys.contains("Reason") {
            self.reason = dict["Reason"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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
            var model = CreateQuotaApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesireValue") {
            self.desireValue = dict["DesireValue"] as! Double
        }
        if dict.keys.contains("Dimensions") {
            self.dimensions = dict["Dimensions"] as! [CreateTemplateQuotaItemRequest.Dimensions]
        }
        if dict.keys.contains("EffectiveTime") {
            self.effectiveTime = dict["EffectiveTime"] as! String
        }
        if dict.keys.contains("EnvLanguage") {
            self.envLanguage = dict["EnvLanguage"] as! String
        }
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("NoticeType") {
            self.noticeType = dict["NoticeType"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("QuotaActionCode") {
            self.quotaActionCode = dict["QuotaActionCode"] as! String
        }
        if dict.keys.contains("QuotaCategory") {
            self.quotaCategory = dict["QuotaCategory"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
            var model = CreateTemplateQuotaItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmId") {
            self.alarmId = dict["AlarmId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
            var model = DeleteQuotaAlarmResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
            var model = DeleteTemplateQuotaItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dimensions") {
            self.dimensions = dict["Dimensions"] as! [GetProductQuotaRequest.Dimensions]
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("QuotaActionCode") {
            self.quotaActionCode = dict["QuotaActionCode"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PeriodUnit") {
                    self.periodUnit = dict["PeriodUnit"] as! String
                }
                if dict.keys.contains("PeriodValue") {
                    self.periodValue = dict["PeriodValue"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Quota") {
                    self.quota = dict["Quota"] as! String
                }
                if dict.keys.contains("QuotaUnit") {
                    self.quotaUnit = dict["QuotaUnit"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Usage") {
                    self.usage = dict["Usage"] as! String
                }
            }
        }
        public var adjustable: Bool?

        public var applicableRange: [Double]?

        public var applicableType: String?

        public var consumable: Bool?

        public var dimensions: [String: Any]?

        public var effectiveTime: String?

        public var expireTime: String?

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
            if self.adjustable != nil {
                map["Adjustable"] = self.adjustable!
            }
            if self.applicableRange != nil {
                map["ApplicableRange"] = self.applicableRange!
            }
            if self.applicableType != nil {
                map["ApplicableType"] = self.applicableType!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Adjustable") {
                self.adjustable = dict["Adjustable"] as! Bool
            }
            if dict.keys.contains("ApplicableRange") {
                self.applicableRange = dict["ApplicableRange"] as! [Double]
            }
            if dict.keys.contains("ApplicableType") {
                self.applicableType = dict["ApplicableType"] as! String
            }
            if dict.keys.contains("Consumable") {
                self.consumable = dict["Consumable"] as! Bool
            }
            if dict.keys.contains("Dimensions") {
                self.dimensions = dict["Dimensions"] as! [String: Any]
            }
            if dict.keys.contains("EffectiveTime") {
                self.effectiveTime = dict["EffectiveTime"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("Period") {
                var model = GetProductQuotaResponseBody.Quota.Period()
                model.fromMap(dict["Period"] as! [String: Any])
                self.period = model
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("QuotaActionCode") {
                self.quotaActionCode = dict["QuotaActionCode"] as! String
            }
            if dict.keys.contains("QuotaArn") {
                self.quotaArn = dict["QuotaArn"] as! String
            }
            if dict.keys.contains("QuotaCategory") {
                self.quotaCategory = dict["QuotaCategory"] as! String
            }
            if dict.keys.contains("QuotaDescription") {
                self.quotaDescription = dict["QuotaDescription"] as! String
            }
            if dict.keys.contains("QuotaItems") {
                self.quotaItems = dict["QuotaItems"] as! [GetProductQuotaResponseBody.Quota.QuotaItems]
            }
            if dict.keys.contains("QuotaName") {
                self.quotaName = dict["QuotaName"] as! String
            }
            if dict.keys.contains("QuotaType") {
                self.quotaType = dict["QuotaType"] as! String
            }
            if dict.keys.contains("QuotaUnit") {
                self.quotaUnit = dict["QuotaUnit"] as! String
            }
            if dict.keys.contains("SupportedRange") {
                self.supportedRange = dict["SupportedRange"] as! [Double]
            }
            if dict.keys.contains("TotalQuota") {
                self.totalQuota = dict["TotalQuota"] as! Double
            }
            if dict.keys.contains("TotalUsage") {
                self.totalUsage = dict["TotalUsage"] as! Double
            }
            if dict.keys.contains("UnadjustableDetail") {
                self.unadjustableDetail = dict["UnadjustableDetail"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Quota") {
            var model = GetProductQuotaResponseBody.Quota()
            model.fromMap(dict["Quota"] as! [String: Any])
            self.quota = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
            var model = GetProductQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DependentDimensions") {
            self.dependentDimensions = dict["DependentDimensions"] as! [GetProductQuotaDimensionRequest.DependentDimensions]
        }
        if dict.keys.contains("DimensionKey") {
            self.dimensionKey = dict["DimensionKey"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DependentDimensions") {
                self.dependentDimensions = dict["DependentDimensions"] as! [String]
            }
            if dict.keys.contains("DimensionKey") {
                self.dimensionKey = dict["DimensionKey"] as! String
            }
            if dict.keys.contains("DimensionValueDetail") {
                self.dimensionValueDetail = dict["DimensionValueDetail"] as! [GetProductQuotaDimensionResponseBody.QuotaDimension.DimensionValueDetail]
            }
            if dict.keys.contains("DimensionValues") {
                self.dimensionValues = dict["DimensionValues"] as! [String]
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QuotaDimension") {
            var model = GetProductQuotaDimensionResponseBody.QuotaDimension()
            model.fromMap(dict["QuotaDimension"] as! [String: Any])
            self.quotaDimension = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
            var model = GetProductQuotaDimensionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmId") {
            self.alarmId = dict["AlarmId"] as! String
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

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlarmId") {
                self.alarmId = dict["AlarmId"] as! String
            }
            if dict.keys.contains("AlarmName") {
                self.alarmName = dict["AlarmName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("NotifyChannels") {
                self.notifyChannels = dict["NotifyChannels"] as! [String]
            }
            if dict.keys.contains("NotifyTarget") {
                self.notifyTarget = dict["NotifyTarget"] as! String
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("QuotaActionCode") {
                self.quotaActionCode = dict["QuotaActionCode"] as! String
            }
            if dict.keys.contains("QuotaDimension") {
                self.quotaDimension = dict["QuotaDimension"] as! [String: Any]
            }
            if dict.keys.contains("QuotaUsage") {
                self.quotaUsage = dict["QuotaUsage"] as! Double
            }
            if dict.keys.contains("QuotaValue") {
                self.quotaValue = dict["QuotaValue"] as! Double
            }
            if dict.keys.contains("Threshold") {
                self.threshold = dict["Threshold"] as! Double
            }
            if dict.keys.contains("ThresholdPercent") {
                self.thresholdPercent = dict["ThresholdPercent"] as! Double
            }
            if dict.keys.contains("ThresholdType") {
                self.thresholdType = dict["ThresholdType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QuotaAlarm") {
            var model = GetQuotaAlarmResponseBody.QuotaAlarm()
            model.fromMap(dict["QuotaAlarm"] as! [String: Any])
            self.quotaAlarm = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
            var model = GetQuotaAlarmResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("ApplyTime") {
                self.applyTime = dict["ApplyTime"] as! String
            }
            if dict.keys.contains("ApproveValue") {
                self.approveValue = dict["ApproveValue"] as! Double
            }
            if dict.keys.contains("AuditReason") {
                self.auditReason = dict["AuditReason"] as! String
            }
            if dict.keys.contains("DesireValue") {
                self.desireValue = dict["DesireValue"] as! Int32
            }
            if dict.keys.contains("Dimension") {
                self.dimension = dict["Dimension"] as! [String: Any]
            }
            if dict.keys.contains("EffectiveTime") {
                self.effectiveTime = dict["EffectiveTime"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("NoticeType") {
                self.noticeType = dict["NoticeType"] as! Int64
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("QuotaActionCode") {
                self.quotaActionCode = dict["QuotaActionCode"] as! String
            }
            if dict.keys.contains("QuotaArn") {
                self.quotaArn = dict["QuotaArn"] as! String
            }
            if dict.keys.contains("QuotaDescription") {
                self.quotaDescription = dict["QuotaDescription"] as! String
            }
            if dict.keys.contains("QuotaName") {
                self.quotaName = dict["QuotaName"] as! String
            }
            if dict.keys.contains("QuotaUnit") {
                self.quotaUnit = dict["QuotaUnit"] as! String
            }
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QuotaApplication") {
            var model = GetQuotaApplicationResponseBody.QuotaApplication()
            model.fromMap(dict["QuotaApplication"] as! [String: Any])
            self.quotaApplication = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
            var model = GetQuotaApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceDirectoryId") {
            self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceDirectoryId") {
                self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
            }
            if dict.keys.contains("ServiceStatus") {
                self.serviceStatus = dict["ServiceStatus"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateServiceStatus") {
            var model = GetQuotaTemplateServiceStatusResponseBody.TemplateServiceStatus()
            model.fromMap(dict["TemplateServiceStatus"] as! [String: Any])
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
            var model = GetQuotaTemplateServiceStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAlarmHistoriesRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlarmName") {
                self.alarmName = dict["AlarmName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("NotifyChannels") {
                self.notifyChannels = dict["NotifyChannels"] as! [String]
            }
            if dict.keys.contains("NotifyTarget") {
                self.notifyTarget = dict["NotifyTarget"] as! String
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("QuotaActionCode") {
                self.quotaActionCode = dict["QuotaActionCode"] as! String
            }
            if dict.keys.contains("QuotaUsage") {
                self.quotaUsage = dict["QuotaUsage"] as! Double
            }
            if dict.keys.contains("Threshold") {
                self.threshold = dict["Threshold"] as! Double
            }
            if dict.keys.contains("ThresholdPercent") {
                self.thresholdPercent = dict["ThresholdPercent"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmHistories") {
            self.alarmHistories = dict["AlarmHistories"] as! [ListAlarmHistoriesResponseBody.AlarmHistories]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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
            var model = ListAlarmHistoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("QuotaActionCode") {
            self.quotaActionCode = dict["QuotaActionCode"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DependentDimension") {
                    self.dependentDimension = dict["DependentDimension"] as! [String]
                }
                if dict.keys.contains("DimensionKey") {
                    self.dimensionKey = dict["DimensionKey"] as! String
                }
                if dict.keys.contains("DimensionValues") {
                    self.dimensionValues = dict["DimensionValues"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Dimensions") {
                self.dimensions = dict["Dimensions"] as! [ListDependentQuotasResponseBody.Quotas.Dimensions]
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("QuotaActionCode") {
                self.quotaActionCode = dict["QuotaActionCode"] as! String
            }
            if dict.keys.contains("Scale") {
                self.scale = dict["Scale"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Quotas") {
            self.quotas = dict["Quotas"] as! [ListDependentQuotasResponseBody.Quotas]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
            var model = ListDependentQuotasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DimensionKeys") {
                self.dimensionKeys = dict["DimensionKeys"] as! [String]
            }
            if dict.keys.contains("GroupCode") {
                self.groupCode = dict["GroupCode"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DimensionGroups") {
            self.dimensionGroups = dict["DimensionGroups"] as! [ListProductDimensionGroupsResponseBody.DimensionGroups]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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
            var model = ListProductDimensionGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("QuotaCategory") {
            self.quotaCategory = dict["QuotaCategory"] as! String
        }
    }
}

public class ListProductQuotaDimensionsResponseBody : Tea.TeaModel {
    public class QuotaDimensions : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DependentDimensions") {
                self.dependentDimensions = dict["DependentDimensions"] as! [String]
            }
            if dict.keys.contains("DimensionKey") {
                self.dimensionKey = dict["DimensionKey"] as! String
            }
            if dict.keys.contains("DimensionValueDetail") {
                self.dimensionValueDetail = dict["DimensionValueDetail"] as! [ListProductQuotaDimensionsResponseBody.QuotaDimensions.DimensionValueDetail]
            }
            if dict.keys.contains("DimensionValues") {
                self.dimensionValues = dict["DimensionValues"] as! [String]
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Requisite") {
                self.requisite = dict["Requisite"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("QuotaDimensions") {
            self.quotaDimensions = dict["QuotaDimensions"] as! [ListProductQuotaDimensionsResponseBody.QuotaDimensions]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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
            var model = ListProductQuotaDimensionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dimensions") {
            self.dimensions = dict["Dimensions"] as! [ListProductQuotasRequest.Dimensions]
        }
        if dict.keys.contains("GroupCode") {
            self.groupCode = dict["GroupCode"] as! String
        }
        if dict.keys.contains("KeyWord") {
            self.keyWord = dict["KeyWord"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("QuotaActionCode") {
            self.quotaActionCode = dict["QuotaActionCode"] as! String
        }
        if dict.keys.contains("QuotaCategory") {
            self.quotaCategory = dict["QuotaCategory"] as! String
        }
        if dict.keys.contains("SortField") {
            self.sortField = dict["SortField"] as! String
        }
        if dict.keys.contains("SortOrder") {
            self.sortOrder = dict["SortOrder"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PeriodUnit") {
                    self.periodUnit = dict["PeriodUnit"] as! String
                }
                if dict.keys.contains("PeriodValue") {
                    self.periodValue = dict["PeriodValue"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Quota") {
                    self.quota = dict["Quota"] as! String
                }
                if dict.keys.contains("QuotaUnit") {
                    self.quotaUnit = dict["QuotaUnit"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Usage") {
                    self.usage = dict["Usage"] as! String
                }
            }
        }
        public var adjustable: Bool?

        public var applicableRange: [Double]?

        public var applicableType: String?

        public var consumable: Bool?

        public var dimensions: [String: Any]?

        public var effectiveTime: String?

        public var expireTime: String?

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
            if self.adjustable != nil {
                map["Adjustable"] = self.adjustable!
            }
            if self.applicableRange != nil {
                map["ApplicableRange"] = self.applicableRange!
            }
            if self.applicableType != nil {
                map["ApplicableType"] = self.applicableType!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Adjustable") {
                self.adjustable = dict["Adjustable"] as! Bool
            }
            if dict.keys.contains("ApplicableRange") {
                self.applicableRange = dict["ApplicableRange"] as! [Double]
            }
            if dict.keys.contains("ApplicableType") {
                self.applicableType = dict["ApplicableType"] as! String
            }
            if dict.keys.contains("Consumable") {
                self.consumable = dict["Consumable"] as! Bool
            }
            if dict.keys.contains("Dimensions") {
                self.dimensions = dict["Dimensions"] as! [String: Any]
            }
            if dict.keys.contains("EffectiveTime") {
                self.effectiveTime = dict["EffectiveTime"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("Period") {
                var model = ListProductQuotasResponseBody.Quotas.Period()
                model.fromMap(dict["Period"] as! [String: Any])
                self.period = model
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("QuotaActionCode") {
                self.quotaActionCode = dict["QuotaActionCode"] as! String
            }
            if dict.keys.contains("QuotaArn") {
                self.quotaArn = dict["QuotaArn"] as! String
            }
            if dict.keys.contains("QuotaCategory") {
                self.quotaCategory = dict["QuotaCategory"] as! String
            }
            if dict.keys.contains("QuotaDescription") {
                self.quotaDescription = dict["QuotaDescription"] as! String
            }
            if dict.keys.contains("QuotaItems") {
                self.quotaItems = dict["QuotaItems"] as! [ListProductQuotasResponseBody.Quotas.QuotaItems]
            }
            if dict.keys.contains("QuotaName") {
                self.quotaName = dict["QuotaName"] as! String
            }
            if dict.keys.contains("QuotaType") {
                self.quotaType = dict["QuotaType"] as! String
            }
            if dict.keys.contains("QuotaUnit") {
                self.quotaUnit = dict["QuotaUnit"] as! String
            }
            if dict.keys.contains("SupportedRange") {
                self.supportedRange = dict["SupportedRange"] as! [Double]
            }
            if dict.keys.contains("TotalQuota") {
                self.totalQuota = dict["TotalQuota"] as! Double
            }
            if dict.keys.contains("TotalUsage") {
                self.totalUsage = dict["TotalUsage"] as! Double
            }
            if dict.keys.contains("UnadjustableDetail") {
                self.unadjustableDetail = dict["UnadjustableDetail"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Quotas") {
            self.quotas = dict["Quotas"] as! [ListProductQuotasResponseBody.Quotas]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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
            var model = ListProductQuotasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommonQuotaSupport") {
                self.commonQuotaSupport = dict["CommonQuotaSupport"] as! String
            }
            if dict.keys.contains("Dynamic") {
                self.dynamic_ = dict["Dynamic"] as! Bool
            }
            if dict.keys.contains("FlowControlSupport") {
                self.flowControlSupport = dict["FlowControlSupport"] as! String
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("ProductName") {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("ProductNameEn") {
                self.productNameEn = dict["ProductNameEn"] as! String
            }
            if dict.keys.contains("SecondCategoryId") {
                self.secondCategoryId = dict["SecondCategoryId"] as! Int64
            }
            if dict.keys.contains("SecondCategoryName") {
                self.secondCategoryName = dict["SecondCategoryName"] as! String
            }
            if dict.keys.contains("SecondCategoryNameEn") {
                self.secondCategoryNameEn = dict["SecondCategoryNameEn"] as! String
            }
            if dict.keys.contains("WhiteListLabelQuotaSupport") {
                self.whiteListLabelQuotaSupport = dict["WhiteListLabelQuotaSupport"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ProductInfo") {
            self.productInfo = dict["ProductInfo"] as! [ListProductsResponseBody.ProductInfo]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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
            var model = ListProductsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmName") {
            self.alarmName = dict["AlarmName"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("QuotaActionCode") {
            self.quotaActionCode = dict["QuotaActionCode"] as! String
        }
        if dict.keys.contains("QuotaDimensions") {
            self.quotaDimensions = dict["QuotaDimensions"] as! [ListQuotaAlarmsRequest.QuotaDimensions]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlarmId") {
                self.alarmId = dict["AlarmId"] as! String
            }
            if dict.keys.contains("AlarmName") {
                self.alarmName = dict["AlarmName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExceedThreshold") {
                self.exceedThreshold = dict["ExceedThreshold"] as! Bool
            }
            if dict.keys.contains("NotifyChannels") {
                self.notifyChannels = dict["NotifyChannels"] as! [String]
            }
            if dict.keys.contains("NotifyTarget") {
                self.notifyTarget = dict["NotifyTarget"] as! String
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("QuotaActionCode") {
                self.quotaActionCode = dict["QuotaActionCode"] as! String
            }
            if dict.keys.contains("QuotaDimensions") {
                self.quotaDimensions = dict["QuotaDimensions"] as! [String: Any]
            }
            if dict.keys.contains("QuotaUsage") {
                self.quotaUsage = dict["QuotaUsage"] as! Double
            }
            if dict.keys.contains("QuotaValue") {
                self.quotaValue = dict["QuotaValue"] as! Double
            }
            if dict.keys.contains("Threshold") {
                self.threshold = dict["Threshold"] as! Double
            }
            if dict.keys.contains("ThresholdPercent") {
                self.thresholdPercent = dict["ThresholdPercent"] as! Double
            }
            if dict.keys.contains("ThresholdType") {
                self.thresholdType = dict["ThresholdType"] as! String
            }
            if dict.keys.contains("WebHook") {
                self.webHook = dict["WebHook"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("QuotaAlarms") {
            self.quotaAlarms = dict["QuotaAlarms"] as! [ListQuotaAlarmsResponseBody.QuotaAlarms]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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
            var model = ListQuotaAlarmsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dimensions") {
            self.dimensions = dict["Dimensions"] as! [ListQuotaApplicationTemplatesRequest.Dimensions]
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("QuotaActionCode") {
            self.quotaActionCode = dict["QuotaActionCode"] as! String
        }
        if dict.keys.contains("QuotaCategory") {
            self.quotaCategory = dict["QuotaCategory"] as! String
        }
    }
}

public class ListQuotaApplicationTemplatesResponseBody : Tea.TeaModel {
    public class QuotaApplicationTemplates : Tea.TeaModel {
        public var applicableRange: [Double]?

        public var applicableType: String?

        public var desireValue: Double?

        public var dimensions: [String: Any]?

        public var effectiveTime: String?

        public var envLanguage: String?

        public var expireTime: String?

        public var id: String?

        public var noticeType: Int32?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicableRange") {
                self.applicableRange = dict["ApplicableRange"] as! [Double]
            }
            if dict.keys.contains("ApplicableType") {
                self.applicableType = dict["ApplicableType"] as! String
            }
            if dict.keys.contains("DesireValue") {
                self.desireValue = dict["DesireValue"] as! Double
            }
            if dict.keys.contains("Dimensions") {
                self.dimensions = dict["Dimensions"] as! [String: Any]
            }
            if dict.keys.contains("EffectiveTime") {
                self.effectiveTime = dict["EffectiveTime"] as! String
            }
            if dict.keys.contains("EnvLanguage") {
                self.envLanguage = dict["EnvLanguage"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("NoticeType") {
                self.noticeType = dict["NoticeType"] as! Int32
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("QuotaActionCode") {
                self.quotaActionCode = dict["QuotaActionCode"] as! String
            }
            if dict.keys.contains("QuotaCategory") {
                self.quotaCategory = dict["QuotaCategory"] as! String
            }
            if dict.keys.contains("QuotaDescription") {
                self.quotaDescription = dict["QuotaDescription"] as! String
            }
            if dict.keys.contains("QuotaName") {
                self.quotaName = dict["QuotaName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("QuotaApplicationTemplates") {
            self.quotaApplicationTemplates = dict["QuotaApplicationTemplates"] as! [ListQuotaApplicationTemplatesResponseBody.QuotaApplicationTemplates]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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
            var model = ListQuotaApplicationTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dimensions") {
            self.dimensions = dict["Dimensions"] as! [ListQuotaApplicationsRequest.Dimensions]
        }
        if dict.keys.contains("KeyWord") {
            self.keyWord = dict["KeyWord"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("QuotaActionCode") {
            self.quotaActionCode = dict["QuotaActionCode"] as! String
        }
        if dict.keys.contains("QuotaCategory") {
            self.quotaCategory = dict["QuotaCategory"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PeriodUnit") {
                    self.periodUnit = dict["PeriodUnit"] as! String
                }
                if dict.keys.contains("PeriodValue") {
                    self.periodValue = dict["PeriodValue"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationId") {
                self.applicationId = dict["ApplicationId"] as! String
            }
            if dict.keys.contains("ApplyTime") {
                self.applyTime = dict["ApplyTime"] as! String
            }
            if dict.keys.contains("ApproveValue") {
                self.approveValue = dict["ApproveValue"] as! Double
            }
            if dict.keys.contains("AuditReason") {
                self.auditReason = dict["AuditReason"] as! String
            }
            if dict.keys.contains("Comment") {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("DesireValue") {
                self.desireValue = dict["DesireValue"] as! Double
            }
            if dict.keys.contains("Dimension") {
                self.dimension = dict["Dimension"] as! [String: Any]
            }
            if dict.keys.contains("EffectiveTime") {
                self.effectiveTime = dict["EffectiveTime"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("NoticeType") {
                self.noticeType = dict["NoticeType"] as! Int32
            }
            if dict.keys.contains("Period") {
                var model = ListQuotaApplicationsResponseBody.QuotaApplications.Period()
                model.fromMap(dict["Period"] as! [String: Any])
                self.period = model
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("QuotaActionCode") {
                self.quotaActionCode = dict["QuotaActionCode"] as! String
            }
            if dict.keys.contains("QuotaArn") {
                self.quotaArn = dict["QuotaArn"] as! String
            }
            if dict.keys.contains("QuotaDescription") {
                self.quotaDescription = dict["QuotaDescription"] as! String
            }
            if dict.keys.contains("QuotaName") {
                self.quotaName = dict["QuotaName"] as! String
            }
            if dict.keys.contains("QuotaUnit") {
                self.quotaUnit = dict["QuotaUnit"] as! String
            }
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("QuotaApplications") {
            self.quotaApplications = dict["QuotaApplications"] as! [ListQuotaApplicationsResponseBody.QuotaApplications]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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
            var model = ListQuotaApplicationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceStatus") {
            self.serviceStatus = dict["ServiceStatus"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ResourceDirectoryId") {
                self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
            }
            if dict.keys.contains("ServiceStatus") {
                self.serviceStatus = dict["ServiceStatus"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateServiceStatus") {
            var model = ModifyQuotaTemplateServiceStatusResponseBody.TemplateServiceStatus()
            model.fromMap(dict["TemplateServiceStatus"] as! [String: Any])
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
            var model = ModifyQuotaTemplateServiceStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DesireValue") {
            self.desireValue = dict["DesireValue"] as! Double
        }
        if dict.keys.contains("Dimensions") {
            self.dimensions = dict["Dimensions"] as! [ModifyTemplateQuotaItemRequest.Dimensions]
        }
        if dict.keys.contains("EffectiveTime") {
            self.effectiveTime = dict["EffectiveTime"] as! String
        }
        if dict.keys.contains("EnvLanguage") {
            self.envLanguage = dict["EnvLanguage"] as! String
        }
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("NoticeType") {
            self.noticeType = dict["NoticeType"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("QuotaActionCode") {
            self.quotaActionCode = dict["QuotaActionCode"] as! String
        }
        if dict.keys.contains("QuotaCategory") {
            self.quotaCategory = dict["QuotaCategory"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
            var model = ModifyTemplateQuotaItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmId") {
            self.alarmId = dict["AlarmId"] as! String
        }
        if dict.keys.contains("AlarmName") {
            self.alarmName = dict["AlarmName"] as! String
        }
        if dict.keys.contains("Threshold") {
            self.threshold = dict["Threshold"] as! Double
        }
        if dict.keys.contains("ThresholdPercent") {
            self.thresholdPercent = dict["ThresholdPercent"] as! Double
        }
        if dict.keys.contains("ThresholdType") {
            self.thresholdType = dict["ThresholdType"] as! String
        }
        if dict.keys.contains("WebHook") {
            self.webHook = dict["WebHook"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
            var model = UpdateQuotaAlarmResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
