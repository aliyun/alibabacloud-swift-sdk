import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SubscribeType") {
            self.subscribeType = dict["SubscribeType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelSubscriptionBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("ApplicableProducts") {
            self.applicableProducts = dict["ApplicableProducts"] as! String
        }
        if dict.keys.contains("CostBearer") {
            self.costBearer = dict["CostBearer"] as! String
        }
        if dict.keys.contains("CouponDescription") {
            self.couponDescription = dict["CouponDescription"] as! String
        }
        if dict.keys.contains("Expireddate") {
            self.expireddate = dict["Expireddate"] as! String
        }
        if dict.keys.contains("LimitPerPerson") {
            self.limitPerPerson = dict["LimitPerPerson"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! [String]
        }
        if dict.keys.contains("PurchaseType") {
            self.purchaseType = dict["PurchaseType"] as! String
        }
        if dict.keys.contains("ReasonForApplication") {
            self.reasonForApplication = dict["ReasonForApplication"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("Vailddate") {
            self.vailddate = dict["Vailddate"] as! String
        }
        if dict.keys.contains("Vaildperioddays") {
            self.vaildperioddays = dict["Vaildperioddays"] as! String
        }
        if dict.keys.contains("ValidUntil") {
            self.validUntil = dict["ValidUntil"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("ApplicableProducts") {
            self.applicableProducts = dict["ApplicableProducts"] as! String
        }
        if dict.keys.contains("CostBearer") {
            self.costBearer = dict["CostBearer"] as! String
        }
        if dict.keys.contains("CouponDescription") {
            self.couponDescription = dict["CouponDescription"] as! String
        }
        if dict.keys.contains("Expireddate") {
            self.expireddate = dict["Expireddate"] as! String
        }
        if dict.keys.contains("LimitPerPerson") {
            self.limitPerPerson = dict["LimitPerPerson"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productTypeShrink = dict["ProductType"] as! String
        }
        if dict.keys.contains("PurchaseType") {
            self.purchaseType = dict["PurchaseType"] as! String
        }
        if dict.keys.contains("ReasonForApplication") {
            self.reasonForApplication = dict["ReasonForApplication"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("Vailddate") {
            self.vailddate = dict["Vailddate"] as! String
        }
        if dict.keys.contains("Vaildperioddays") {
            self.vaildperioddays = dict["Vaildperioddays"] as! String
        }
        if dict.keys.contains("ValidUntil") {
            self.validUntil = dict["ValidUntil"] as! String
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicableProducts") {
                self.applicableProducts = dict["ApplicableProducts"] as! String
            }
            if dict.keys.contains("CostBearer") {
                self.costBearer = dict["CostBearer"] as! String
            }
            if dict.keys.contains("CouponTemplateID") {
                self.couponTemplateID = dict["CouponTemplateID"] as! Int64
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Expireddate") {
                self.expireddate = dict["Expireddate"] as! String
            }
            if dict.keys.contains("ProductType") {
                self.productType = dict["ProductType"] as! [String]
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("Vailddate") {
                self.vailddate = dict["Vailddate"] as! String
            }
            if dict.keys.contains("Vaildperioddays") {
                self.vaildperioddays = dict["Vaildperioddays"] as! String
            }
            if dict.keys.contains("ValidUntil") {
                self.validUntil = dict["ValidUntil"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateCouponTemplateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateCouponTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomerName") {
            self.customerName = dict["CustomerName"] as! String
        }
        if dict.keys.contains("CustomerSource") {
            self.customerSource = dict["CustomerSource"] as! String
        }
        if dict.keys.contains("CustomerSubTrade") {
            self.customerSubTrade = dict["CustomerSubTrade"] as! String
        }
        if dict.keys.contains("CustomerTrade") {
            self.customerTrade = dict["CustomerTrade"] as! String
        }
        if dict.keys.contains("Nation") {
            self.nation = dict["Nation"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateCustomerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("EndUserPk") {
            self.endUserPk = dict["EndUserPk"] as! Int64
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("OperationType") {
            self.operationType = dict["OperationType"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OperationSubmitType") {
                self.operationSubmitType = dict["OperationSubmitType"] as! String
            }
            if dict.keys.contains("OperationTime") {
                self.operationTime = dict["OperationTime"] as! String
            }
            if dict.keys.contains("OperationTypeCode") {
                self.operationTypeCode = dict["OperationTypeCode"] as! String
            }
            if dict.keys.contains("OperationTypeDesc") {
                self.operationTypeDesc = dict["OperationTypeDesc"] as! String
            }
            if dict.keys.contains("OperationUid") {
                self.operationUid = dict["OperationUid"] as! String
            }
            if dict.keys.contains("UpdateAfterAmount") {
                self.updateAfterAmount = dict["UpdateAfterAmount"] as! String
            }
            if dict.keys.contains("UpdateAmount") {
                self.updateAmount = dict["UpdateAmount"] as! String
            }
            if dict.keys.contains("UpdateBeforeAmount") {
                self.updateBeforeAmount = dict["UpdateBeforeAmount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [CustomerQuotaRecordListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = CustomerQuotaRecordListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CustomerQuotaRecordListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeductAmount") {
            self.deductAmount = dict["DeductAmount"] as! String
        }
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeductOutstandingBalanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreditStatus") {
            self.creditStatus = dict["CreditStatus"] as! String
        }
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EditEndUserStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewBuyStatus") {
            self.newBuyStatus = dict["NewBuyStatus"] as! String
        }
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EditNewBuyStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ShutdownPolicy") {
            self.shutdownPolicy = dict["ShutdownPolicy"] as! String
        }
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EditZeroCreditShutdownResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("EndUserPk") {
            self.endUserPk = dict["EndUserPk"] as! Int64
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("OperationType") {
            self.operationType = dict["OperationType"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cost") {
                self.cost = dict["Cost"] as! Int32
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ExportCustomerQuotaRecordResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ExportCustomerQuotaRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! Int64
        }
        if dict.keys.contains("UserType") {
            self.userType = dict["UserType"] as! String
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

            public var customerBd: String?

            public var delayAmount: String?

            public var delayStatus: String?

            public var email: String?

            public var mobile: String?

            public var newBuyStatus: String?

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
                if self.customerBd != nil {
                    map["CustomerBd"] = self.customerBd!
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountNickname") {
                    self.accountNickname = dict["AccountNickname"] as! String
                }
                if dict.keys.contains("AliyunId") {
                    self.aliyunId = dict["AliyunId"] as! String
                }
                if dict.keys.contains("AssociationSuccessTime") {
                    self.associationSuccessTime = dict["AssociationSuccessTime"] as! String
                }
                if dict.keys.contains("Cid") {
                    self.cid = dict["Cid"] as! Int64
                }
                if dict.keys.contains("CustomerBd") {
                    self.customerBd = dict["CustomerBd"] as! String
                }
                if dict.keys.contains("DelayAmount") {
                    self.delayAmount = dict["DelayAmount"] as! String
                }
                if dict.keys.contains("DelayStatus") {
                    self.delayStatus = dict["DelayStatus"] as! String
                }
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("Mobile") {
                    self.mobile = dict["Mobile"] as! String
                }
                if dict.keys.contains("NewBuyStatus") {
                    self.newBuyStatus = dict["NewBuyStatus"] as! String
                }
                if dict.keys.contains("Remark") {
                    self.remark = dict["Remark"] as! String
                }
                if dict.keys.contains("SubAccountType") {
                    self.subAccountType = dict["SubAccountType"] as! Int32
                }
                if dict.keys.contains("Uid") {
                    self.uid = dict["Uid"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountInfo") {
                var tmp : [GetAccountInfoResponseBody.AccountInfoList.AccountInfo] = []
                for v in dict["AccountInfo"] as! [Any] {
                    var model = GetAccountInfoResponseBody.AccountInfoList.AccountInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Page") {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountInfoList") {
            var model = GetAccountInfoResponseBody.AccountInfoList()
            model.fromMap(dict["AccountInfoList"] as! [String: Any])
            self.accountInfoList = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageInfo") {
            var model = GetAccountInfoResponseBody.PageInfo()
            model.fromMap(dict["PageInfo"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAccountInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ProductType") {
                self.productType = dict["ProductType"] as! Any
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [GetCoupondeductProductCodeResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetCoupondeductProductCodeResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCoupondeductProductCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountStatus") {
                self.accountStatus = dict["AccountStatus"] as! String
            }
            if dict.keys.contains("AlarmThreshold") {
                self.alarmThreshold = dict["AlarmThreshold"] as! String
            }
            if dict.keys.contains("AvailableCredit") {
                self.availableCredit = dict["AvailableCredit"] as! String
            }
            if dict.keys.contains("ConsumedUndeductedValue") {
                self.consumedUndeductedValue = dict["ConsumedUndeductedValue"] as! String
            }
            if dict.keys.contains("CreditLine") {
                self.creditLine = dict["CreditLine"] as! String
            }
            if dict.keys.contains("OutstandingBalance") {
                self.outstandingBalance = dict["OutstandingBalance"] as! String
            }
            if dict.keys.contains("ZeroCreditShutdownPolicy") {
                self.zeroCreditShutdownPolicy = dict["ZeroCreditShutdownPolicy"] as! String
            }
            if dict.keys.contains("newBuyStatus") {
                self.newBuyStatus = dict["newBuyStatus"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetCreditInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCreditInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomerAccount") {
            self.customerAccount = dict["CustomerAccount"] as! String
        }
        if dict.keys.contains("CustomerManager") {
            self.customerManager = dict["CustomerManager"] as! String
        }
        if dict.keys.contains("CustomerUid") {
            self.customerUid = dict["CustomerUid"] as! Int64
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("OrderSource") {
            self.orderSource = dict["OrderSource"] as! Int32
        }
        if dict.keys.contains("OrderStatus") {
            self.orderStatus = dict["OrderStatus"] as! Int32
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("TimeType") {
            self.timeType = dict["TimeType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomerAccount") {
                self.customerAccount = dict["CustomerAccount"] as! String
            }
            if dict.keys.contains("CustomerManager") {
                self.customerManager = dict["CustomerManager"] as! String
            }
            if dict.keys.contains("CustomerNo") {
                self.customerNo = dict["CustomerNo"] as! Int64
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
            if dict.keys.contains("OrderSource") {
                self.orderSource = dict["OrderSource"] as! String
            }
            if dict.keys.contains("OrderStatus") {
                self.orderStatus = dict["OrderStatus"] as! Int32
            }
            if dict.keys.contains("OrderType") {
                self.orderType = dict["OrderType"] as! String
            }
            if dict.keys.contains("OriginalCost") {
                self.originalCost = dict["OriginalCost"] as! Double
            }
            if dict.keys.contains("PaymentMethod") {
                self.paymentMethod = dict["PaymentMethod"] as! String
            }
            if dict.keys.contains("PaymentTime") {
                self.paymentTime = dict["PaymentTime"] as! String
            }
            if dict.keys.contains("PretaxCost") {
                self.pretaxCost = dict["PretaxCost"] as! Double
            }
            if dict.keys.contains("ProductDetail") {
                self.productDetail = dict["ProductDetail"] as! String
            }
            if dict.keys.contains("ProductType") {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("TimeToOrder") {
                self.timeToOrder = dict["TimeToOrder"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [GetCustomerOrdersResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetCustomerOrdersResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCustomerOrdersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwner") {
            self.billOwner = dict["BillOwner"] as! String
        }
        if dict.keys.contains("BillType") {
            self.billType = dict["BillType"] as! String
        }
        if dict.keys.contains("Date") {
            self.date = dict["Date"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BillLinkCSV") {
                self.billLinkCSV = dict["BillLinkCSV"] as! String
            }
            if dict.keys.contains("BillLinkXLSX") {
                self.billLinkXLSX = dict["BillLinkXLSX"] as! String
            }
            if dict.keys.contains("BillOwner") {
                self.billOwner = dict["BillOwner"] as! String
            }
            if dict.keys.contains("BillType") {
                self.billType = dict["BillType"] as! String
            }
            if dict.keys.contains("SpendingTime") {
                self.spendingTime = dict["SpendingTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetDailyBillResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetDailyBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InviteId") {
                self.inviteId = dict["InviteId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InviteStatusList") {
            var tmp : [GetInviteStatusRequest.InviteStatusList] = []
            for v in dict["InviteStatusList"] as! [Any] {
                var model = GetInviteStatusRequest.InviteStatusList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AssociationSuccessTime") {
                        self.associationSuccessTime = dict["AssociationSuccessTime"] as! String
                    }
                    if dict.keys.contains("Cid") {
                        self.cid = dict["Cid"] as! Int64
                    }
                    if dict.keys.contains("GmtCreate") {
                        self.gmtCreate = dict["GmtCreate"] as! String
                    }
                    if dict.keys.contains("ParentId") {
                        self.parentId = dict["ParentId"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! Int32
                    }
                    if dict.keys.contains("SubAccountType") {
                        self.subAccountType = dict["SubAccountType"] as! String
                    }
                    if dict.keys.contains("Uid") {
                        self.uid = dict["Uid"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("InviteStatusList") {
                    var model = GetInviteStatusResponseBody.Data.InviteStatus.InviteStatusList()
                    model.fromMap(dict["InviteStatusList"] as! [String: Any])
                    self.inviteStatusList = model
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InviteStatus") {
                var tmp : [GetInviteStatusResponseBody.Data.InviteStatus] = []
                for v in dict["InviteStatus"] as! [Any] {
                    var model = GetInviteStatusResponseBody.Data.InviteStatus()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetInviteStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetInviteStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillOwner") {
            self.billOwner = dict["BillOwner"] as! String
        }
        if dict.keys.contains("BillType") {
            self.billType = dict["BillType"] as! String
        }
        if dict.keys.contains("Month") {
            self.month = dict["Month"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BillLinkCSV") {
                self.billLinkCSV = dict["BillLinkCSV"] as! String
            }
            if dict.keys.contains("BillLinkXLSX") {
                self.billLinkXLSX = dict["BillLinkXLSX"] as! String
            }
            if dict.keys.contains("BillOwner") {
                self.billOwner = dict["BillOwner"] as! String
            }
            if dict.keys.contains("BillType") {
                self.billType = dict["BillType"] as! String
            }
            if dict.keys.contains("InvoiceLink") {
                self.invoiceLink = dict["InvoiceLink"] as! String
            }
            if dict.keys.contains("RefundInvoiceFlag") {
                self.refundInvoiceFlag = dict["RefundInvoiceFlag"] as! Bool
            }
            if dict.keys.contains("RefundInvoiceLink") {
                self.refundInvoiceLink = dict["RefundInvoiceLink"] as! String
            }
            if dict.keys.contains("SpendingTime") {
                self.spendingTime = dict["SpendingTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetMonthlyBillResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetMonthlyBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountNickname") {
                    self.accountNickname = dict["AccountNickname"] as! String
                }
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("InviteId") {
                    self.inviteId = dict["InviteId"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InviteInfo") {
                var tmp : [GetUnassociatedCustomerResponseBody.InviteInfoList.InviteInfo] = []
                for v in dict["InviteInfo"] as! [Any] {
                    var model = GetUnassociatedCustomerResponseBody.InviteInfoList.InviteInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Page") {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("InviteInfoList") {
            var model = GetUnassociatedCustomerResponseBody.InviteInfoList()
            model.fromMap(dict["InviteInfoList"] as! [String: Any])
            self.inviteInfoList = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageInfo") {
            var model = GetUnassociatedCustomerResponseBody.PageInfo()
            model.fromMap(dict["PageInfo"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetUnassociatedCustomerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountNickname") {
                self.accountNickname = dict["AccountNickname"] as! String
            }
            if dict.keys.contains("CreditLine") {
                self.creditLine = dict["CreditLine"] as! String
            }
            if dict.keys.contains("CustomerBd") {
                self.customerBd = dict["CustomerBd"] as! String
            }
            if dict.keys.contains("CustomerId") {
                self.customerId = dict["CustomerId"] as! String
            }
            if dict.keys.contains("EmailAddress") {
                self.emailAddress = dict["EmailAddress"] as! String
            }
            if dict.keys.contains("NewBuyStatus") {
                self.newBuyStatus = dict["NewBuyStatus"] as! String
            }
            if dict.keys.contains("Remark") {
                self.remark = dict["Remark"] as! String
            }
            if dict.keys.contains("SubAccountType") {
                self.subAccountType = dict["SubAccountType"] as! String
            }
            if dict.keys.contains("ZeroCreditShutdownPolicy") {
                self.zeroCreditShutdownPolicy = dict["ZeroCreditShutdownPolicy"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountInfoList") {
            var tmp : [InviteSubAccountRequest.AccountInfoList] = []
            for v in dict["AccountInfoList"] as! [Any] {
                var model = InviteSubAccountRequest.AccountInfoList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Days") {
                        self.days = dict["Days"] as! Int32
                    }
                    if dict.keys.contains("InviteId") {
                        self.inviteId = dict["InviteId"] as! Int64
                    }
                    if dict.keys.contains("RegUrl") {
                        self.regUrl = dict["RegUrl"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Result") {
                    var model = InviteSubAccountResponseBody.Results.Result.Result()
                    model.fromMap(dict["Result"] as! [String: Any])
                    self.result = model
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Result") {
                var tmp : [InviteSubAccountResponseBody.Results.Result] = []
                for v in dict["Result"] as! [Any] {
                    var model = InviteSubAccountResponseBody.Results.Result()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Results") {
            var model = InviteSubAccountResponseBody.Results()
            model.fromMap(dict["Results"] as! [String: Any])
            self.results = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = InviteSubAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class IssueCouponForCustomerRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var couponTemplateId: Int64?

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
        if self.uidlist != nil {
            map["Uidlist"] = self.uidlist!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("CouponTemplateId") {
            self.couponTemplateId = dict["CouponTemplateId"] as! Int64
        }
        if dict.keys.contains("Uidlist") {
            self.uidlist = dict["Uidlist"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CouponTemplateId") {
                self.couponTemplateId = dict["CouponTemplateId"] as! Int64
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Uidlist") {
                self.uidlist = dict["Uidlist"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("data") {
            var model = IssueCouponForCustomerResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = IssueCouponForCustomerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [String]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCountriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("CouponTemplateId") {
            self.couponTemplateId = dict["CouponTemplateId"] as! Int64
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Account") {
                self.account = dict["Account"] as! String
            }
            if dict.keys.contains("Amount") {
                self.amount = dict["Amount"] as! Double
            }
            if dict.keys.contains("Balance") {
                self.balance = dict["Balance"] as! Double
            }
            if dict.keys.contains("CouponId") {
                self.couponId = dict["CouponId"] as! String
            }
            if dict.keys.contains("CouponTemplateId") {
                self.couponTemplateId = dict["CouponTemplateId"] as! Int64
            }
            if dict.keys.contains("EffDate") {
                self.effDate = dict["EffDate"] as! String
            }
            if dict.keys.contains("PublishDate") {
                self.publishDate = dict["PublishDate"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Uid") {
                self.uid = dict["Uid"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Page") {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListCouponUsageResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListCouponUsageResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageInfo") {
            var model = ListCouponUsageResponseBody.PageInfo()
            model.fromMap(dict["PageInfo"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCouponUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("FileName") {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusCode") {
                self.statusCode = dict["StatusCode"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [QuotaListExportPagedResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QuotaListExportPagedResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QuotaListExportPagedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InviteId") {
            self.inviteId = dict["InviteId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ResendEmailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountNickname") {
            self.accountNickname = dict["AccountNickname"] as! String
        }
        if dict.keys.contains("CustomerBd") {
            self.customerBd = dict["CustomerBd"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetAccountInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreditLine") {
            self.creditLine = dict["CreditLine"] as! String
        }
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetCreditLineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! Int64
        }
        if dict.keys.contains("WarningValue") {
            self.warningValue = dict["WarningValue"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetWarningThresholdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginBillingCycle") {
            self.beginBillingCycle = dict["BeginBillingCycle"] as! String
        }
        if dict.keys.contains("BillFormat") {
            self.billFormat = dict["BillFormat"] as! String
        }
        if dict.keys.contains("BucketOwnerId") {
            self.bucketOwnerId = dict["BucketOwnerId"] as! Int64
        }
        if dict.keys.contains("SubscribeBucket") {
            self.subscribeBucket = dict["SubscribeBucket"] as! String
        }
        if dict.keys.contains("SubscribeSegmentSize") {
            self.subscribeSegmentSize = dict["SubscribeSegmentSize"] as! Int32
        }
        if dict.keys.contains("SubscribeType") {
            self.subscribeType = dict["SubscribeType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SubscriptionBillResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
