import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CancelCouponRequest : Tea.TeaModel {
    public var couponId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.couponId != nil {
            map["CouponId"] = self.couponId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CouponId"] as? Int64 {
            self.couponId = value
        }
    }
}

public class CancelCouponResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CancelCouponResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelCouponResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelCouponResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelSubscriptionBillRequest : Tea.TeaModel {
    public var subscribeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.subscribeType != nil {
            map["SubscribeType"] = self.subscribeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SubscribeType"] as? String {
            self.subscribeType = value
        }
    }
}

public class CancelSubscriptionBillResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CancelSubscriptionBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelSubscriptionBillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelSubscriptionBillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CouponApprovalStatusListRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var templateId: String?

    public var templateName: String?

    public var templateStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateStatus != nil {
            map["TemplateStatus"] = self.templateStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateStatus"] as? String {
            self.templateStatus = value
        }
    }
}

public class CouponApprovalStatusListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var issuerAccount: String?

        public var issuerUid: String?

        public var note: String?

        public var templateId: String?

        public var templateName: String?

        public var templateStatus: Int64?

        public var timeOfRequest: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.issuerAccount != nil {
                map["IssuerAccount"] = self.issuerAccount!
            }
            if self.issuerUid != nil {
                map["IssuerUid"] = self.issuerUid!
            }
            if self.note != nil {
                map["Note"] = self.note!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateStatus != nil {
                map["TemplateStatus"] = self.templateStatus!
            }
            if self.timeOfRequest != nil {
                map["TimeOfRequest"] = self.timeOfRequest!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IssuerAccount"] as? String {
                self.issuerAccount = value
            }
            if let value = dict["IssuerUid"] as? String {
                self.issuerUid = value
            }
            if let value = dict["Note"] as? String {
                self.note = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplateStatus"] as? Int64 {
                self.templateStatus = value
            }
            if let value = dict["TimeOfRequest"] as? String {
                self.timeOfRequest = value
            }
        }
    }
    public var code: String?

    public var data: [CouponApprovalStatusListResponseBody.Data]?

    public var message: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var total: Int32?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [CouponApprovalStatusListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = CouponApprovalStatusListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class CouponApprovalStatusListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CouponApprovalStatusListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CouponApprovalStatusListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCouponTemplateRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var applicableProducts: String?

    public var costBearer: String?

    public var couponDescription: String?

    public var expireddate: String?

    public var limitPerPerson: String?

    public var productType: [String]?

    public var purchaseType: String?

    public var reasonForApplication: String?

    public var templateName: String?

    public var vailddate: String?

    public var vaildperioddays: String?

    public var validUntil: String?

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
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.applicableProducts != nil {
            map["ApplicableProducts"] = self.applicableProducts!
        }
        if self.costBearer != nil {
            map["CostBearer"] = self.costBearer!
        }
        if self.couponDescription != nil {
            map["CouponDescription"] = self.couponDescription!
        }
        if self.expireddate != nil {
            map["Expireddate"] = self.expireddate!
        }
        if self.limitPerPerson != nil {
            map["LimitPerPerson"] = self.limitPerPerson!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.purchaseType != nil {
            map["PurchaseType"] = self.purchaseType!
        }
        if self.reasonForApplication != nil {
            map["ReasonForApplication"] = self.reasonForApplication!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.vailddate != nil {
            map["Vailddate"] = self.vailddate!
        }
        if self.vaildperioddays != nil {
            map["Vaildperioddays"] = self.vaildperioddays!
        }
        if self.validUntil != nil {
            map["ValidUntil"] = self.validUntil!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["ApplicableProducts"] as? String {
            self.applicableProducts = value
        }
        if let value = dict["CostBearer"] as? String {
            self.costBearer = value
        }
        if let value = dict["CouponDescription"] as? String {
            self.couponDescription = value
        }
        if let value = dict["Expireddate"] as? String {
            self.expireddate = value
        }
        if let value = dict["LimitPerPerson"] as? String {
            self.limitPerPerson = value
        }
        if let value = dict["ProductType"] as? [String] {
            self.productType = value
        }
        if let value = dict["PurchaseType"] as? String {
            self.purchaseType = value
        }
        if let value = dict["ReasonForApplication"] as? String {
            self.reasonForApplication = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["Vailddate"] as? String {
            self.vailddate = value
        }
        if let value = dict["Vaildperioddays"] as? String {
            self.vaildperioddays = value
        }
        if let value = dict["ValidUntil"] as? String {
            self.validUntil = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class CreateCouponTemplateShrinkRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var applicableProducts: String?

    public var costBearer: String?

    public var couponDescription: String?

    public var expireddate: String?

    public var limitPerPerson: String?

    public var productTypeShrink: String?

    public var purchaseType: String?

    public var reasonForApplication: String?

    public var templateName: String?

    public var vailddate: String?

    public var vaildperioddays: String?

    public var validUntil: String?

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
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.applicableProducts != nil {
            map["ApplicableProducts"] = self.applicableProducts!
        }
        if self.costBearer != nil {
            map["CostBearer"] = self.costBearer!
        }
        if self.couponDescription != nil {
            map["CouponDescription"] = self.couponDescription!
        }
        if self.expireddate != nil {
            map["Expireddate"] = self.expireddate!
        }
        if self.limitPerPerson != nil {
            map["LimitPerPerson"] = self.limitPerPerson!
        }
        if self.productTypeShrink != nil {
            map["ProductType"] = self.productTypeShrink!
        }
        if self.purchaseType != nil {
            map["PurchaseType"] = self.purchaseType!
        }
        if self.reasonForApplication != nil {
            map["ReasonForApplication"] = self.reasonForApplication!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.vailddate != nil {
            map["Vailddate"] = self.vailddate!
        }
        if self.vaildperioddays != nil {
            map["Vaildperioddays"] = self.vaildperioddays!
        }
        if self.validUntil != nil {
            map["ValidUntil"] = self.validUntil!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["ApplicableProducts"] as? String {
            self.applicableProducts = value
        }
        if let value = dict["CostBearer"] as? String {
            self.costBearer = value
        }
        if let value = dict["CouponDescription"] as? String {
            self.couponDescription = value
        }
        if let value = dict["Expireddate"] as? String {
            self.expireddate = value
        }
        if let value = dict["LimitPerPerson"] as? String {
            self.limitPerPerson = value
        }
        if let value = dict["ProductType"] as? String {
            self.productTypeShrink = value
        }
        if let value = dict["PurchaseType"] as? String {
            self.purchaseType = value
        }
        if let value = dict["ReasonForApplication"] as? String {
            self.reasonForApplication = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["Vailddate"] as? String {
            self.vailddate = value
        }
        if let value = dict["Vaildperioddays"] as? String {
            self.vaildperioddays = value
        }
        if let value = dict["ValidUntil"] as? String {
            self.validUntil = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class CreateCouponTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var applicableProducts: String?

        public var costBearer: String?

        public var couponTemplateID: Int64?

        public var createTime: String?

        public var expireddate: String?

        public var productType: [String]?

        public var status: String?

        public var templateName: String?

        public var vailddate: String?

        public var vaildperioddays: String?

        public var validUntil: String?

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
            if self.applicableProducts != nil {
                map["ApplicableProducts"] = self.applicableProducts!
            }
            if self.costBearer != nil {
                map["CostBearer"] = self.costBearer!
            }
            if self.couponTemplateID != nil {
                map["CouponTemplateID"] = self.couponTemplateID!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.expireddate != nil {
                map["Expireddate"] = self.expireddate!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.vailddate != nil {
                map["Vailddate"] = self.vailddate!
            }
            if self.vaildperioddays != nil {
                map["Vaildperioddays"] = self.vaildperioddays!
            }
            if self.validUntil != nil {
                map["ValidUntil"] = self.validUntil!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplicableProducts"] as? String {
                self.applicableProducts = value
            }
            if let value = dict["CostBearer"] as? String {
                self.costBearer = value
            }
            if let value = dict["CouponTemplateID"] as? Int64 {
                self.couponTemplateID = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Expireddate"] as? String {
                self.expireddate = value
            }
            if let value = dict["ProductType"] as? [String] {
                self.productType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["Vailddate"] as? String {
                self.vailddate = value
            }
            if let value = dict["Vaildperioddays"] as? String {
                self.vaildperioddays = value
            }
            if let value = dict["ValidUntil"] as? String {
                self.validUntil = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var code: String?

    public var data: CreateCouponTemplateResponseBody.Data?

    public var message: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateCouponTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateCouponTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCouponTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateCouponTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCustomerRequest : Tea.TeaModel {
    public var customerName: String?

    public var customerSource: String?

    public var customerSubTrade: String?

    public var customerTrade: String?

    public var nation: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customerName != nil {
            map["CustomerName"] = self.customerName!
        }
        if self.customerSource != nil {
            map["CustomerSource"] = self.customerSource!
        }
        if self.customerSubTrade != nil {
            map["CustomerSubTrade"] = self.customerSubTrade!
        }
        if self.customerTrade != nil {
            map["CustomerTrade"] = self.customerTrade!
        }
        if self.nation != nil {
            map["Nation"] = self.nation!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomerName"] as? String {
            self.customerName = value
        }
        if let value = dict["CustomerSource"] as? String {
            self.customerSource = value
        }
        if let value = dict["CustomerSubTrade"] as? String {
            self.customerSubTrade = value
        }
        if let value = dict["CustomerTrade"] as? String {
            self.customerTrade = value
        }
        if let value = dict["Nation"] as? String {
            self.nation = value
        }
    }
}

public class CreateCustomerResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateCustomerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateCustomerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CustomerQuotaRecordListRequest : Tea.TeaModel {
    public var endDate: String?

    public var endUserPk: Int64?

    public var language: String?

    public var operationType: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

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
        if self.endUserPk != nil {
            map["EndUserPk"] = self.endUserPk!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["EndUserPk"] as? Int64 {
            self.endUserPk = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class CustomerQuotaRecordListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var operationSubmitType: String?

        public var operationTime: String?

        public var operationTypeCode: String?

        public var operationTypeDesc: String?

        public var operationUid: String?

        public var updateAfterAmount: String?

        public var updateAmount: String?

        public var updateBeforeAmount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operationSubmitType != nil {
                map["OperationSubmitType"] = self.operationSubmitType!
            }
            if self.operationTime != nil {
                map["OperationTime"] = self.operationTime!
            }
            if self.operationTypeCode != nil {
                map["OperationTypeCode"] = self.operationTypeCode!
            }
            if self.operationTypeDesc != nil {
                map["OperationTypeDesc"] = self.operationTypeDesc!
            }
            if self.operationUid != nil {
                map["OperationUid"] = self.operationUid!
            }
            if self.updateAfterAmount != nil {
                map["UpdateAfterAmount"] = self.updateAfterAmount!
            }
            if self.updateAmount != nil {
                map["UpdateAmount"] = self.updateAmount!
            }
            if self.updateBeforeAmount != nil {
                map["UpdateBeforeAmount"] = self.updateBeforeAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OperationSubmitType"] as? String {
                self.operationSubmitType = value
            }
            if let value = dict["OperationTime"] as? String {
                self.operationTime = value
            }
            if let value = dict["OperationTypeCode"] as? String {
                self.operationTypeCode = value
            }
            if let value = dict["OperationTypeDesc"] as? String {
                self.operationTypeDesc = value
            }
            if let value = dict["OperationUid"] as? String {
                self.operationUid = value
            }
            if let value = dict["UpdateAfterAmount"] as? String {
                self.updateAfterAmount = value
            }
            if let value = dict["UpdateAmount"] as? String {
                self.updateAmount = value
            }
            if let value = dict["UpdateBeforeAmount"] as? String {
                self.updateBeforeAmount = value
            }
        }
    }
    public var code: String?

    public var data: [CustomerQuotaRecordListResponseBody.Data]?

    public var msg: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var total: Int32?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [CustomerQuotaRecordListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = CustomerQuotaRecordListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class CustomerQuotaRecordListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CustomerQuotaRecordListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CustomerQuotaRecordListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeductOutstandingBalanceRequest : Tea.TeaModel {
    public var deductAmount: String?

    public var uid: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deductAmount != nil {
            map["DeductAmount"] = self.deductAmount!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeductAmount"] as? String {
            self.deductAmount = value
        }
        if let value = dict["Uid"] as? Int64 {
            self.uid = value
        }
    }
}

public class DeductOutstandingBalanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeductOutstandingBalanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeductOutstandingBalanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeductOutstandingBalanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCouponTemplateRequest : Tea.TeaModel {
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class DeleteCouponTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteCouponTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCouponTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteCouponTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EditEndUserStatusRequest : Tea.TeaModel {
    public var creditStatus: String?

    public var uid: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.creditStatus != nil {
            map["CreditStatus"] = self.creditStatus!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreditStatus"] as? String {
            self.creditStatus = value
        }
        if let value = dict["Uid"] as? Int64 {
            self.uid = value
        }
    }
}

public class EditEndUserStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var msg: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EditEndUserStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditEndUserStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EditEndUserStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EditNewBuyStatusRequest : Tea.TeaModel {
    public var newBuyStatus: String?

    public var uid: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newBuyStatus != nil {
            map["NewBuyStatus"] = self.newBuyStatus!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewBuyStatus"] as? String {
            self.newBuyStatus = value
        }
        if let value = dict["Uid"] as? Int64 {
            self.uid = value
        }
    }
}

public class EditNewBuyStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var msg: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EditNewBuyStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditNewBuyStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EditNewBuyStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EditZeroCreditShutdownRequest : Tea.TeaModel {
    public var shutdownPolicy: String?

    public var uid: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.shutdownPolicy != nil {
            map["ShutdownPolicy"] = self.shutdownPolicy!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ShutdownPolicy"] as? String {
            self.shutdownPolicy = value
        }
        if let value = dict["Uid"] as? Int64 {
            self.uid = value
        }
    }
}

public class EditZeroCreditShutdownResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var msg: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EditZeroCreditShutdownResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditZeroCreditShutdownResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EditZeroCreditShutdownResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportCustomerQuotaRecordRequest : Tea.TeaModel {
    public var endDate: String?

    public var endUserPk: Int64?

    public var language: String?

    public var operationType: String?

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
        if self.endUserPk != nil {
            map["EndUserPk"] = self.endUserPk!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
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
        if let value = dict["EndUserPk"] as? Int64 {
            self.endUserPk = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class ExportCustomerQuotaRecordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cost: Int32?

        public var id: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cost != nil {
                map["Cost"] = self.cost!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Cost"] as? Int32 {
                self.cost = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
        }
    }
    public var code: String?

    public var data: ExportCustomerQuotaRecordResponseBody.Data?

    public var msg: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ExportCustomerQuotaRecordResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExportCustomerQuotaRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportCustomerQuotaRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ExportCustomerQuotaRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExportReversedDeductionHistoryRequest : Tea.TeaModel {
    public var endDate: String?

    public var exportUid: Int64?

    public var language: String?

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
        if self.exportUid != nil {
            map["ExportUid"] = self.exportUid!
        }
        if self.language != nil {
            map["Language"] = self.language!
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
        if let value = dict["ExportUid"] as? Int64 {
            self.exportUid = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class ExportReversedDeductionHistoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cost: Int32?

        public var id: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cost != nil {
                map["Cost"] = self.cost!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Cost"] as? Int32 {
                self.cost = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
        }
    }
    public var code: String?

    public var data: ExportReversedDeductionHistoryResponseBody.Data?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ExportReversedDeductionHistoryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExportReversedDeductionHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportReversedDeductionHistoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ExportReversedDeductionHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAccountInfoRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var pageSize: Int32?

    public var uid: Int64?

    public var userType: String?

    public override init() {
        super.init()
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
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Uid"] as? Int64 {
            self.uid = value
        }
        if let value = dict["UserType"] as? String {
            self.userType = value
        }
    }
}

public class GetAccountInfoResponseBody : Tea.TeaModel {
    public class AccountInfoList : Tea.TeaModel {
        public class AccountInfo : Tea.TeaModel {
            public var accountNickname: String?

            public var aliyunId: String?

            public var associationSuccessTime: String?

            public var cid: Int64?

            public var customerAccountType: Int32?

            public var customerBd: String?

            public var customerEnterpriseCertified: Int32?

            public var delayAmount: String?

            public var delayStatus: String?

            public var email: String?

            public var mobile: String?

            public var newBuyStatus: String?

            public var registerCountryCode: String?

            public var remark: String?

            public var subAccountType: Int32?

            public var uid: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountNickname != nil {
                    map["AccountNickname"] = self.accountNickname!
                }
                if self.aliyunId != nil {
                    map["AliyunId"] = self.aliyunId!
                }
                if self.associationSuccessTime != nil {
                    map["AssociationSuccessTime"] = self.associationSuccessTime!
                }
                if self.cid != nil {
                    map["Cid"] = self.cid!
                }
                if self.customerAccountType != nil {
                    map["CustomerAccountType"] = self.customerAccountType!
                }
                if self.customerBd != nil {
                    map["CustomerBd"] = self.customerBd!
                }
                if self.customerEnterpriseCertified != nil {
                    map["CustomerEnterpriseCertified"] = self.customerEnterpriseCertified!
                }
                if self.delayAmount != nil {
                    map["DelayAmount"] = self.delayAmount!
                }
                if self.delayStatus != nil {
                    map["DelayStatus"] = self.delayStatus!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.mobile != nil {
                    map["Mobile"] = self.mobile!
                }
                if self.newBuyStatus != nil {
                    map["NewBuyStatus"] = self.newBuyStatus!
                }
                if self.registerCountryCode != nil {
                    map["RegisterCountryCode"] = self.registerCountryCode!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.subAccountType != nil {
                    map["SubAccountType"] = self.subAccountType!
                }
                if self.uid != nil {
                    map["Uid"] = self.uid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountNickname"] as? String {
                    self.accountNickname = value
                }
                if let value = dict["AliyunId"] as? String {
                    self.aliyunId = value
                }
                if let value = dict["AssociationSuccessTime"] as? String {
                    self.associationSuccessTime = value
                }
                if let value = dict["Cid"] as? Int64 {
                    self.cid = value
                }
                if let value = dict["CustomerAccountType"] as? Int32 {
                    self.customerAccountType = value
                }
                if let value = dict["CustomerBd"] as? String {
                    self.customerBd = value
                }
                if let value = dict["CustomerEnterpriseCertified"] as? Int32 {
                    self.customerEnterpriseCertified = value
                }
                if let value = dict["DelayAmount"] as? String {
                    self.delayAmount = value
                }
                if let value = dict["DelayStatus"] as? String {
                    self.delayStatus = value
                }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["Mobile"] as? String {
                    self.mobile = value
                }
                if let value = dict["NewBuyStatus"] as? String {
                    self.newBuyStatus = value
                }
                if let value = dict["RegisterCountryCode"] as? String {
                    self.registerCountryCode = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["SubAccountType"] as? Int32 {
                    self.subAccountType = value
                }
                if let value = dict["Uid"] as? Int64 {
                    self.uid = value
                }
            }
        }
        public var accountInfo: [GetAccountInfoResponseBody.AccountInfoList.AccountInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountInfo != nil {
                var tmp : [Any] = []
                for k in self.accountInfo! {
                    tmp.append(k.toMap())
                }
                map["AccountInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountInfo"] as? [Any?] {
                var tmp : [GetAccountInfoResponseBody.AccountInfoList.AccountInfo] = []
                for v in value {
                    if v != nil {
                        var model = GetAccountInfoResponseBody.AccountInfoList.AccountInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.accountInfo = tmp
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var page: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var accountInfoList: GetAccountInfoResponseBody.AccountInfoList?

    public var code: String?

    public var message: String?

    public var pageInfo: GetAccountInfoResponseBody.PageInfo?

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
        try self.accountInfoList?.validate()
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountInfoList != nil {
            map["AccountInfoList"] = self.accountInfoList?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
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
        if let value = dict["AccountInfoList"] as? [String: Any?] {
            var model = GetAccountInfoResponseBody.AccountInfoList()
            model.fromMap(value)
            self.accountInfoList = model
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = GetAccountInfoResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetAccountInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccountInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAccountInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCommissionableProductsRequest : Tea.TeaModel {
    public var commodityCodeList: String?

    public var fiscalYear: String?

    public var listShowStatusList: [String]?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var pipCodeList: String?

    public var realEndMonth: String?

    public var realStartMonth: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commodityCodeList != nil {
            map["CommodityCodeList"] = self.commodityCodeList!
        }
        if self.fiscalYear != nil {
            map["FiscalYear"] = self.fiscalYear!
        }
        if self.listShowStatusList != nil {
            map["ListShowStatusList"] = self.listShowStatusList!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pipCodeList != nil {
            map["PipCodeList"] = self.pipCodeList!
        }
        if self.realEndMonth != nil {
            map["RealEndMonth"] = self.realEndMonth!
        }
        if self.realStartMonth != nil {
            map["RealStartMonth"] = self.realStartMonth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommodityCodeList"] as? String {
            self.commodityCodeList = value
        }
        if let value = dict["FiscalYear"] as? String {
            self.fiscalYear = value
        }
        if let value = dict["ListShowStatusList"] as? [String] {
            self.listShowStatusList = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PipCodeList"] as? String {
            self.pipCodeList = value
        }
        if let value = dict["RealEndMonth"] as? String {
            self.realEndMonth = value
        }
        if let value = dict["RealStartMonth"] as? String {
            self.realStartMonth = value
        }
    }
}

public class GetCommissionableProductsShrinkRequest : Tea.TeaModel {
    public var commodityCodeList: String?

    public var fiscalYear: String?

    public var listShowStatusListShrink: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var pipCodeList: String?

    public var realEndMonth: String?

    public var realStartMonth: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commodityCodeList != nil {
            map["CommodityCodeList"] = self.commodityCodeList!
        }
        if self.fiscalYear != nil {
            map["FiscalYear"] = self.fiscalYear!
        }
        if self.listShowStatusListShrink != nil {
            map["ListShowStatusList"] = self.listShowStatusListShrink!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pipCodeList != nil {
            map["PipCodeList"] = self.pipCodeList!
        }
        if self.realEndMonth != nil {
            map["RealEndMonth"] = self.realEndMonth!
        }
        if self.realStartMonth != nil {
            map["RealStartMonth"] = self.realStartMonth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommodityCodeList"] as? String {
            self.commodityCodeList = value
        }
        if let value = dict["FiscalYear"] as? String {
            self.fiscalYear = value
        }
        if let value = dict["ListShowStatusList"] as? String {
            self.listShowStatusListShrink = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PipCodeList"] as? String {
            self.pipCodeList = value
        }
        if let value = dict["RealEndMonth"] as? String {
            self.realEndMonth = value
        }
        if let value = dict["RealStartMonth"] as? String {
            self.realStartMonth = value
        }
    }
}

public class GetCommissionableProductsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var actualStartMonth: String?

        public var commodityCode: String?

        public var commodityName: String?

        public var eligibleForCommission: String?

        public var eligibleForDiscount: String?

        public var endMonth: String?

        public var productCampaign: String?

        public var productCode: String?

        public var productName: String?

        public var sevenCoreProducts: String?

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
            if self.actualStartMonth != nil {
                map["ActualStartMonth"] = self.actualStartMonth!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.commodityName != nil {
                map["CommodityName"] = self.commodityName!
            }
            if self.eligibleForCommission != nil {
                map["EligibleForCommission"] = self.eligibleForCommission!
            }
            if self.eligibleForDiscount != nil {
                map["EligibleForDiscount"] = self.eligibleForDiscount!
            }
            if self.endMonth != nil {
                map["EndMonth"] = self.endMonth!
            }
            if self.productCampaign != nil {
                map["ProductCampaign"] = self.productCampaign!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.sevenCoreProducts != nil {
                map["SevenCoreProducts"] = self.sevenCoreProducts!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActualStartMonth"] as? String {
                self.actualStartMonth = value
            }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["CommodityName"] as? String {
                self.commodityName = value
            }
            if let value = dict["EligibleForCommission"] as? String {
                self.eligibleForCommission = value
            }
            if let value = dict["EligibleForDiscount"] as? String {
                self.eligibleForDiscount = value
            }
            if let value = dict["EndMonth"] as? String {
                self.endMonth = value
            }
            if let value = dict["ProductCampaign"] as? String {
                self.productCampaign = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["SevenCoreProducts"] as? String {
                self.sevenCoreProducts = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: [GetCommissionableProductsResponseBody.Data]?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetCommissionableProductsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetCommissionableProductsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class GetCommissionableProductsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCommissionableProductsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCommissionableProductsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCouponTemplateDetailRequest : Tea.TeaModel {
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class GetCouponTemplateDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var applicableProducts: String?

        public var costBearer: String?

        public var couponDescription: String?

        public var createdTime: String?

        public var denomination: Double?

        public var limitPerPerson: Int32?

        public var purchaseType: String?

        public var reasonForApplication: String?

        public var status: String?

        public var templateId: Int64?

        public var templateName: String?

        public var validUntil: String?

        public var validUntilType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicableProducts != nil {
                map["ApplicableProducts"] = self.applicableProducts!
            }
            if self.costBearer != nil {
                map["CostBearer"] = self.costBearer!
            }
            if self.couponDescription != nil {
                map["CouponDescription"] = self.couponDescription!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.denomination != nil {
                map["Denomination"] = self.denomination!
            }
            if self.limitPerPerson != nil {
                map["LimitPerPerson"] = self.limitPerPerson!
            }
            if self.purchaseType != nil {
                map["PurchaseType"] = self.purchaseType!
            }
            if self.reasonForApplication != nil {
                map["ReasonForApplication"] = self.reasonForApplication!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.validUntil != nil {
                map["ValidUntil"] = self.validUntil!
            }
            if self.validUntilType != nil {
                map["ValidUntilType"] = self.validUntilType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplicableProducts"] as? String {
                self.applicableProducts = value
            }
            if let value = dict["CostBearer"] as? String {
                self.costBearer = value
            }
            if let value = dict["CouponDescription"] as? String {
                self.couponDescription = value
            }
            if let value = dict["CreatedTime"] as? String {
                self.createdTime = value
            }
            if let value = dict["Denomination"] as? Double {
                self.denomination = value
            }
            if let value = dict["LimitPerPerson"] as? Int32 {
                self.limitPerPerson = value
            }
            if let value = dict["PurchaseType"] as? String {
                self.purchaseType = value
            }
            if let value = dict["ReasonForApplication"] as? String {
                self.reasonForApplication = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TemplateId"] as? Int64 {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["ValidUntil"] as? String {
                self.validUntil = value
            }
            if let value = dict["ValidUntilType"] as? String {
                self.validUntilType = value
            }
        }
    }
    public var code: String?

    public var data: GetCouponTemplateDetailResponseBody.Data?

    public var message: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetCouponTemplateDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetCouponTemplateDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCouponTemplateDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCouponTemplateDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCoupondeductProductCodeRequest : Tea.TeaModel {
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

public class GetCoupondeductProductCodeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var productType: Any?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProductType"] as? Any {
                self.productType = value
            }
        }
    }
    public var code: String?

    public var data: [GetCoupondeductProductCodeResponseBody.Data]?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetCoupondeductProductCodeResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetCoupondeductProductCodeResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetCoupondeductProductCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCoupondeductProductCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCoupondeductProductCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCreditInfoRequest : Tea.TeaModel {
    public var uid: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Uid"] as? Int64 {
            self.uid = value
        }
    }
}

public class GetCreditInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountStatus: String?

        public var alarmThreshold: String?

        public var availableCredit: String?

        public var consumedUndeductedValue: String?

        public var creditLine: String?

        public var outstandingBalance: String?

        public var zeroCreditShutdownPolicy: String?

        public var newBuyStatus: String?

        public override init() {
            super.init()
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
            if self.alarmThreshold != nil {
                map["AlarmThreshold"] = self.alarmThreshold!
            }
            if self.availableCredit != nil {
                map["AvailableCredit"] = self.availableCredit!
            }
            if self.consumedUndeductedValue != nil {
                map["ConsumedUndeductedValue"] = self.consumedUndeductedValue!
            }
            if self.creditLine != nil {
                map["CreditLine"] = self.creditLine!
            }
            if self.outstandingBalance != nil {
                map["OutstandingBalance"] = self.outstandingBalance!
            }
            if self.zeroCreditShutdownPolicy != nil {
                map["ZeroCreditShutdownPolicy"] = self.zeroCreditShutdownPolicy!
            }
            if self.newBuyStatus != nil {
                map["newBuyStatus"] = self.newBuyStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountStatus"] as? String {
                self.accountStatus = value
            }
            if let value = dict["AlarmThreshold"] as? String {
                self.alarmThreshold = value
            }
            if let value = dict["AvailableCredit"] as? String {
                self.availableCredit = value
            }
            if let value = dict["ConsumedUndeductedValue"] as? String {
                self.consumedUndeductedValue = value
            }
            if let value = dict["CreditLine"] as? String {
                self.creditLine = value
            }
            if let value = dict["OutstandingBalance"] as? String {
                self.outstandingBalance = value
            }
            if let value = dict["ZeroCreditShutdownPolicy"] as? String {
                self.zeroCreditShutdownPolicy = value
            }
            if let value = dict["newBuyStatus"] as? String {
                self.newBuyStatus = value
            }
        }
    }
    public var code: String?

    public var data: GetCreditInfoResponseBody.Data?

    public var message: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetCreditInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetCreditInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCreditInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCreditInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCustomerOrdersRequest : Tea.TeaModel {
    public var customerAccount: String?

    public var customerManager: String?

    public var customerUid: Int64?

    public var endDate: String?

    public var orderId: Int64?

    public var orderSource: Int32?

    public var orderStatus: Int32?

    public var orderType: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var productType: String?

    public var startDate: String?

    public var timeType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customerAccount != nil {
            map["CustomerAccount"] = self.customerAccount!
        }
        if self.customerManager != nil {
            map["CustomerManager"] = self.customerManager!
        }
        if self.customerUid != nil {
            map["CustomerUid"] = self.customerUid!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.orderSource != nil {
            map["OrderSource"] = self.orderSource!
        }
        if self.orderStatus != nil {
            map["OrderStatus"] = self.orderStatus!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.timeType != nil {
            map["TimeType"] = self.timeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomerAccount"] as? String {
            self.customerAccount = value
        }
        if let value = dict["CustomerManager"] as? String {
            self.customerManager = value
        }
        if let value = dict["CustomerUid"] as? Int64 {
            self.customerUid = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["OrderSource"] as? Int32 {
            self.orderSource = value
        }
        if let value = dict["OrderStatus"] as? Int32 {
            self.orderStatus = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["TimeType"] as? Int32 {
            self.timeType = value
        }
    }
}

public class GetCustomerOrdersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var customerAccount: String?

        public var customerManager: String?

        public var customerNo: Int64?

        public var orderId: Int64?

        public var orderSource: String?

        public var orderStatus: Int32?

        public var orderType: String?

        public var originalCost: Double?

        public var paymentMethod: String?

        public var paymentTime: String?

        public var pretaxCost: Double?

        public var productDetail: String?

        public var productType: String?

        public var timeToOrder: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customerAccount != nil {
                map["CustomerAccount"] = self.customerAccount!
            }
            if self.customerManager != nil {
                map["CustomerManager"] = self.customerManager!
            }
            if self.customerNo != nil {
                map["CustomerNo"] = self.customerNo!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.orderSource != nil {
                map["OrderSource"] = self.orderSource!
            }
            if self.orderStatus != nil {
                map["OrderStatus"] = self.orderStatus!
            }
            if self.orderType != nil {
                map["OrderType"] = self.orderType!
            }
            if self.originalCost != nil {
                map["OriginalCost"] = self.originalCost!
            }
            if self.paymentMethod != nil {
                map["PaymentMethod"] = self.paymentMethod!
            }
            if self.paymentTime != nil {
                map["PaymentTime"] = self.paymentTime!
            }
            if self.pretaxCost != nil {
                map["PretaxCost"] = self.pretaxCost!
            }
            if self.productDetail != nil {
                map["ProductDetail"] = self.productDetail!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.timeToOrder != nil {
                map["TimeToOrder"] = self.timeToOrder!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomerAccount"] as? String {
                self.customerAccount = value
            }
            if let value = dict["CustomerManager"] as? String {
                self.customerManager = value
            }
            if let value = dict["CustomerNo"] as? Int64 {
                self.customerNo = value
            }
            if let value = dict["OrderId"] as? Int64 {
                self.orderId = value
            }
            if let value = dict["OrderSource"] as? String {
                self.orderSource = value
            }
            if let value = dict["OrderStatus"] as? Int32 {
                self.orderStatus = value
            }
            if let value = dict["OrderType"] as? String {
                self.orderType = value
            }
            if let value = dict["OriginalCost"] as? Double {
                self.originalCost = value
            }
            if let value = dict["PaymentMethod"] as? String {
                self.paymentMethod = value
            }
            if let value = dict["PaymentTime"] as? String {
                self.paymentTime = value
            }
            if let value = dict["PretaxCost"] as? Double {
                self.pretaxCost = value
            }
            if let value = dict["ProductDetail"] as? String {
                self.productDetail = value
            }
            if let value = dict["ProductType"] as? String {
                self.productType = value
            }
            if let value = dict["TimeToOrder"] as? String {
                self.timeToOrder = value
            }
        }
    }
    public var code: String?

    public var data: [GetCustomerOrdersResponseBody.Data]?

    public var message: String?

    public var msg: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetCustomerOrdersResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetCustomerOrdersResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class GetCustomerOrdersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCustomerOrdersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCustomerOrdersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDailyBillRequest : Tea.TeaModel {
    public var billOwner: String?

    public var billType: String?

    public var date: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billOwner != nil {
            map["BillOwner"] = self.billOwner!
        }
        if self.billType != nil {
            map["BillType"] = self.billType!
        }
        if self.date != nil {
            map["Date"] = self.date!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BillOwner"] as? String {
            self.billOwner = value
        }
        if let value = dict["BillType"] as? String {
            self.billType = value
        }
        if let value = dict["Date"] as? String {
            self.date = value
        }
    }
}

public class GetDailyBillResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var billLinkCSV: String?

        public var billLinkXLSX: String?

        public var billOwner: String?

        public var billType: String?

        public var spendingTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billLinkCSV != nil {
                map["BillLinkCSV"] = self.billLinkCSV!
            }
            if self.billLinkXLSX != nil {
                map["BillLinkXLSX"] = self.billLinkXLSX!
            }
            if self.billOwner != nil {
                map["BillOwner"] = self.billOwner!
            }
            if self.billType != nil {
                map["BillType"] = self.billType!
            }
            if self.spendingTime != nil {
                map["SpendingTime"] = self.spendingTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BillLinkCSV"] as? String {
                self.billLinkCSV = value
            }
            if let value = dict["BillLinkXLSX"] as? String {
                self.billLinkXLSX = value
            }
            if let value = dict["BillOwner"] as? String {
                self.billOwner = value
            }
            if let value = dict["BillType"] as? String {
                self.billType = value
            }
            if let value = dict["SpendingTime"] as? String {
                self.spendingTime = value
            }
        }
    }
    public var code: String?

    public var data: GetDailyBillResponseBody.Data?

    public var message: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetDailyBillResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDailyBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDailyBillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDailyBillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInviteStatusRequest : Tea.TeaModel {
    public class InviteStatusList : Tea.TeaModel {
        public var inviteId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.inviteId != nil {
                map["InviteId"] = self.inviteId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InviteId"] as? Int64 {
                self.inviteId = value
            }
        }
    }
    public var inviteStatusList: [GetInviteStatusRequest.InviteStatusList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inviteStatusList != nil {
            var tmp : [Any] = []
            for k in self.inviteStatusList! {
                tmp.append(k.toMap())
            }
            map["InviteStatusList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InviteStatusList"] as? [Any?] {
            var tmp : [GetInviteStatusRequest.InviteStatusList] = []
            for v in value {
                if v != nil {
                    var model = GetInviteStatusRequest.InviteStatusList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.inviteStatusList = tmp
        }
    }
}

public class GetInviteStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InviteStatus : Tea.TeaModel {
            public class InviteStatusList : Tea.TeaModel {
                public var associationSuccessTime: String?

                public var cid: Int64?

                public var gmtCreate: String?

                public var parentId: String?

                public var status: Int32?

                public var subAccountType: String?

                public var uid: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.associationSuccessTime != nil {
                        map["AssociationSuccessTime"] = self.associationSuccessTime!
                    }
                    if self.cid != nil {
                        map["Cid"] = self.cid!
                    }
                    if self.gmtCreate != nil {
                        map["GmtCreate"] = self.gmtCreate!
                    }
                    if self.parentId != nil {
                        map["ParentId"] = self.parentId!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.subAccountType != nil {
                        map["SubAccountType"] = self.subAccountType!
                    }
                    if self.uid != nil {
                        map["Uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AssociationSuccessTime"] as? String {
                        self.associationSuccessTime = value
                    }
                    if let value = dict["Cid"] as? Int64 {
                        self.cid = value
                    }
                    if let value = dict["GmtCreate"] as? String {
                        self.gmtCreate = value
                    }
                    if let value = dict["ParentId"] as? String {
                        self.parentId = value
                    }
                    if let value = dict["Status"] as? Int32 {
                        self.status = value
                    }
                    if let value = dict["SubAccountType"] as? String {
                        self.subAccountType = value
                    }
                    if let value = dict["Uid"] as? Int64 {
                        self.uid = value
                    }
                }
            }
            public var code: String?

            public var inviteStatusList: GetInviteStatusResponseBody.Data.InviteStatus.InviteStatusList?

            public var message: String?

            public var success: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.inviteStatusList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.inviteStatusList != nil {
                    map["InviteStatusList"] = self.inviteStatusList?.toMap()
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["InviteStatusList"] as? [String: Any?] {
                    var model = GetInviteStatusResponseBody.Data.InviteStatus.InviteStatusList()
                    model.fromMap(value)
                    self.inviteStatusList = model
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["Success"] as? Bool {
                    self.success = value
                }
            }
        }
        public var inviteStatus: [GetInviteStatusResponseBody.Data.InviteStatus]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.inviteStatus != nil {
                var tmp : [Any] = []
                for k in self.inviteStatus! {
                    tmp.append(k.toMap())
                }
                map["InviteStatus"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InviteStatus"] as? [Any?] {
                var tmp : [GetInviteStatusResponseBody.Data.InviteStatus] = []
                for v in value {
                    if v != nil {
                        var model = GetInviteStatusResponseBody.Data.InviteStatus()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.inviteStatus = tmp
            }
        }
    }
    public var code: String?

    public var data: GetInviteStatusResponseBody.Data?

    public var message: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetInviteStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetInviteStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInviteStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInviteStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMonthlyBillRequest : Tea.TeaModel {
    public var billOwner: String?

    public var billType: String?

    public var month: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billOwner != nil {
            map["BillOwner"] = self.billOwner!
        }
        if self.billType != nil {
            map["BillType"] = self.billType!
        }
        if self.month != nil {
            map["Month"] = self.month!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BillOwner"] as? String {
            self.billOwner = value
        }
        if let value = dict["BillType"] as? String {
            self.billType = value
        }
        if let value = dict["Month"] as? String {
            self.month = value
        }
    }
}

public class GetMonthlyBillResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var billLinkCSV: String?

        public var billLinkXLSX: String?

        public var billOwner: String?

        public var billType: String?

        public var invoiceLink: String?

        public var refundInvoiceFlag: Bool?

        public var refundInvoiceLink: String?

        public var spendingTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billLinkCSV != nil {
                map["BillLinkCSV"] = self.billLinkCSV!
            }
            if self.billLinkXLSX != nil {
                map["BillLinkXLSX"] = self.billLinkXLSX!
            }
            if self.billOwner != nil {
                map["BillOwner"] = self.billOwner!
            }
            if self.billType != nil {
                map["BillType"] = self.billType!
            }
            if self.invoiceLink != nil {
                map["InvoiceLink"] = self.invoiceLink!
            }
            if self.refundInvoiceFlag != nil {
                map["RefundInvoiceFlag"] = self.refundInvoiceFlag!
            }
            if self.refundInvoiceLink != nil {
                map["RefundInvoiceLink"] = self.refundInvoiceLink!
            }
            if self.spendingTime != nil {
                map["SpendingTime"] = self.spendingTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BillLinkCSV"] as? String {
                self.billLinkCSV = value
            }
            if let value = dict["BillLinkXLSX"] as? String {
                self.billLinkXLSX = value
            }
            if let value = dict["BillOwner"] as? String {
                self.billOwner = value
            }
            if let value = dict["BillType"] as? String {
                self.billType = value
            }
            if let value = dict["InvoiceLink"] as? String {
                self.invoiceLink = value
            }
            if let value = dict["RefundInvoiceFlag"] as? Bool {
                self.refundInvoiceFlag = value
            }
            if let value = dict["RefundInvoiceLink"] as? String {
                self.refundInvoiceLink = value
            }
            if let value = dict["SpendingTime"] as? String {
                self.spendingTime = value
            }
        }
    }
    public var code: String?

    public var data: GetMonthlyBillResponseBody.Data?

    public var message: String?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetMonthlyBillResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetMonthlyBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMonthlyBillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMonthlyBillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUnassociatedCustomerRequest : Tea.TeaModel {
    public var currentPage: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class GetUnassociatedCustomerResponseBody : Tea.TeaModel {
    public class InviteInfoList : Tea.TeaModel {
        public class InviteInfo : Tea.TeaModel {
            public var accountNickname: String?

            public var email: String?

            public var gmtCreate: String?

            public var inviteId: Int64?

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
                if self.accountNickname != nil {
                    map["AccountNickname"] = self.accountNickname!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.inviteId != nil {
                    map["InviteId"] = self.inviteId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountNickname"] as? String {
                    self.accountNickname = value
                }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["InviteId"] as? Int64 {
                    self.inviteId = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
            }
        }
        public var inviteInfo: [GetUnassociatedCustomerResponseBody.InviteInfoList.InviteInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.inviteInfo != nil {
                var tmp : [Any] = []
                for k in self.inviteInfo! {
                    tmp.append(k.toMap())
                }
                map["InviteInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InviteInfo"] as? [Any?] {
                var tmp : [GetUnassociatedCustomerResponseBody.InviteInfoList.InviteInfo] = []
                for v in value {
                    if v != nil {
                        var model = GetUnassociatedCustomerResponseBody.InviteInfoList.InviteInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.inviteInfo = tmp
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var page: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var inviteInfoList: GetUnassociatedCustomerResponseBody.InviteInfoList?

    public var message: String?

    public var pageInfo: GetUnassociatedCustomerResponseBody.PageInfo?

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
        try self.inviteInfoList?.validate()
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.inviteInfoList != nil {
            map["InviteInfoList"] = self.inviteInfoList?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["InviteInfoList"] as? [String: Any?] {
            var model = GetUnassociatedCustomerResponseBody.InviteInfoList()
            model.fromMap(value)
            self.inviteInfoList = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = GetUnassociatedCustomerResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetUnassociatedCustomerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUnassociatedCustomerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUnassociatedCustomerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InviteSubAccountRequest : Tea.TeaModel {
    public class AccountInfoList : Tea.TeaModel {
        public var accountNickname: String?

        public var creditLine: String?

        public var customerBd: String?

        public var customerId: String?

        public var emailAddress: String?

        public var newBuyStatus: String?

        public var remark: String?

        public var subAccountType: String?

        public var zeroCreditShutdownPolicy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountNickname != nil {
                map["AccountNickname"] = self.accountNickname!
            }
            if self.creditLine != nil {
                map["CreditLine"] = self.creditLine!
            }
            if self.customerBd != nil {
                map["CustomerBd"] = self.customerBd!
            }
            if self.customerId != nil {
                map["CustomerId"] = self.customerId!
            }
            if self.emailAddress != nil {
                map["EmailAddress"] = self.emailAddress!
            }
            if self.newBuyStatus != nil {
                map["NewBuyStatus"] = self.newBuyStatus!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.subAccountType != nil {
                map["SubAccountType"] = self.subAccountType!
            }
            if self.zeroCreditShutdownPolicy != nil {
                map["ZeroCreditShutdownPolicy"] = self.zeroCreditShutdownPolicy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountNickname"] as? String {
                self.accountNickname = value
            }
            if let value = dict["CreditLine"] as? String {
                self.creditLine = value
            }
            if let value = dict["CustomerBd"] as? String {
                self.customerBd = value
            }
            if let value = dict["CustomerId"] as? String {
                self.customerId = value
            }
            if let value = dict["EmailAddress"] as? String {
                self.emailAddress = value
            }
            if let value = dict["NewBuyStatus"] as? String {
                self.newBuyStatus = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["SubAccountType"] as? String {
                self.subAccountType = value
            }
            if let value = dict["ZeroCreditShutdownPolicy"] as? String {
                self.zeroCreditShutdownPolicy = value
            }
        }
    }
    public var accountInfoList: [InviteSubAccountRequest.AccountInfoList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountInfoList != nil {
            var tmp : [Any] = []
            for k in self.accountInfoList! {
                tmp.append(k.toMap())
            }
            map["AccountInfoList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountInfoList"] as? [Any?] {
            var tmp : [InviteSubAccountRequest.AccountInfoList] = []
            for v in value {
                if v != nil {
                    var model = InviteSubAccountRequest.AccountInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.accountInfoList = tmp
        }
    }
}

public class InviteSubAccountResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public class Result : Tea.TeaModel {
                public var days: Int32?

                public var inviteId: Int64?

                public var regUrl: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.days != nil {
                        map["Days"] = self.days!
                    }
                    if self.inviteId != nil {
                        map["InviteId"] = self.inviteId!
                    }
                    if self.regUrl != nil {
                        map["RegUrl"] = self.regUrl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Days"] as? Int32 {
                        self.days = value
                    }
                    if let value = dict["InviteId"] as? Int64 {
                        self.inviteId = value
                    }
                    if let value = dict["RegUrl"] as? String {
                        self.regUrl = value
                    }
                }
            }
            public var code: String?

            public var message: String?

            public var result: InviteSubAccountResponseBody.Results.Result.Result?

            public var success: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.result?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.result != nil {
                    map["Result"] = self.result?.toMap()
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["Result"] as? [String: Any?] {
                    var model = InviteSubAccountResponseBody.Results.Result.Result()
                    model.fromMap(value)
                    self.result = model
                }
                if let value = dict["Success"] as? Bool {
                    self.success = value
                }
            }
        }
        public var result: [InviteSubAccountResponseBody.Results.Result]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
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
            if let value = dict["Result"] as? [Any?] {
                var tmp : [InviteSubAccountResponseBody.Results.Result] = []
                for v in value {
                    if v != nil {
                        var model = InviteSubAccountResponseBody.Results.Result()
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
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var results: InviteSubAccountResponseBody.Results?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.results?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.results != nil {
            map["Results"] = self.results?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [String: Any?] {
            var model = InviteSubAccountResponseBody.Results()
            model.fromMap(value)
            self.results = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class InviteSubAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InviteSubAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = InviteSubAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class IssueCouponForCustomerRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var couponTemplateId: Int64?

    public var isUseBenefit: Bool?

    public var uidlist: String?

    public override init() {
        super.init()
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
        if self.couponTemplateId != nil {
            map["CouponTemplateId"] = self.couponTemplateId!
        }
        if self.isUseBenefit != nil {
            map["IsUseBenefit"] = self.isUseBenefit!
        }
        if self.uidlist != nil {
            map["Uidlist"] = self.uidlist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["CouponTemplateId"] as? Int64 {
            self.couponTemplateId = value
        }
        if let value = dict["IsUseBenefit"] as? Bool {
            self.isUseBenefit = value
        }
        if let value = dict["Uidlist"] as? String {
            self.uidlist = value
        }
    }
}

public class IssueCouponForCustomerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var couponTemplateId: Int64?

        public var createTime: String?

        public var uidlist: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.couponTemplateId != nil {
                map["CouponTemplateId"] = self.couponTemplateId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.uidlist != nil {
                map["Uidlist"] = self.uidlist!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CouponTemplateId"] as? Int64 {
                self.couponTemplateId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Uidlist"] as? String {
                self.uidlist = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var data: IssueCouponForCustomerResponseBody.Data?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = IssueCouponForCustomerResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
    }
}

public class IssueCouponForCustomerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IssueCouponForCustomerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = IssueCouponForCustomerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCountriesResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String]?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String] {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListCountriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCountriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListCountriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCouponUsageRequest : Tea.TeaModel {
    public var account: String?

    public var couponTemplateId: Int64?

    public var page: Int32?

    public var pageSize: Int32?

    public var status: String?

    public var uid: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.couponTemplateId != nil {
            map["CouponTemplateId"] = self.couponTemplateId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? String {
            self.account = value
        }
        if let value = dict["CouponTemplateId"] as? Int64 {
            self.couponTemplateId = value
        }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Uid"] as? Int64 {
            self.uid = value
        }
    }
}

public class ListCouponUsageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var account: String?

        public var amount: Double?

        public var balance: Double?

        public var couponId: String?

        public var couponTemplateId: Int64?

        public var effDate: String?

        public var publishDate: String?

        public var status: String?

        public var uid: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                map["Account"] = self.account!
            }
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.balance != nil {
                map["Balance"] = self.balance!
            }
            if self.couponId != nil {
                map["CouponId"] = self.couponId!
            }
            if self.couponTemplateId != nil {
                map["CouponTemplateId"] = self.couponTemplateId!
            }
            if self.effDate != nil {
                map["EffDate"] = self.effDate!
            }
            if self.publishDate != nil {
                map["PublishDate"] = self.publishDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Account"] as? String {
                self.account = value
            }
            if let value = dict["Amount"] as? Double {
                self.amount = value
            }
            if let value = dict["Balance"] as? Double {
                self.balance = value
            }
            if let value = dict["CouponId"] as? String {
                self.couponId = value
            }
            if let value = dict["CouponTemplateId"] as? Int64 {
                self.couponTemplateId = value
            }
            if let value = dict["EffDate"] as? String {
                self.effDate = value
            }
            if let value = dict["PublishDate"] as? String {
                self.publishDate = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Uid"] as? Int64 {
                self.uid = value
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var page: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var code: String?

    public var data: [ListCouponUsageResponseBody.Data]?

    public var message: String?

    public var pageInfo: ListCouponUsageResponseBody.PageInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListCouponUsageResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListCouponUsageResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = ListCouponUsageResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListCouponUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCouponUsageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListCouponUsageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExportTasksRequest : Tea.TeaModel {
    public var language: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var sceneCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sceneCode != nil {
            map["SceneCode"] = self.sceneCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SceneCode"] as? String {
            self.sceneCode = value
        }
    }
}

public class ListExportTasksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var fileName: String?

        public var id: Int64?

        public var message: String?

        public var status: String?

        public var statusCode: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusCode != nil {
                map["StatusCode"] = self.statusCode!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusCode"] as? String {
                self.statusCode = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var code: String?

    public var data: [ListExportTasksResponseBody.Data]?

    public var message: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var total: Int32?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListExportTasksResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListExportTasksResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListExportTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExportTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListExportTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryReversedDeductionHistoryRequest : Tea.TeaModel {
    public var endDate: String?

    public var language: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var startDate: String?

    public var uid: Int64?

    public override init() {
        super.init()
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
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["Uid"] as? Int64 {
            self.uid = value
        }
    }
}

public class QueryReversedDeductionHistoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var offsetAmount: String?

        public var operationSubmitType: String?

        public var operationTime: String?

        public var operationUid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.offsetAmount != nil {
                map["OffsetAmount"] = self.offsetAmount!
            }
            if self.operationSubmitType != nil {
                map["OperationSubmitType"] = self.operationSubmitType!
            }
            if self.operationTime != nil {
                map["OperationTime"] = self.operationTime!
            }
            if self.operationUid != nil {
                map["OperationUid"] = self.operationUid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OffsetAmount"] as? String {
                self.offsetAmount = value
            }
            if let value = dict["OperationSubmitType"] as? String {
                self.operationSubmitType = value
            }
            if let value = dict["OperationTime"] as? String {
                self.operationTime = value
            }
            if let value = dict["OperationUid"] as? String {
                self.operationUid = value
            }
        }
    }
    public var code: String?

    public var data: [QueryReversedDeductionHistoryResponseBody.Data]?

    public var message: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var total: Int32?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryReversedDeductionHistoryResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryReversedDeductionHistoryResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class QueryReversedDeductionHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryReversedDeductionHistoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryReversedDeductionHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuotaListExportPagedRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var language: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class QuotaListExportPagedResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var fileName: String?

        public var message: String?

        public var status: String?

        public var statusCode: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusCode != nil {
                map["StatusCode"] = self.statusCode!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusCode"] as? String {
                self.statusCode = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var code: String?

    public var data: [QuotaListExportPagedResponseBody.Data]?

    public var msg: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var total: Int32?

    public override init() {
        super.init()
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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QuotaListExportPagedResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QuotaListExportPagedResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class QuotaListExportPagedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuotaListExportPagedResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuotaListExportPagedResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResendEmailRequest : Tea.TeaModel {
    public var inviteId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inviteId != nil {
            map["InviteId"] = self.inviteId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InviteId"] as? Int64 {
            self.inviteId = value
        }
    }
}

public class ResendEmailResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ResendEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResendEmailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ResendEmailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetAccountInfoRequest : Tea.TeaModel {
    public var accountNickname: String?

    public var customerBd: String?

    public var remark: String?

    public var uid: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountNickname != nil {
            map["AccountNickname"] = self.accountNickname!
        }
        if self.customerBd != nil {
            map["CustomerBd"] = self.customerBd!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountNickname"] as? String {
            self.accountNickname = value
        }
        if let value = dict["CustomerBd"] as? String {
            self.customerBd = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["Uid"] as? Int64 {
            self.uid = value
        }
    }
}

public class SetAccountInfoResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetAccountInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetAccountInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetAccountInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetCreditLineRequest : Tea.TeaModel {
    public var creditLine: String?

    public var uid: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.creditLine != nil {
            map["CreditLine"] = self.creditLine!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreditLine"] as? String {
            self.creditLine = value
        }
        if let value = dict["Uid"] as? Int64 {
            self.uid = value
        }
    }
}

public class SetCreditLineResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetCreditLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetCreditLineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetCreditLineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetWarningThresholdRequest : Tea.TeaModel {
    public var uid: Int64?

    public var warningValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        if self.warningValue != nil {
            map["WarningValue"] = self.warningValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Uid"] as? Int64 {
            self.uid = value
        }
        if let value = dict["WarningValue"] as? String {
            self.warningValue = value
        }
    }
}

public class SetWarningThresholdResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetWarningThresholdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetWarningThresholdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetWarningThresholdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubscriptionBillRequest : Tea.TeaModel {
    public var beginBillingCycle: String?

    public var billFormat: String?

    public var bucketOwnerId: Int64?

    public var subscribeBucket: String?

    public var subscribeSegmentSize: Int32?

    public var subscribeType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginBillingCycle != nil {
            map["BeginBillingCycle"] = self.beginBillingCycle!
        }
        if self.billFormat != nil {
            map["BillFormat"] = self.billFormat!
        }
        if self.bucketOwnerId != nil {
            map["BucketOwnerId"] = self.bucketOwnerId!
        }
        if self.subscribeBucket != nil {
            map["SubscribeBucket"] = self.subscribeBucket!
        }
        if self.subscribeSegmentSize != nil {
            map["SubscribeSegmentSize"] = self.subscribeSegmentSize!
        }
        if self.subscribeType != nil {
            map["SubscribeType"] = self.subscribeType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginBillingCycle"] as? String {
            self.beginBillingCycle = value
        }
        if let value = dict["BillFormat"] as? String {
            self.billFormat = value
        }
        if let value = dict["BucketOwnerId"] as? Int64 {
            self.bucketOwnerId = value
        }
        if let value = dict["SubscribeBucket"] as? String {
            self.subscribeBucket = value
        }
        if let value = dict["SubscribeSegmentSize"] as? Int32 {
            self.subscribeSegmentSize = value
        }
        if let value = dict["SubscribeType"] as? String {
            self.subscribeType = value
        }
    }
}

public class SubscriptionBillResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SubscriptionBillResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubscriptionBillResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SubscriptionBillResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
