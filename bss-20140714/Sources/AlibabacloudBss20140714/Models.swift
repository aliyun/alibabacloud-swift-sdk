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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["paramStr"] as? String {
            self.paramStr = value
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateOrderResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AmountOwed"] as? String {
            self.amountOwed = value
        }
        if let value = dict["AvailableCredit"] as? String {
            self.availableCredit = value
        }
        if let value = dict["BalanceAmount"] as? String {
            self.balanceAmount = value
        }
        if let value = dict["CreditCardAmount"] as? String {
            self.creditCardAmount = value
        }
        if let value = dict["CreditLimit"] as? String {
            self.creditLimit = value
        }
        if let value = dict["EnableThresholdAlert"] as? String {
            self.enableThresholdAlert = value
        }
        if let value = dict["FrozenAmount"] as? String {
            self.frozenAmount = value
        }
        if let value = dict["MiniAlertThreshold"] as? Int64 {
            self.miniAlertThreshold = value
        }
        if let value = dict["RemmitanceAmount"] as? String {
            self.remmitanceAmount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCashDetailResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndDeliveryTime"] as? String {
            self.endDeliveryTime = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartDeliveryTime"] as? String {
            self.startDeliveryTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ProductCode"] as? [String] {
                        self.productCode = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["TradeType"] as? [String] {
                        self.tradeType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Application"] as? String {
                    self.application = value
                }
                if let value = dict["BalanceAmount"] as? String {
                    self.balanceAmount = value
                }
                if let value = dict["CouponNumber"] as? String {
                    self.couponNumber = value
                }
                if let value = dict["CouponTemplateId"] as? Int64 {
                    self.couponTemplateId = value
                }
                if let value = dict["CreationTime"] as? String {
                    self.creationTime = value
                }
                if let value = dict["DeliveryTime"] as? String {
                    self.deliveryTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ExpiredAmount"] as? String {
                    self.expiredAmount = value
                }
                if let value = dict["ExpiredTime"] as? String {
                    self.expiredTime = value
                }
                if let value = dict["FrozenAmount"] as? String {
                    self.frozenAmount = value
                }
                if let value = dict["ModificationTime"] as? String {
                    self.modificationTime = value
                }
                if let value = dict["PriceLimit"] as? String {
                    self.priceLimit = value
                }
                if let value = dict["ProductCodes"] as? [String: Any?] {
                    var model = DescribeCouponListResponseBody.Coupons.Coupon.ProductCodes()
                    model.fromMap(value)
                    self.productCodes = model
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TotalAmount"] as? String {
                    self.totalAmount = value
                }
                if let value = dict["TradeTypes"] as? [String: Any?] {
                    var model = DescribeCouponListResponseBody.Coupons.Coupon.TradeTypes()
                    model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Coupon"] as? [Any?] {
                var tmp : [DescribeCouponListResponseBody.Coupons.Coupon] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCouponListResponseBody.Coupons.Coupon()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Coupons"] as? [String: Any?] {
            var model = DescribeCouponListResponseBody.Coupons()
            model.fromMap(value)
            self.coupons = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCouponListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["paramStr"] as? String {
            self.paramStr = value
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = OpenCallbackResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["paramStr"] as? String {
            self.paramStr = value
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryForCssOrderResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["paramStr"] as? String {
            self.paramStr = value
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = VnoBatchRefundOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
