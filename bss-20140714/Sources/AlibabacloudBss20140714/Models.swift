import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateOrderRequest : Tea.TeaModel {
    public var paramStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.paramStr != nil {
            map["paramStr"] = self.paramStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("paramStr") {
            self.paramStr = dict["paramStr"] as! String
        }
    }
}

public class CreateOrderResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
            self.data = dict["Data"] as! String
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

public class CreateOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOrderResponseBody?

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
            var model = CreateOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCashDetailResponseBody : Tea.TeaModel {
    public var amountOwed: String?

    public var availableCredit: String?

    public var balanceAmount: String?

    public var creditCardAmount: String?

    public var creditLimit: String?

    public var enableThresholdAlert: String?

    public var frozenAmount: String?

    public var miniAlertThreshold: Int64?

    public var remmitanceAmount: String?

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
        if self.amountOwed != nil {
            map["AmountOwed"] = self.amountOwed!
        }
        if self.availableCredit != nil {
            map["AvailableCredit"] = self.availableCredit!
        }
        if self.balanceAmount != nil {
            map["BalanceAmount"] = self.balanceAmount!
        }
        if self.creditCardAmount != nil {
            map["CreditCardAmount"] = self.creditCardAmount!
        }
        if self.creditLimit != nil {
            map["CreditLimit"] = self.creditLimit!
        }
        if self.enableThresholdAlert != nil {
            map["EnableThresholdAlert"] = self.enableThresholdAlert!
        }
        if self.frozenAmount != nil {
            map["FrozenAmount"] = self.frozenAmount!
        }
        if self.miniAlertThreshold != nil {
            map["MiniAlertThreshold"] = self.miniAlertThreshold!
        }
        if self.remmitanceAmount != nil {
            map["RemmitanceAmount"] = self.remmitanceAmount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AmountOwed") {
            self.amountOwed = dict["AmountOwed"] as! String
        }
        if dict.keys.contains("AvailableCredit") {
            self.availableCredit = dict["AvailableCredit"] as! String
        }
        if dict.keys.contains("BalanceAmount") {
            self.balanceAmount = dict["BalanceAmount"] as! String
        }
        if dict.keys.contains("CreditCardAmount") {
            self.creditCardAmount = dict["CreditCardAmount"] as! String
        }
        if dict.keys.contains("CreditLimit") {
            self.creditLimit = dict["CreditLimit"] as! String
        }
        if dict.keys.contains("EnableThresholdAlert") {
            self.enableThresholdAlert = dict["EnableThresholdAlert"] as! String
        }
        if dict.keys.contains("FrozenAmount") {
            self.frozenAmount = dict["FrozenAmount"] as! String
        }
        if dict.keys.contains("MiniAlertThreshold") {
            self.miniAlertThreshold = dict["MiniAlertThreshold"] as! Int64
        }
        if dict.keys.contains("RemmitanceAmount") {
            self.remmitanceAmount = dict["RemmitanceAmount"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCashDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCashDetailResponseBody?

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
            var model = DescribeCashDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCouponListRequest : Tea.TeaModel {
    public var endDeliveryTime: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var startDeliveryTime: String?

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
        if self.endDeliveryTime != nil {
            map["EndDeliveryTime"] = self.endDeliveryTime!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startDeliveryTime != nil {
            map["StartDeliveryTime"] = self.startDeliveryTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndDeliveryTime") {
            self.endDeliveryTime = dict["EndDeliveryTime"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartDeliveryTime") {
            self.startDeliveryTime = dict["StartDeliveryTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeCouponListResponseBody : Tea.TeaModel {
    public class Coupons : Tea.TeaModel {
        public class Coupon : Tea.TeaModel {
            public class ProductCodes : Tea.TeaModel {
                public var productCode: [String]?

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ProductCode") {
                        self.productCode = dict["ProductCode"] as! [String]
                    }
                }
            }
            public class TradeTypes : Tea.TeaModel {
                public var tradeType: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tradeType != nil {
                        map["TradeType"] = self.tradeType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TradeType") {
                        self.tradeType = dict["TradeType"] as! [String]
                    }
                }
            }
            public var application: String?

            public var balanceAmount: String?

            public var couponNumber: String?

            public var couponTemplateId: Int64?

            public var creationTime: String?

            public var deliveryTime: String?

            public var description_: String?

            public var expiredAmount: String?

            public var expiredTime: String?

            public var frozenAmount: String?

            public var modificationTime: String?

            public var priceLimit: String?

            public var productCodes: DescribeCouponListResponseBody.Coupons.Coupon.ProductCodes?

            public var status: String?

            public var totalAmount: String?

            public var tradeTypes: DescribeCouponListResponseBody.Coupons.Coupon.TradeTypes?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.productCodes?.validate()
                try self.tradeTypes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.application != nil {
                    map["Application"] = self.application!
                }
                if self.balanceAmount != nil {
                    map["BalanceAmount"] = self.balanceAmount!
                }
                if self.couponNumber != nil {
                    map["CouponNumber"] = self.couponNumber!
                }
                if self.couponTemplateId != nil {
                    map["CouponTemplateId"] = self.couponTemplateId!
                }
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.deliveryTime != nil {
                    map["DeliveryTime"] = self.deliveryTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.expiredAmount != nil {
                    map["ExpiredAmount"] = self.expiredAmount!
                }
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.frozenAmount != nil {
                    map["FrozenAmount"] = self.frozenAmount!
                }
                if self.modificationTime != nil {
                    map["ModificationTime"] = self.modificationTime!
                }
                if self.priceLimit != nil {
                    map["PriceLimit"] = self.priceLimit!
                }
                if self.productCodes != nil {
                    map["ProductCodes"] = self.productCodes?.toMap()
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.totalAmount != nil {
                    map["TotalAmount"] = self.totalAmount!
                }
                if self.tradeTypes != nil {
                    map["TradeTypes"] = self.tradeTypes?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Application") {
                    self.application = dict["Application"] as! String
                }
                if dict.keys.contains("BalanceAmount") {
                    self.balanceAmount = dict["BalanceAmount"] as! String
                }
                if dict.keys.contains("CouponNumber") {
                    self.couponNumber = dict["CouponNumber"] as! String
                }
                if dict.keys.contains("CouponTemplateId") {
                    self.couponTemplateId = dict["CouponTemplateId"] as! Int64
                }
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("DeliveryTime") {
                    self.deliveryTime = dict["DeliveryTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ExpiredAmount") {
                    self.expiredAmount = dict["ExpiredAmount"] as! String
                }
                if dict.keys.contains("ExpiredTime") {
                    self.expiredTime = dict["ExpiredTime"] as! String
                }
                if dict.keys.contains("FrozenAmount") {
                    self.frozenAmount = dict["FrozenAmount"] as! String
                }
                if dict.keys.contains("ModificationTime") {
                    self.modificationTime = dict["ModificationTime"] as! String
                }
                if dict.keys.contains("PriceLimit") {
                    self.priceLimit = dict["PriceLimit"] as! String
                }
                if dict.keys.contains("ProductCodes") {
                    var model = DescribeCouponListResponseBody.Coupons.Coupon.ProductCodes()
                    model.fromMap(dict["ProductCodes"] as! [String: Any])
                    self.productCodes = model
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TotalAmount") {
                    self.totalAmount = dict["TotalAmount"] as! String
                }
                if dict.keys.contains("TradeTypes") {
                    var model = DescribeCouponListResponseBody.Coupons.Coupon.TradeTypes()
                    model.fromMap(dict["TradeTypes"] as! [String: Any])
                    self.tradeTypes = model
                }
            }
        }
        public var coupon: [DescribeCouponListResponseBody.Coupons.Coupon]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.coupon != nil {
                var tmp : [Any] = []
                for k in self.coupon! {
                    tmp.append(k.toMap())
                }
                map["Coupon"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Coupon") {
                var tmp : [DescribeCouponListResponseBody.Coupons.Coupon] = []
                for v in dict["Coupon"] as! [Any] {
                    var model = DescribeCouponListResponseBody.Coupons.Coupon()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.coupon = tmp
            }
        }
    }
    public var coupons: DescribeCouponListResponseBody.Coupons?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.coupons?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.coupons != nil {
            map["Coupons"] = self.coupons?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Coupons") {
            var model = DescribeCouponListResponseBody.Coupons()
            model.fromMap(dict["Coupons"] as! [String: Any])
            self.coupons = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCouponListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCouponListResponseBody?

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
            var model = DescribeCouponListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenCallbackRequest : Tea.TeaModel {
    public var paramStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.paramStr != nil {
            map["paramStr"] = self.paramStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("paramStr") {
            self.paramStr = dict["paramStr"] as! String
        }
    }
}

public class OpenCallbackResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
            self.data = dict["Data"] as! String
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

public class OpenCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenCallbackResponseBody?

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
            var model = OpenCallbackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryForCssOrderRequest : Tea.TeaModel {
    public var paramStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.paramStr != nil {
            map["paramStr"] = self.paramStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("paramStr") {
            self.paramStr = dict["paramStr"] as! String
        }
    }
}

public class QueryForCssOrderResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
            self.data = dict["Data"] as! String
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

public class QueryForCssOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryForCssOrderResponseBody?

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
            var model = QueryForCssOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VnoBatchRefundOrderRequest : Tea.TeaModel {
    public var paramStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.paramStr != nil {
            map["paramStr"] = self.paramStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("paramStr") {
            self.paramStr = dict["paramStr"] as! String
        }
    }
}

public class VnoBatchRefundOrderResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
            self.data = dict["Data"] as! String
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

public class VnoBatchRefundOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VnoBatchRefundOrderResponseBody?

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
            var model = VnoBatchRefundOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
