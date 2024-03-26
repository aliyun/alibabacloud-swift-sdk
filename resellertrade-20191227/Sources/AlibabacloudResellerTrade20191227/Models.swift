import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateCouponTemplateRequest : Tea.TeaModel {
    public class Currency : Tea.TeaModel {
        public var currencyCode: String?

        public var defaultFractionDigits: Int32?

        public var numericCode: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currencyCode != nil {
                map["CurrencyCode"] = self.currencyCode!
            }
            if self.defaultFractionDigits != nil {
                map["DefaultFractionDigits"] = self.defaultFractionDigits!
            }
            if self.numericCode != nil {
                map["NumericCode"] = self.numericCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrencyCode") && dict["CurrencyCode"] != nil {
                self.currencyCode = dict["CurrencyCode"] as! String
            }
            if dict.keys.contains("DefaultFractionDigits") && dict["DefaultFractionDigits"] != nil {
                self.defaultFractionDigits = dict["DefaultFractionDigits"] as! Int32
            }
            if dict.keys.contains("NumericCode") && dict["NumericCode"] != nil {
                self.numericCode = dict["NumericCode"] as! Int32
            }
        }
    }
    public var activitySite: Int32?

    public var bid: Int64?

    public var certainMoney: Double?

    public var clientType: String?

    public var commodityType: String?

    public var controlType: String?

    public var couponAmount: Double?

    public var couponEndTime: String?

    public var couponFixedType: String?

    public var couponStartTime: String?

    public var couponType: String?

    public var currency: CreateCouponTemplateRequest.Currency?

    public var description_: String?

    public var discountRate: Double?

    public var endTime: String?

    public var extendsMap: [String: String]?

    public var fromApp: String?

    public var itemCodeSet: [String]?

    public var market: String?

    public var marketType: Int64?

    public var maxRelease: Double?

    public var messageId: String?

    public var name: String?

    public var operator_: String?

    public var orderTypeSet: [String]?

    public var perLimitNum: Int32?

    public var promotionId: Int64?

    public var reason: String?

    public var relativeSecond: Int32?

    public var requestId: String?

    public var selectionIdSet: [String]?

    public var sellerId: Int64?

    public var site: String?

    public var spId: Int64?

    public var startTime: String?

    public var type: String?

    public var universalType: String?

    public var upperLimit: Double?

    public var usageCount: Int32?

    public var useScene: String?

    public var userPkAmount: String?

    public var validityType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.currency?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activitySite != nil {
            map["ActivitySite"] = self.activitySite!
        }
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.certainMoney != nil {
            map["CertainMoney"] = self.certainMoney!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.commodityType != nil {
            map["CommodityType"] = self.commodityType!
        }
        if self.controlType != nil {
            map["ControlType"] = self.controlType!
        }
        if self.couponAmount != nil {
            map["CouponAmount"] = self.couponAmount!
        }
        if self.couponEndTime != nil {
            map["CouponEndTime"] = self.couponEndTime!
        }
        if self.couponFixedType != nil {
            map["CouponFixedType"] = self.couponFixedType!
        }
        if self.couponStartTime != nil {
            map["CouponStartTime"] = self.couponStartTime!
        }
        if self.couponType != nil {
            map["CouponType"] = self.couponType!
        }
        if self.currency != nil {
            map["Currency"] = self.currency?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.discountRate != nil {
            map["DiscountRate"] = self.discountRate!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.extendsMap != nil {
            map["ExtendsMap"] = self.extendsMap!
        }
        if self.fromApp != nil {
            map["FromApp"] = self.fromApp!
        }
        if self.itemCodeSet != nil {
            map["ItemCodeSet"] = self.itemCodeSet!
        }
        if self.market != nil {
            map["Market"] = self.market!
        }
        if self.marketType != nil {
            map["MarketType"] = self.marketType!
        }
        if self.maxRelease != nil {
            map["MaxRelease"] = self.maxRelease!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.orderTypeSet != nil {
            map["OrderTypeSet"] = self.orderTypeSet!
        }
        if self.perLimitNum != nil {
            map["PerLimitNum"] = self.perLimitNum!
        }
        if self.promotionId != nil {
            map["PromotionId"] = self.promotionId!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.relativeSecond != nil {
            map["RelativeSecond"] = self.relativeSecond!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.selectionIdSet != nil {
            map["SelectionIdSet"] = self.selectionIdSet!
        }
        if self.sellerId != nil {
            map["SellerId"] = self.sellerId!
        }
        if self.site != nil {
            map["Site"] = self.site!
        }
        if self.spId != nil {
            map["SpId"] = self.spId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.universalType != nil {
            map["UniversalType"] = self.universalType!
        }
        if self.upperLimit != nil {
            map["UpperLimit"] = self.upperLimit!
        }
        if self.usageCount != nil {
            map["UsageCount"] = self.usageCount!
        }
        if self.useScene != nil {
            map["UseScene"] = self.useScene!
        }
        if self.userPkAmount != nil {
            map["UserPkAmount"] = self.userPkAmount!
        }
        if self.validityType != nil {
            map["ValidityType"] = self.validityType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivitySite") && dict["ActivitySite"] != nil {
            self.activitySite = dict["ActivitySite"] as! Int32
        }
        if dict.keys.contains("Bid") && dict["Bid"] != nil {
            self.bid = dict["Bid"] as! Int64
        }
        if dict.keys.contains("CertainMoney") && dict["CertainMoney"] != nil {
            self.certainMoney = dict["CertainMoney"] as! Double
        }
        if dict.keys.contains("ClientType") && dict["ClientType"] != nil {
            self.clientType = dict["ClientType"] as! String
        }
        if dict.keys.contains("CommodityType") && dict["CommodityType"] != nil {
            self.commodityType = dict["CommodityType"] as! String
        }
        if dict.keys.contains("ControlType") && dict["ControlType"] != nil {
            self.controlType = dict["ControlType"] as! String
        }
        if dict.keys.contains("CouponAmount") && dict["CouponAmount"] != nil {
            self.couponAmount = dict["CouponAmount"] as! Double
        }
        if dict.keys.contains("CouponEndTime") && dict["CouponEndTime"] != nil {
            self.couponEndTime = dict["CouponEndTime"] as! String
        }
        if dict.keys.contains("CouponFixedType") && dict["CouponFixedType"] != nil {
            self.couponFixedType = dict["CouponFixedType"] as! String
        }
        if dict.keys.contains("CouponStartTime") && dict["CouponStartTime"] != nil {
            self.couponStartTime = dict["CouponStartTime"] as! String
        }
        if dict.keys.contains("CouponType") && dict["CouponType"] != nil {
            self.couponType = dict["CouponType"] as! String
        }
        if dict.keys.contains("Currency") && dict["Currency"] != nil {
            var model = CreateCouponTemplateRequest.Currency()
            model.fromMap(dict["Currency"] as! [String: Any])
            self.currency = model
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DiscountRate") && dict["DiscountRate"] != nil {
            self.discountRate = dict["DiscountRate"] as! Double
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ExtendsMap") && dict["ExtendsMap"] != nil {
            self.extendsMap = dict["ExtendsMap"] as! [String: String]
        }
        if dict.keys.contains("FromApp") && dict["FromApp"] != nil {
            self.fromApp = dict["FromApp"] as! String
        }
        if dict.keys.contains("ItemCodeSet") && dict["ItemCodeSet"] != nil {
            self.itemCodeSet = dict["ItemCodeSet"] as! [String]
        }
        if dict.keys.contains("Market") && dict["Market"] != nil {
            self.market = dict["Market"] as! String
        }
        if dict.keys.contains("MarketType") && dict["MarketType"] != nil {
            self.marketType = dict["MarketType"] as! Int64
        }
        if dict.keys.contains("MaxRelease") && dict["MaxRelease"] != nil {
            self.maxRelease = dict["MaxRelease"] as! Double
        }
        if dict.keys.contains("MessageId") && dict["MessageId"] != nil {
            self.messageId = dict["MessageId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Operator") && dict["Operator"] != nil {
            self.operator_ = dict["Operator"] as! String
        }
        if dict.keys.contains("OrderTypeSet") && dict["OrderTypeSet"] != nil {
            self.orderTypeSet = dict["OrderTypeSet"] as! [String]
        }
        if dict.keys.contains("PerLimitNum") && dict["PerLimitNum"] != nil {
            self.perLimitNum = dict["PerLimitNum"] as! Int32
        }
        if dict.keys.contains("PromotionId") && dict["PromotionId"] != nil {
            self.promotionId = dict["PromotionId"] as! Int64
        }
        if dict.keys.contains("Reason") && dict["Reason"] != nil {
            self.reason = dict["Reason"] as! String
        }
        if dict.keys.contains("RelativeSecond") && dict["RelativeSecond"] != nil {
            self.relativeSecond = dict["RelativeSecond"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SelectionIdSet") && dict["SelectionIdSet"] != nil {
            self.selectionIdSet = dict["SelectionIdSet"] as! [String]
        }
        if dict.keys.contains("SellerId") && dict["SellerId"] != nil {
            self.sellerId = dict["SellerId"] as! Int64
        }
        if dict.keys.contains("Site") && dict["Site"] != nil {
            self.site = dict["Site"] as! String
        }
        if dict.keys.contains("SpId") && dict["SpId"] != nil {
            self.spId = dict["SpId"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UniversalType") && dict["UniversalType"] != nil {
            self.universalType = dict["UniversalType"] as! String
        }
        if dict.keys.contains("UpperLimit") && dict["UpperLimit"] != nil {
            self.upperLimit = dict["UpperLimit"] as! Double
        }
        if dict.keys.contains("UsageCount") && dict["UsageCount"] != nil {
            self.usageCount = dict["UsageCount"] as! Int32
        }
        if dict.keys.contains("UseScene") && dict["UseScene"] != nil {
            self.useScene = dict["UseScene"] as! String
        }
        if dict.keys.contains("UserPkAmount") && dict["UserPkAmount"] != nil {
            self.userPkAmount = dict["UserPkAmount"] as! String
        }
        if dict.keys.contains("ValidityType") && dict["ValidityType"] != nil {
            self.validityType = dict["ValidityType"] as! String
        }
    }
}

public class CreateCouponTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var contextMap: [String: Any]?

    public var data: Int64?

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
        if self.contextMap != nil {
            map["ContextMap"] = self.contextMap!
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ContextMap") && dict["ContextMap"] != nil {
            self.contextMap = dict["ContextMap"] as! [String: Any]
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateCouponTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DiscardCouponListRequest : Tea.TeaModel {
    public var couponList: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.couponList != nil {
            map["CouponList"] = self.couponList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CouponList") && dict["CouponList"] != nil {
            self.couponList = dict["CouponList"] as! [Int64]
        }
    }
}

public class DiscardCouponListResponseBody : Tea.TeaModel {
    public var code: String?

    public var contextMap: [String: Any]?

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
        if self.contextMap != nil {
            map["ContextMap"] = self.contextMap!
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ContextMap") && dict["ContextMap"] != nil {
            self.contextMap = dict["ContextMap"] as! [String: Any]
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DiscardCouponListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DiscardCouponListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DiscardCouponListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCouponPageRequest : Tea.TeaModel {
    public var fromApp: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var sellerId: Int64?

    public var templateId: Int64?

    public var uids: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fromApp != nil {
            map["FromApp"] = self.fromApp!
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
        if self.sellerId != nil {
            map["SellerId"] = self.sellerId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.uids != nil {
            map["Uids"] = self.uids!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FromApp") && dict["FromApp"] != nil {
            self.fromApp = dict["FromApp"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SellerId") && dict["SellerId"] != nil {
            self.sellerId = dict["SellerId"] as! Int64
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
        if dict.keys.contains("Uids") && dict["Uids"] != nil {
            self.uids = dict["Uids"] as! [Int64]
        }
    }
}

public class GetCouponPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Currency : Tea.TeaModel {
            public var currencyCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currencyCode != nil {
                    map["CurrencyCode"] = self.currencyCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CurrencyCode") && dict["CurrencyCode"] != nil {
                    self.currencyCode = dict["CurrencyCode"] as! String
                }
            }
        }
        public var amount: Double?

        public var certainMoney: Double?

        public var couponId: Int64?

        public var couponType: String?

        public var currency: GetCouponPageResponseBody.Data.Currency?

        public var description_: String?

        public var discountRate: Double?

        public var endTime: String?

        public var frozenAmount: Double?

        public var frozenCount: Int32?

        public var promotionId: Int64?

        public var sellerId: Int64?

        public var startTime: String?

        public var status: String?

        public var templateId: Int64?

        public var universalType: String?

        public var upperLimit: Double?

        public var usageCount: Int32?

        public var usedAmount: Double?

        public var usedCount: Int32?

        public var userId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.currency?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.certainMoney != nil {
                map["CertainMoney"] = self.certainMoney!
            }
            if self.couponId != nil {
                map["CouponId"] = self.couponId!
            }
            if self.couponType != nil {
                map["CouponType"] = self.couponType!
            }
            if self.currency != nil {
                map["Currency"] = self.currency?.toMap()
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.discountRate != nil {
                map["DiscountRate"] = self.discountRate!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.frozenAmount != nil {
                map["FrozenAmount"] = self.frozenAmount!
            }
            if self.frozenCount != nil {
                map["FrozenCount"] = self.frozenCount!
            }
            if self.promotionId != nil {
                map["PromotionId"] = self.promotionId!
            }
            if self.sellerId != nil {
                map["SellerId"] = self.sellerId!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.universalType != nil {
                map["UniversalType"] = self.universalType!
            }
            if self.upperLimit != nil {
                map["UpperLimit"] = self.upperLimit!
            }
            if self.usageCount != nil {
                map["UsageCount"] = self.usageCount!
            }
            if self.usedAmount != nil {
                map["UsedAmount"] = self.usedAmount!
            }
            if self.usedCount != nil {
                map["UsedCount"] = self.usedCount!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Amount") && dict["Amount"] != nil {
                self.amount = dict["Amount"] as! Double
            }
            if dict.keys.contains("CertainMoney") && dict["CertainMoney"] != nil {
                self.certainMoney = dict["CertainMoney"] as! Double
            }
            if dict.keys.contains("CouponId") && dict["CouponId"] != nil {
                self.couponId = dict["CouponId"] as! Int64
            }
            if dict.keys.contains("CouponType") && dict["CouponType"] != nil {
                self.couponType = dict["CouponType"] as! String
            }
            if dict.keys.contains("Currency") && dict["Currency"] != nil {
                var model = GetCouponPageResponseBody.Data.Currency()
                model.fromMap(dict["Currency"] as! [String: Any])
                self.currency = model
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DiscountRate") && dict["DiscountRate"] != nil {
                self.discountRate = dict["DiscountRate"] as! Double
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("FrozenAmount") && dict["FrozenAmount"] != nil {
                self.frozenAmount = dict["FrozenAmount"] as! Double
            }
            if dict.keys.contains("FrozenCount") && dict["FrozenCount"] != nil {
                self.frozenCount = dict["FrozenCount"] as! Int32
            }
            if dict.keys.contains("PromotionId") && dict["PromotionId"] != nil {
                self.promotionId = dict["PromotionId"] as! Int64
            }
            if dict.keys.contains("SellerId") && dict["SellerId"] != nil {
                self.sellerId = dict["SellerId"] as! Int64
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
                self.templateId = dict["TemplateId"] as! Int64
            }
            if dict.keys.contains("UniversalType") && dict["UniversalType"] != nil {
                self.universalType = dict["UniversalType"] as! String
            }
            if dict.keys.contains("UpperLimit") && dict["UpperLimit"] != nil {
                self.upperLimit = dict["UpperLimit"] as! Double
            }
            if dict.keys.contains("UsageCount") && dict["UsageCount"] != nil {
                self.usageCount = dict["UsageCount"] as! Int32
            }
            if dict.keys.contains("UsedAmount") && dict["UsedAmount"] != nil {
                self.usedAmount = dict["UsedAmount"] as! Double
            }
            if dict.keys.contains("UsedCount") && dict["UsedCount"] != nil {
                self.usedCount = dict["UsedCount"] as! Int32
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! Int64
            }
        }
    }
    public var code: String?

    public var contextMap: [String: Any]?

    public var count: Int32?

    public var data: [GetCouponPageResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.contextMap != nil {
            map["ContextMap"] = self.contextMap!
        }
        if self.count != nil {
            map["Count"] = self.count!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ContextMap") && dict["ContextMap"] != nil {
            self.contextMap = dict["ContextMap"] as! [String: Any]
        }
        if dict.keys.contains("Count") && dict["Count"] != nil {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [GetCouponPageResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetCouponPageResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class GetCouponPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCouponPageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetCouponPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCustomerListRequest : Tea.TeaModel {
    public var pageNo: Int32?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class GetCustomerListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var totalSize: Int32?

        public var uidList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            if self.uidList != nil {
                map["UidList"] = self.uidList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TotalSize") && dict["TotalSize"] != nil {
                self.totalSize = dict["TotalSize"] as! Int32
            }
            if dict.keys.contains("UidList") && dict["UidList"] != nil {
                self.uidList = dict["UidList"] as! [String]
            }
        }
    }
    public var code: String?

    public var data: GetCustomerListResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetCustomerListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetCustomerListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCustomerListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetCustomerListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRelationRequest : Tea.TeaModel {
    public var relationTime: Int64?

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
        if self.relationTime != nil {
            map["RelationTime"] = self.relationTime!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RelationTime") && dict["RelationTime"] != nil {
            self.relationTime = dict["RelationTime"] as! Int64
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! Int64
        }
    }
}

public class GetRelationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ResellerProductModeDO : Tea.TeaModel {
            public var class_: String?

            public var isService: Int64?

            public var productCode: String?

            public var productName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.class_ != nil {
                    map["Class"] = self.class_!
                }
                if self.isService != nil {
                    map["IsService"] = self.isService!
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                if self.productName != nil {
                    map["ProductName"] = self.productName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Class") && dict["Class"] != nil {
                    self.class_ = dict["Class"] as! String
                }
                if dict.keys.contains("IsService") && dict["IsService"] != nil {
                    self.isService = dict["IsService"] as! Int64
                }
                if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                    self.productCode = dict["ProductCode"] as! String
                }
                if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
                    self.productName = dict["ProductName"] as! String
                }
            }
        }
        public class ResellerProductRuleDO : Tea.TeaModel {
            public var class_: String?

            public var commodityRoute: Bool?

            public var multiOrder: Bool?

            public var payMode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.class_ != nil {
                    map["Class"] = self.class_!
                }
                if self.commodityRoute != nil {
                    map["CommodityRoute"] = self.commodityRoute!
                }
                if self.multiOrder != nil {
                    map["MultiOrder"] = self.multiOrder!
                }
                if self.payMode != nil {
                    map["PayMode"] = self.payMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Class") && dict["Class"] != nil {
                    self.class_ = dict["Class"] as! String
                }
                if dict.keys.contains("CommodityRoute") && dict["CommodityRoute"] != nil {
                    self.commodityRoute = dict["CommodityRoute"] as! Bool
                }
                if dict.keys.contains("MultiOrder") && dict["MultiOrder"] != nil {
                    self.multiOrder = dict["MultiOrder"] as! Bool
                }
                if dict.keys.contains("PayMode") && dict["PayMode"] != nil {
                    self.payMode = dict["PayMode"] as! String
                }
            }
        }
        public var canLoginOfficial: Bool?

        public var class_: String?

        public var endTime: Int64?

        public var resellerProductModeDO: GetRelationResponseBody.Data.ResellerProductModeDO?

        public var resellerProductRuleDO: GetRelationResponseBody.Data.ResellerProductRuleDO?

        public var resellerUid: Int64?

        public var startTime: Int64?

        public var status: String?

        public var topReseller: Bool?

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
            try self.resellerProductModeDO?.validate()
            try self.resellerProductRuleDO?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.canLoginOfficial != nil {
                map["CanLoginOfficial"] = self.canLoginOfficial!
            }
            if self.class_ != nil {
                map["Class"] = self.class_!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.resellerProductModeDO != nil {
                map["ResellerProductModeDO"] = self.resellerProductModeDO?.toMap()
            }
            if self.resellerProductRuleDO != nil {
                map["ResellerProductRuleDO"] = self.resellerProductRuleDO?.toMap()
            }
            if self.resellerUid != nil {
                map["ResellerUid"] = self.resellerUid!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.topReseller != nil {
                map["TopReseller"] = self.topReseller!
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
            if dict.keys.contains("CanLoginOfficial") && dict["CanLoginOfficial"] != nil {
                self.canLoginOfficial = dict["CanLoginOfficial"] as! Bool
            }
            if dict.keys.contains("Class") && dict["Class"] != nil {
                self.class_ = dict["Class"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("ResellerProductModeDO") && dict["ResellerProductModeDO"] != nil {
                var model = GetRelationResponseBody.Data.ResellerProductModeDO()
                model.fromMap(dict["ResellerProductModeDO"] as! [String: Any])
                self.resellerProductModeDO = model
            }
            if dict.keys.contains("ResellerProductRuleDO") && dict["ResellerProductRuleDO"] != nil {
                var model = GetRelationResponseBody.Data.ResellerProductRuleDO()
                model.fromMap(dict["ResellerProductRuleDO"] as! [String: Any])
                self.resellerProductRuleDO = model
            }
            if dict.keys.contains("ResellerUid") && dict["ResellerUid"] != nil {
                self.resellerUid = dict["ResellerUid"] as! Int64
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TopReseller") && dict["TopReseller"] != nil {
                self.topReseller = dict["TopReseller"] as! Bool
            }
            if dict.keys.contains("Uid") && dict["Uid"] != nil {
                self.uid = dict["Uid"] as! Int64
            }
            if dict.keys.contains("UserType") && dict["UserType"] != nil {
                self.userType = dict["UserType"] as! String
            }
        }
    }
    public var class_: String?

    public var code: String?

    public var data: GetRelationResponseBody.Data?

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
        if self.class_ != nil {
            map["Class"] = self.class_!
        }
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
        if dict.keys.contains("Class") && dict["Class"] != nil {
            self.class_ = dict["Class"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetRelationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRelationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResellerPayOrderRequest : Tea.TeaModel {
    public var orderId: String?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! Int64
        }
    }
}

public class GetResellerPayOrderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var buyerId: String?

        public var orderId: String?

        public var orderStatus: String?

        public var payAmount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buyerId != nil {
                map["BuyerId"] = self.buyerId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.orderStatus != nil {
                map["OrderStatus"] = self.orderStatus!
            }
            if self.payAmount != nil {
                map["PayAmount"] = self.payAmount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BuyerId") && dict["BuyerId"] != nil {
                self.buyerId = dict["BuyerId"] as! String
            }
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("OrderStatus") && dict["OrderStatus"] != nil {
                self.orderStatus = dict["OrderStatus"] as! String
            }
            if dict.keys.contains("PayAmount") && dict["PayAmount"] != nil {
                self.payAmount = dict["PayAmount"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetResellerPayOrderResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetResellerPayOrderResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetResellerPayOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResellerPayOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetResellerPayOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LabelPartnerUserRequest : Tea.TeaModel {
    public var userPK: Int64?

    public var userTag: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userPK != nil {
            map["UserPK"] = self.userPK!
        }
        if self.userTag != nil {
            map["UserTag"] = self.userTag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserPK") && dict["UserPK"] != nil {
            self.userPK = dict["UserPK"] as! Int64
        }
        if dict.keys.contains("UserTag") && dict["UserTag"] != nil {
            self.userTag = dict["UserTag"] as! String
        }
    }
}

public class LabelPartnerUserResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var userPK: Int64?

        public var userTag: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userPK != nil {
                map["UserPK"] = self.userPK!
            }
            if self.userTag != nil {
                map["UserTag"] = self.userTag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserPK") && dict["UserPK"] != nil {
                self.userPK = dict["UserPK"] as! Int64
            }
            if dict.keys.contains("UserTag") && dict["UserTag"] != nil {
                self.userTag = dict["UserTag"] as! String
            }
        }
    }
    public var code: String?

    public var data: LabelPartnerUserResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = LabelPartnerUserResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class LabelPartnerUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LabelPartnerUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = LabelPartnerUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MigrateResourceRequest : Tea.TeaModel {
    public var actionCode: String?

    public var content: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionCode != nil {
            map["ActionCode"] = self.actionCode!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionCode") && dict["ActionCode"] != nil {
            self.actionCode = dict["ActionCode"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
    }
}

public class MigrateResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var procEnvir: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.procEnvir != nil {
                map["ProcEnvir"] = self.procEnvir!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("ProcEnvir") && dict["ProcEnvir"] != nil {
                self.procEnvir = dict["ProcEnvir"] as! String
            }
        }
    }
    public var code: String?

    public var data: MigrateResourceResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = MigrateResourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class MigrateResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MigrateResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = MigrateResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OfflineActivityRequest : Tea.TeaModel {
    public var activityList: [Int64]?

    public var bizId: String?

    public var token: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activityList != nil {
            map["ActivityList"] = self.activityList!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityList") && dict["ActivityList"] != nil {
            self.activityList = dict["ActivityList"] as! [Int64]
        }
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
    }
}

public class OfflineActivityResponseBody : Tea.TeaModel {
    public var code: String?

    public var contextMap: [String: Any]?

    public var data: [Int64]?

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
        if self.contextMap != nil {
            map["ContextMap"] = self.contextMap!
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ContextMap") && dict["ContextMap"] != nil {
            self.contextMap = dict["ContextMap"] as! [String: Any]
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [Int64]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class OfflineActivityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OfflineActivityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OfflineActivityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PayResultCallbackRequest : Tea.TeaModel {
    public var orderId: String?

    public var payStatus: String?

    public var payTime: String?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.payStatus != nil {
            map["PayStatus"] = self.payStatus!
        }
        if self.payTime != nil {
            map["PayTime"] = self.payTime!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("PayStatus") && dict["PayStatus"] != nil {
            self.payStatus = dict["PayStatus"] as! String
        }
        if dict.keys.contains("PayTime") && dict["PayTime"] != nil {
            self.payTime = dict["PayTime"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! Int64
        }
    }
}

public class PayResultCallbackResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class PayResultCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PayResultCallbackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PayResultCallbackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PublicActivityRequest : Tea.TeaModel {
    public var activityList: [Int64]?

    public var bizId: String?

    public var snapType: String?

    public var token: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activityList != nil {
            map["ActivityList"] = self.activityList!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.snapType != nil {
            map["SnapType"] = self.snapType!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityList") && dict["ActivityList"] != nil {
            self.activityList = dict["ActivityList"] as! [Int64]
        }
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("SnapType") && dict["SnapType"] != nil {
            self.snapType = dict["SnapType"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
    }
}

public class PublicActivityResponseBody : Tea.TeaModel {
    public var code: String?

    public var contextMap: [String: Any]?

    public var data: [Int64]?

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
        if self.contextMap != nil {
            map["ContextMap"] = self.contextMap!
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ContextMap") && dict["ContextMap"] != nil {
            self.contextMap = dict["ContextMap"] as! [String: Any]
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [Int64]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class PublicActivityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublicActivityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PublicActivityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryActivityRequest : Tea.TeaModel {
    public var activityId: Int64?

    public var bizId: String?

    public var snapType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activityId != nil {
            map["ActivityId"] = self.activityId!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.snapType != nil {
            map["SnapType"] = self.snapType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityId") && dict["ActivityId"] != nil {
            self.activityId = dict["ActivityId"] as! Int64
        }
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("SnapType") && dict["SnapType"] != nil {
            self.snapType = dict["SnapType"] as! String
        }
    }
}

public class QueryActivityResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var activityId: Int64?

        public var activityName: String?

        public var blackList: [Int64]?

        public var commodityCodeList: [String]?

        public var description_: String?

        public var endTime: String?

        public var extMap: [String: String]?

        public var promotionDescription: String?

        public var promotionValue: Double?

        public var regionList: [String]?

        public var sellerIdList: [Int64]?

        public var startTime: String?

        public var status: String?

        public var testAccountList: [Int64]?

        public var whiteList: [Int64]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activityId != nil {
                map["ActivityId"] = self.activityId!
            }
            if self.activityName != nil {
                map["ActivityName"] = self.activityName!
            }
            if self.blackList != nil {
                map["BlackList"] = self.blackList!
            }
            if self.commodityCodeList != nil {
                map["CommodityCodeList"] = self.commodityCodeList!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.extMap != nil {
                map["ExtMap"] = self.extMap!
            }
            if self.promotionDescription != nil {
                map["PromotionDescription"] = self.promotionDescription!
            }
            if self.promotionValue != nil {
                map["PromotionValue"] = self.promotionValue!
            }
            if self.regionList != nil {
                map["RegionList"] = self.regionList!
            }
            if self.sellerIdList != nil {
                map["SellerIdList"] = self.sellerIdList!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.testAccountList != nil {
                map["TestAccountList"] = self.testAccountList!
            }
            if self.whiteList != nil {
                map["WhiteList"] = self.whiteList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActivityId") && dict["ActivityId"] != nil {
                self.activityId = dict["ActivityId"] as! Int64
            }
            if dict.keys.contains("ActivityName") && dict["ActivityName"] != nil {
                self.activityName = dict["ActivityName"] as! String
            }
            if dict.keys.contains("BlackList") && dict["BlackList"] != nil {
                self.blackList = dict["BlackList"] as! [Int64]
            }
            if dict.keys.contains("CommodityCodeList") && dict["CommodityCodeList"] != nil {
                self.commodityCodeList = dict["CommodityCodeList"] as! [String]
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("ExtMap") && dict["ExtMap"] != nil {
                self.extMap = dict["ExtMap"] as! [String: String]
            }
            if dict.keys.contains("PromotionDescription") && dict["PromotionDescription"] != nil {
                self.promotionDescription = dict["PromotionDescription"] as! String
            }
            if dict.keys.contains("PromotionValue") && dict["PromotionValue"] != nil {
                self.promotionValue = dict["PromotionValue"] as! Double
            }
            if dict.keys.contains("RegionList") && dict["RegionList"] != nil {
                self.regionList = dict["RegionList"] as! [String]
            }
            if dict.keys.contains("SellerIdList") && dict["SellerIdList"] != nil {
                self.sellerIdList = dict["SellerIdList"] as! [Int64]
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TestAccountList") && dict["TestAccountList"] != nil {
                self.testAccountList = dict["TestAccountList"] as! [Int64]
            }
            if dict.keys.contains("WhiteList") && dict["WhiteList"] != nil {
                self.whiteList = dict["WhiteList"] as! [Int64]
            }
        }
    }
    public var code: String?

    public var contextMap: [String: Any]?

    public var data: QueryActivityResponseBody.Data?

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
        if self.contextMap != nil {
            map["ContextMap"] = self.contextMap!
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ContextMap") && dict["ContextMap"] != nil {
            self.contextMap = dict["ContextMap"] as! [String: Any]
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryActivityResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryActivityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryActivityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryActivityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryEcoRelationRequest : Tea.TeaModel {
    public var relationTime: String?

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
        if self.relationTime != nil {
            map["RelationTime"] = self.relationTime!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RelationTime") && dict["RelationTime"] != nil {
            self.relationTime = dict["RelationTime"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! Int64
        }
    }
}

public class QueryEcoRelationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ResellerProductModeDO : Tea.TeaModel {
            public var isService: Int32?

            public var productCode: String?

            public var productName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.isService != nil {
                    map["IsService"] = self.isService!
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                if self.productName != nil {
                    map["ProductName"] = self.productName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IsService") && dict["IsService"] != nil {
                    self.isService = dict["IsService"] as! Int32
                }
                if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                    self.productCode = dict["ProductCode"] as! String
                }
                if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
                    self.productName = dict["ProductName"] as! String
                }
            }
        }
        public class ResellerProductRuleDO : Tea.TeaModel {
            public var commodityRoute: Bool?

            public var multiOrder: Bool?

            public var payMode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commodityRoute != nil {
                    map["CommodityRoute"] = self.commodityRoute!
                }
                if self.multiOrder != nil {
                    map["MultiOrder"] = self.multiOrder!
                }
                if self.payMode != nil {
                    map["PayMode"] = self.payMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommodityRoute") && dict["CommodityRoute"] != nil {
                    self.commodityRoute = dict["CommodityRoute"] as! Bool
                }
                if dict.keys.contains("MultiOrder") && dict["MultiOrder"] != nil {
                    self.multiOrder = dict["MultiOrder"] as! Bool
                }
                if dict.keys.contains("PayMode") && dict["PayMode"] != nil {
                    self.payMode = dict["PayMode"] as! String
                }
            }
        }
        public var canLoginOfficial: Bool?

        public var endTime: String?

        public var isTopReseller: Bool?

        public var resellerProductModeDO: QueryEcoRelationResponseBody.Data.ResellerProductModeDO?

        public var resellerProductRuleDO: QueryEcoRelationResponseBody.Data.ResellerProductRuleDO?

        public var resellerUid: Int64?

        public var startTime: String?

        public var status: String?

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
            try self.resellerProductModeDO?.validate()
            try self.resellerProductRuleDO?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.canLoginOfficial != nil {
                map["CanLoginOfficial"] = self.canLoginOfficial!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.isTopReseller != nil {
                map["IsTopReseller"] = self.isTopReseller!
            }
            if self.resellerProductModeDO != nil {
                map["ResellerProductModeDO"] = self.resellerProductModeDO?.toMap()
            }
            if self.resellerProductRuleDO != nil {
                map["ResellerProductRuleDO"] = self.resellerProductRuleDO?.toMap()
            }
            if self.resellerUid != nil {
                map["ResellerUid"] = self.resellerUid!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
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
            if dict.keys.contains("CanLoginOfficial") && dict["CanLoginOfficial"] != nil {
                self.canLoginOfficial = dict["CanLoginOfficial"] as! Bool
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("IsTopReseller") && dict["IsTopReseller"] != nil {
                self.isTopReseller = dict["IsTopReseller"] as! Bool
            }
            if dict.keys.contains("ResellerProductModeDO") && dict["ResellerProductModeDO"] != nil {
                var model = QueryEcoRelationResponseBody.Data.ResellerProductModeDO()
                model.fromMap(dict["ResellerProductModeDO"] as! [String: Any])
                self.resellerProductModeDO = model
            }
            if dict.keys.contains("ResellerProductRuleDO") && dict["ResellerProductRuleDO"] != nil {
                var model = QueryEcoRelationResponseBody.Data.ResellerProductRuleDO()
                model.fromMap(dict["ResellerProductRuleDO"] as! [String: Any])
                self.resellerProductRuleDO = model
            }
            if dict.keys.contains("ResellerUid") && dict["ResellerUid"] != nil {
                self.resellerUid = dict["ResellerUid"] as! Int64
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Uid") && dict["Uid"] != nil {
                self.uid = dict["Uid"] as! Int64
            }
            if dict.keys.contains("UserType") && dict["UserType"] != nil {
                self.userType = dict["UserType"] as! String
            }
        }
    }
    public var code: String?

    public var contextMap: [String: Any]?

    public var data: QueryEcoRelationResponseBody.Data?

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
        if self.contextMap != nil {
            map["ContextMap"] = self.contextMap!
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ContextMap") && dict["ContextMap"] != nil {
            self.contextMap = dict["ContextMap"] as! [String: Any]
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryEcoRelationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryEcoRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEcoRelationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryEcoRelationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveActivityRequest : Tea.TeaModel {
    public class FusionPromotionParamList : Tea.TeaModel {
        public class ModuleInfoParamList : Tea.TeaModel {
            public var componentCode: String?

            public var itemCode: String?

            public var moduleId: Int64?

            public var moduleKey: String?

            public var moduleName: String?

            public var moduleValueList: [String]?

            public var pricePlanId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.componentCode != nil {
                    map["componentCode"] = self.componentCode!
                }
                if self.itemCode != nil {
                    map["itemCode"] = self.itemCode!
                }
                if self.moduleId != nil {
                    map["moduleId"] = self.moduleId!
                }
                if self.moduleKey != nil {
                    map["moduleKey"] = self.moduleKey!
                }
                if self.moduleName != nil {
                    map["moduleName"] = self.moduleName!
                }
                if self.moduleValueList != nil {
                    map["moduleValueList"] = self.moduleValueList!
                }
                if self.pricePlanId != nil {
                    map["pricePlanId"] = self.pricePlanId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("componentCode") && dict["componentCode"] != nil {
                    self.componentCode = dict["componentCode"] as! String
                }
                if dict.keys.contains("itemCode") && dict["itemCode"] != nil {
                    self.itemCode = dict["itemCode"] as! String
                }
                if dict.keys.contains("moduleId") && dict["moduleId"] != nil {
                    self.moduleId = dict["moduleId"] as! Int64
                }
                if dict.keys.contains("moduleKey") && dict["moduleKey"] != nil {
                    self.moduleKey = dict["moduleKey"] as! String
                }
                if dict.keys.contains("moduleName") && dict["moduleName"] != nil {
                    self.moduleName = dict["moduleName"] as! String
                }
                if dict.keys.contains("moduleValueList") && dict["moduleValueList"] != nil {
                    self.moduleValueList = dict["moduleValueList"] as! [String]
                }
                if dict.keys.contains("pricePlanId") && dict["pricePlanId"] != nil {
                    self.pricePlanId = dict["pricePlanId"] as! Int64
                }
            }
        }
        public var commodityCodeList: [String]?

        public var promotionValue: Double?

        public var restrictedRegionList: [String]?

        public var moduleInfoParamList: [SaveActivityRequest.FusionPromotionParamList.ModuleInfoParamList]?

        public override init() {
            super.init()
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
            if self.promotionValue != nil {
                map["PromotionValue"] = self.promotionValue!
            }
            if self.restrictedRegionList != nil {
                map["RestrictedRegionList"] = self.restrictedRegionList!
            }
            if self.moduleInfoParamList != nil {
                var tmp : [Any] = []
                for k in self.moduleInfoParamList! {
                    tmp.append(k.toMap())
                }
                map["moduleInfoParamList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommodityCodeList") && dict["CommodityCodeList"] != nil {
                self.commodityCodeList = dict["CommodityCodeList"] as! [String]
            }
            if dict.keys.contains("PromotionValue") && dict["PromotionValue"] != nil {
                self.promotionValue = dict["PromotionValue"] as! Double
            }
            if dict.keys.contains("RestrictedRegionList") && dict["RestrictedRegionList"] != nil {
                self.restrictedRegionList = dict["RestrictedRegionList"] as! [String]
            }
            if dict.keys.contains("moduleInfoParamList") && dict["moduleInfoParamList"] != nil {
                var tmp : [SaveActivityRequest.FusionPromotionParamList.ModuleInfoParamList] = []
                for v in dict["moduleInfoParamList"] as! [Any] {
                    var model = SaveActivityRequest.FusionPromotionParamList.ModuleInfoParamList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.moduleInfoParamList = tmp
            }
        }
    }
    public var activityName: String?

    public var bizId: String?

    public var blackUidList: [Int64]?

    public var description_: String?

    public var endTime: String?

    public var extendMap: [String: Any]?

    public var fusionPromotionParamList: [SaveActivityRequest.FusionPromotionParamList]?

    public var publishTag: String?

    public var startTime: String?

    public var testAccountUidList: [Int64]?

    public var token: String?

    public var whiteUidList: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activityName != nil {
            map["ActivityName"] = self.activityName!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.blackUidList != nil {
            map["BlackUidList"] = self.blackUidList!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.extendMap != nil {
            map["ExtendMap"] = self.extendMap!
        }
        if self.fusionPromotionParamList != nil {
            var tmp : [Any] = []
            for k in self.fusionPromotionParamList! {
                tmp.append(k.toMap())
            }
            map["FusionPromotionParamList"] = tmp
        }
        if self.publishTag != nil {
            map["PublishTag"] = self.publishTag!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.testAccountUidList != nil {
            map["TestAccountUidList"] = self.testAccountUidList!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.whiteUidList != nil {
            map["WhiteUidList"] = self.whiteUidList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityName") && dict["ActivityName"] != nil {
            self.activityName = dict["ActivityName"] as! String
        }
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("BlackUidList") && dict["BlackUidList"] != nil {
            self.blackUidList = dict["BlackUidList"] as! [Int64]
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ExtendMap") && dict["ExtendMap"] != nil {
            self.extendMap = dict["ExtendMap"] as! [String: Any]
        }
        if dict.keys.contains("FusionPromotionParamList") && dict["FusionPromotionParamList"] != nil {
            var tmp : [SaveActivityRequest.FusionPromotionParamList] = []
            for v in dict["FusionPromotionParamList"] as! [Any] {
                var model = SaveActivityRequest.FusionPromotionParamList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fusionPromotionParamList = tmp
        }
        if dict.keys.contains("PublishTag") && dict["PublishTag"] != nil {
            self.publishTag = dict["PublishTag"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TestAccountUidList") && dict["TestAccountUidList"] != nil {
            self.testAccountUidList = dict["TestAccountUidList"] as! [Int64]
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("WhiteUidList") && dict["WhiteUidList"] != nil {
            self.whiteUidList = dict["WhiteUidList"] as! [Int64]
        }
    }
}

public class SaveActivityShrinkRequest : Tea.TeaModel {
    public class FusionPromotionParamList : Tea.TeaModel {
        public class ModuleInfoParamList : Tea.TeaModel {
            public var componentCode: String?

            public var itemCode: String?

            public var moduleId: Int64?

            public var moduleKey: String?

            public var moduleName: String?

            public var moduleValueList: [String]?

            public var pricePlanId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.componentCode != nil {
                    map["componentCode"] = self.componentCode!
                }
                if self.itemCode != nil {
                    map["itemCode"] = self.itemCode!
                }
                if self.moduleId != nil {
                    map["moduleId"] = self.moduleId!
                }
                if self.moduleKey != nil {
                    map["moduleKey"] = self.moduleKey!
                }
                if self.moduleName != nil {
                    map["moduleName"] = self.moduleName!
                }
                if self.moduleValueList != nil {
                    map["moduleValueList"] = self.moduleValueList!
                }
                if self.pricePlanId != nil {
                    map["pricePlanId"] = self.pricePlanId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("componentCode") && dict["componentCode"] != nil {
                    self.componentCode = dict["componentCode"] as! String
                }
                if dict.keys.contains("itemCode") && dict["itemCode"] != nil {
                    self.itemCode = dict["itemCode"] as! String
                }
                if dict.keys.contains("moduleId") && dict["moduleId"] != nil {
                    self.moduleId = dict["moduleId"] as! Int64
                }
                if dict.keys.contains("moduleKey") && dict["moduleKey"] != nil {
                    self.moduleKey = dict["moduleKey"] as! String
                }
                if dict.keys.contains("moduleName") && dict["moduleName"] != nil {
                    self.moduleName = dict["moduleName"] as! String
                }
                if dict.keys.contains("moduleValueList") && dict["moduleValueList"] != nil {
                    self.moduleValueList = dict["moduleValueList"] as! [String]
                }
                if dict.keys.contains("pricePlanId") && dict["pricePlanId"] != nil {
                    self.pricePlanId = dict["pricePlanId"] as! Int64
                }
            }
        }
        public var commodityCodeList: [String]?

        public var promotionValue: Double?

        public var restrictedRegionList: [String]?

        public var moduleInfoParamList: [SaveActivityShrinkRequest.FusionPromotionParamList.ModuleInfoParamList]?

        public override init() {
            super.init()
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
            if self.promotionValue != nil {
                map["PromotionValue"] = self.promotionValue!
            }
            if self.restrictedRegionList != nil {
                map["RestrictedRegionList"] = self.restrictedRegionList!
            }
            if self.moduleInfoParamList != nil {
                var tmp : [Any] = []
                for k in self.moduleInfoParamList! {
                    tmp.append(k.toMap())
                }
                map["moduleInfoParamList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommodityCodeList") && dict["CommodityCodeList"] != nil {
                self.commodityCodeList = dict["CommodityCodeList"] as! [String]
            }
            if dict.keys.contains("PromotionValue") && dict["PromotionValue"] != nil {
                self.promotionValue = dict["PromotionValue"] as! Double
            }
            if dict.keys.contains("RestrictedRegionList") && dict["RestrictedRegionList"] != nil {
                self.restrictedRegionList = dict["RestrictedRegionList"] as! [String]
            }
            if dict.keys.contains("moduleInfoParamList") && dict["moduleInfoParamList"] != nil {
                var tmp : [SaveActivityShrinkRequest.FusionPromotionParamList.ModuleInfoParamList] = []
                for v in dict["moduleInfoParamList"] as! [Any] {
                    var model = SaveActivityShrinkRequest.FusionPromotionParamList.ModuleInfoParamList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.moduleInfoParamList = tmp
            }
        }
    }
    public var activityName: String?

    public var bizId: String?

    public var blackUidList: [Int64]?

    public var description_: String?

    public var endTime: String?

    public var extendMapShrink: String?

    public var fusionPromotionParamList: [SaveActivityShrinkRequest.FusionPromotionParamList]?

    public var publishTag: String?

    public var startTime: String?

    public var testAccountUidList: [Int64]?

    public var token: String?

    public var whiteUidList: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activityName != nil {
            map["ActivityName"] = self.activityName!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.blackUidList != nil {
            map["BlackUidList"] = self.blackUidList!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.extendMapShrink != nil {
            map["ExtendMap"] = self.extendMapShrink!
        }
        if self.fusionPromotionParamList != nil {
            var tmp : [Any] = []
            for k in self.fusionPromotionParamList! {
                tmp.append(k.toMap())
            }
            map["FusionPromotionParamList"] = tmp
        }
        if self.publishTag != nil {
            map["PublishTag"] = self.publishTag!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.testAccountUidList != nil {
            map["TestAccountUidList"] = self.testAccountUidList!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.whiteUidList != nil {
            map["WhiteUidList"] = self.whiteUidList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityName") && dict["ActivityName"] != nil {
            self.activityName = dict["ActivityName"] as! String
        }
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("BlackUidList") && dict["BlackUidList"] != nil {
            self.blackUidList = dict["BlackUidList"] as! [Int64]
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ExtendMap") && dict["ExtendMap"] != nil {
            self.extendMapShrink = dict["ExtendMap"] as! String
        }
        if dict.keys.contains("FusionPromotionParamList") && dict["FusionPromotionParamList"] != nil {
            var tmp : [SaveActivityShrinkRequest.FusionPromotionParamList] = []
            for v in dict["FusionPromotionParamList"] as! [Any] {
                var model = SaveActivityShrinkRequest.FusionPromotionParamList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fusionPromotionParamList = tmp
        }
        if dict.keys.contains("PublishTag") && dict["PublishTag"] != nil {
            self.publishTag = dict["PublishTag"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TestAccountUidList") && dict["TestAccountUidList"] != nil {
            self.testAccountUidList = dict["TestAccountUidList"] as! [Int64]
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("WhiteUidList") && dict["WhiteUidList"] != nil {
            self.whiteUidList = dict["WhiteUidList"] as! [Int64]
        }
    }
}

public class SaveActivityResponseBody : Tea.TeaModel {
    public var code: String?

    public var contextMap: [String: Any]?

    public var data: [Int64]?

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
        if self.contextMap != nil {
            map["ContextMap"] = self.contextMap!
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ContextMap") && dict["ContextMap"] != nil {
            self.contextMap = dict["ContextMap"] as! [String: Any]
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [Int64]
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SaveActivityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveActivityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SaveActivityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendCouponRequest : Tea.TeaModel {
    public class UserAmountModelList : Tea.TeaModel {
        public var amount: Double?

        public var uid: Int64?

        public var userId: Int64?

        public var youhuiId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.youhuiId != nil {
                map["YouhuiId"] = self.youhuiId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Amount") && dict["Amount"] != nil {
                self.amount = dict["Amount"] as! Double
            }
            if dict.keys.contains("Uid") && dict["Uid"] != nil {
                self.uid = dict["Uid"] as! Int64
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! Int64
            }
            if dict.keys.contains("YouhuiId") && dict["YouhuiId"] != nil {
                self.youhuiId = dict["YouhuiId"] as! Int64
            }
        }
    }
    public var bid: Int64?

    public var fromApp: String?

    public var operator_: String?

    public var requestId: String?

    public var sellerId: Int64?

    public var templateId: Int64?

    public var userAmountModelList: [SendCouponRequest.UserAmountModelList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.fromApp != nil {
            map["FromApp"] = self.fromApp!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sellerId != nil {
            map["SellerId"] = self.sellerId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.userAmountModelList != nil {
            var tmp : [Any] = []
            for k in self.userAmountModelList! {
                tmp.append(k.toMap())
            }
            map["UserAmountModelList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bid") && dict["Bid"] != nil {
            self.bid = dict["Bid"] as! Int64
        }
        if dict.keys.contains("FromApp") && dict["FromApp"] != nil {
            self.fromApp = dict["FromApp"] as! String
        }
        if dict.keys.contains("Operator") && dict["Operator"] != nil {
            self.operator_ = dict["Operator"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SellerId") && dict["SellerId"] != nil {
            self.sellerId = dict["SellerId"] as! Int64
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! Int64
        }
        if dict.keys.contains("UserAmountModelList") && dict["UserAmountModelList"] != nil {
            var tmp : [SendCouponRequest.UserAmountModelList] = []
            for v in dict["UserAmountModelList"] as! [Any] {
                var model = SendCouponRequest.UserAmountModelList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userAmountModelList = tmp
        }
    }
}

public class SendCouponResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var amount: Double?

        public var uid: Int64?

        public var userId: Int64?

        public var youhuiId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.youhuiId != nil {
                map["YouhuiId"] = self.youhuiId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Amount") && dict["Amount"] != nil {
                self.amount = dict["Amount"] as! Double
            }
            if dict.keys.contains("Uid") && dict["Uid"] != nil {
                self.uid = dict["Uid"] as! Int64
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! Int64
            }
            if dict.keys.contains("YouhuiId") && dict["YouhuiId"] != nil {
                self.youhuiId = dict["YouhuiId"] as! Int64
            }
        }
    }
    public var code: String?

    public var contextMap: [String: Any]?

    public var count: Int32?

    public var data: [SendCouponResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.contextMap != nil {
            map["ContextMap"] = self.contextMap!
        }
        if self.count != nil {
            map["Count"] = self.count!
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ContextMap") && dict["ContextMap"] != nil {
            self.contextMap = dict["ContextMap"] as! [String: Any]
        }
        if dict.keys.contains("Count") && dict["Count"] != nil {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [SendCouponResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = SendCouponResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class SendCouponResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendCouponResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SendCouponResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TransferResourceRequest : Tea.TeaModel {
    public var actionCode: String?

    public var content: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionCode != nil {
            map["ActionCode"] = self.actionCode!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionCode") && dict["ActionCode"] != nil {
            self.actionCode = dict["ActionCode"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
    }
}

public class TransferResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var procEnv: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.procEnv != nil {
                map["ProcEnv"] = self.procEnv!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("ProcEnv") && dict["ProcEnv"] != nil {
                self.procEnv = dict["ProcEnv"] as! String
            }
        }
    }
    public var code: String?

    public var data: TransferResourceResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = TransferResourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class TransferResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TransferResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TransferResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
